#!/usr/bin/env python3
"""Extract question/answer/analysis blocks from the 66000 PDF into MySQL SQL.

The extractor does not use OCR or AI. It reads PDFKit's embedded text layer,
then applies explicit marker rules. The PDF's private-use math glyphs and visual
formula layout cannot be reconstructed reliably by this script; every such row
is listed in the review CSV with its source page.

Usage (macOS):
  python3 extract_66000_to_sql.py input.pdf --sql output.sql
  python3 extract_66000_to_sql.py --pages-jsonl pages.jsonl --sql output.sql
"""

from __future__ import annotations

import argparse
import bisect
import csv
import json
import re
import subprocess
import sys
import tempfile
from collections import Counter
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable, Optional


MARKER_RE = re.compile(r"【([^】]{1,100})】", re.DOTALL)
ANSWER_TAGS = ("简版答案", "答案")
ANALYSIS_TAGS = ("解析",)
OPTION_TAGS = ("选项",)
QUESTION_START_RE = re.compile(r"(?<!\d)(\d{1,5})\s*[.．、]\s*$")
NUMBERED_AUTHOR_QUESTION_RE = re.compile(r"(?<!\d)(\d{1,5})\s*[.．、]\s*【\s*冯建轩\s*】")
SOLVED_QUESTION_RE = re.compile(r"冯建轩\s*题目\s*(\d{1,5})\s*[:：]")
NUMERIC_QUESTION_TAG_RE = re.compile(r"(?m)(?:^|\n)\s*【\s*(\d{1,5})\s*】")
EXPLICIT_NUMBERED_QUESTION_TAG_RE = re.compile(r"题目\s*(\d{1,5})")
PAGE_FOOTER_RE = re.compile(r"\d{2,6}\s*版权所有[^\n]*(?:\n|$)")
QUESTION_FOOTER_RE = re.compile(r"\s*\d{2,6}\s*版权所有[^\n]*$")
OPTIONS_RE = re.compile(r"(?m)(?:^|\n)\s*\(?([A-D])\)\s*")
BLANK_RE = re.compile(r"(?:_{3,}|（\s*）|\(\s*\)|□{2,}|\[\s*\])")
PRIVATE_USE_RE = re.compile(r"[\ue000-\uf8ff\U000f0000-\U000ffffd\U00100000-\U0010fffd]")


@dataclass
class Page:
    number: int
    text: str
    source: str


@dataclass
class Event:
    start: int
    content_start: int
    kind: str
    page: int
    source: str
    number: Optional[str] = None
    marker: str = ""


@dataclass
class Question:
    number: Optional[str]
    page: int
    source: str
    description: str = ""
    answer: Optional[str] = None
    analysis: Optional[str] = None
    explicit_options: Optional[str] = None


def clean_source_header(text: str) -> Optional[str]:
    """Return a concise source title when a repeated PDF page header is found."""
    first = next((line.strip() for line in text.splitlines() if line.strip()), "")
    if not first:
        return None
    match = re.search(r"(?:冯建轩\s*)?《[^》]{1,100}》[^\n]{0,100}", first)
    if not match:
        return None
    title = match.group(0)
    title = re.split(r"若有误|若有遗漏|若有错误|版权所有|仅供学习", title)[0]
    title = re.sub(r"\s+", " ", title).strip(" ，,。；; ")
    return title[:256] or None


def clean_page_text(text: str) -> str:
    """Drop repeated copyright footers and identifiable source headers."""
    text = PAGE_FOOTER_RE.sub("\n", text)
    lines = text.splitlines()
    while lines and not lines[0].strip():
        lines.pop(0)
    if lines and clean_source_header("\n".join(lines[:1])):
        lines.pop(0)
    # Some pages place the publisher line at the end without a preceding newline.
    if lines:
        lines[-1] = QUESTION_FOOTER_RE.sub("", lines[-1])
    return "\n".join(lines)


def read_pages(path: Path) -> list[Page]:
    pages: list[Page] = []
    current_source = ""
    with path.open("r", encoding="utf-8") as stream:
        for line_no, line in enumerate(stream, 1):
            if not line.strip():
                continue
            try:
                record = json.loads(line)
            except json.JSONDecodeError as exc:
                raise ValueError(f"invalid JSONL at line {line_no}: {exc}") from exc
            number = int(record.get("page", len(pages) + 1))
            raw = str(record.get("text", ""))
            header = clean_source_header(raw)
            if header:
                current_source = header
            pages.append(Page(number, clean_page_text(raw), current_source))
    return pages


def normalize_tag(tag: str) -> str:
    return re.sub(r"\s+", "", tag)


def flatten_pages(pages: list[Page]) -> tuple[str, list[int], list[Page]]:
    starts: list[int] = []
    chunks: list[str] = []
    cursor = 0
    for page in pages:
        starts.append(cursor)
        chunks.append(page.text)
        cursor += len(page.text) + 1
    return "\n".join(chunks), starts, pages


def page_index_at(offset: int, starts: list[int]) -> int:
    return max(0, bisect.bisect_right(starts, offset) - 1)


def classify_tag(tag: str) -> Optional[str]:
    normalized = normalize_tag(tag)
    if "答案" in normalized or normalized == "简版极案":
        return "answer"
    if "解析" in normalized:
        return "analysis"
    if "题干" in normalized or normalized == "极干":
        return "question"
    if any(token in normalized for token in OPTION_TAGS):
        return "options"
    return None


def extract_events(text: str, starts: list[int], pages: list[Page]) -> list[Event]:
    events: list[Event] = []
    occupied_question_starts: set[int] = set()

    def add_event(start: int, content_start: int, kind: str, number: Optional[str], marker: str) -> None:
        pidx = page_index_at(start, starts)
        page = pages[pidx]
        events.append(Event(start, content_start, kind, page.number, page.source, number, marker))

    def numbered_prefix_start(marker_start: int) -> int:
        """Include `12.` in the event boundary so it cannot leak into the
        preceding answer/analysis block."""
        prefix = text[max(0, marker_start - 32):marker_start]
        match = re.search(r"(?<!\d)(\d{1,5})\s*[.．、]\s*$", prefix)
        return marker_start - len(prefix) + match.start() if match else marker_start

    for match in MARKER_RE.finditer(text):
        kind = classify_tag(match.group(1))
        if not kind:
            continue
        number = None
        if kind == "question":
            prefix = text[max(0, match.start() - 32):match.start()]
            numbered = QUESTION_START_RE.search(prefix)
            explicit = EXPLICIT_NUMBERED_QUESTION_TAG_RE.search(normalize_tag(match.group(1)))
            number = numbered.group(1) if numbered else (explicit.group(1) if explicit else None)
        event_start = numbered_prefix_start(match.start()) if kind == "question" else match.start()
        add_event(event_start, match.end(), kind, number, match.group(1))
        if kind == "question":
            occupied_question_starts.add(match.start())

    # The untagged question-list format uses a numbered author marker. Avoid
    # treating an identical token as a duplicate; adjacent questions may be
    # less than 80 characters apart, so proximity alone is not a safe test.
    for match in NUMBERED_AUTHOR_QUESTION_RE.finditer(text):
        if match.start() in occupied_question_starts:
            continue
        number = match.group(1)
        add_event(match.start(), match.end(), "question", number, "冯建轩")
        occupied_question_starts.add(match.start())

    # The solved-problem chapter labels question starts in prose instead of tags.
    for match in SOLVED_QUESTION_RE.finditer(text):
        if match.start() in occupied_question_starts:
            continue
        add_event(match.start(), match.end(), "question", match.group(1), "冯建轩题目")
        occupied_question_starts.add(match.start())

    # Some solved-book layouts use a numeric bracket as the question heading,
    # followed directly by 【冯建轩简版答案】 and 【冯建轩解析】. If an explicit
    # question marker follows the number before any answer, treat that marker as
    # the same question and transfer the number rather than creating a duplicate.
    # Otherwise the numeric bracket starts a question only when an answer or
    # analysis marker follows it before another question/numbered heading.
    numeric_matches = list(NUMERIC_QUESTION_TAG_RE.finditer(text))
    numeric_starts = [match.start() + match.group(0).rfind("【") for match in numeric_matches]
    events.sort(key=lambda event: event.start)
    event_starts = [event.start for event in events]
    for numeric_index, match in enumerate(numeric_matches):
        start = numeric_starts[numeric_index]
        content_start = match.end()
        next_numeric_start = numeric_starts[numeric_index + 1] if numeric_index + 1 < len(numeric_starts) else len(text)
        following_index = bisect.bisect_right(event_starts, start)
        following = events[following_index] if following_index < len(events) and events[following_index].start < next_numeric_start else None
        if following is not None and following.kind == "question":
            if following.number is None:
                following.number = match.group(1)
            continue
        if following is not None and following.kind in {"answer", "analysis"}:
            add_event(start, content_start, "question", match.group(1), "numeric-question")

    events.sort(key=lambda event: (event.start, event.content_start))
    return events


def text_between(text: str, start: int, end: int) -> str:
    value = text[start:end]
    value = re.sub(r"\n{3,}", "\n\n", value)
    return value.strip()


def parse_questions(text: str, events: list[Event]) -> list[Question]:
    questions: list[Question] = []
    current: Optional[Question] = None
    for index, event in enumerate(events):
        next_start = events[index + 1].start if index + 1 < len(events) else len(text)
        value = text_between(text, event.content_start, next_start)
        if event.kind == "question":
            if current is not None:
                questions.append(current)
            current = Question(event.number, event.page, event.source, description=value)
            continue
        if current is None:
            continue
        if event.kind == "answer" and current.answer is None:
            current.answer = value or None
        elif event.kind == "analysis" and current.analysis is None:
            current.analysis = value or None
        elif event.kind == "options" and current.explicit_options is None:
            current.explicit_options = value or None
    if current is not None:
        questions.append(current)
    return questions


def parse_options(description: str, explicit_options: Optional[str]) -> tuple[str, Optional[list[str]], int]:
    if explicit_options:
        # Explicit option sections are preserved as one option list entry unless
        # their labels are unambiguously A-D.
        description, options, option_type = split_labeled_options(description + "\n" + explicit_options)
        if options:
            return description, options, option_type
    return split_labeled_options(description)


def is_letter_answer(answer: Optional[str]) -> Optional[int]:
    if not answer:
        return None
    normalized = re.sub(r"[\s（）()【】\[\]。；;，,、和及]", "", answer).upper()
    if not re.fullmatch(r"[A-D]{1,4}", normalized):
        return None
    return 2 if len(set(normalized)) > 1 else 1


def split_labeled_options(description: str) -> tuple[str, Optional[list[str]], int]:
    matches = list(OPTIONS_RE.finditer(description))
    if len(matches) != 4 or [match.group(1) for match in matches] != list("ABCD"):
        if BLANK_RE.search(description):
            return description.strip(), None, 3
        return description.strip(), None, 0
    options: list[str] = []
    for index, match in enumerate(matches):
        end = matches[index + 1].start() if index + 1 < len(matches) else len(description)
        options.append(description[match.end():end].strip())
    question = description[:matches[0].start()].strip()
    return question, options, 1


def sql_expr(value: Optional[str]) -> str:
    if value is None or value == "":
        return "NULL"
    return "CONVERT(0x" + value.encode("utf-8").hex() + " USING utf8mb4)"


def sql_options(options: Optional[list[str]]) -> Optional[str]:
    if options is None:
        return None
    # The admin form converts single-quoted array text to JSON. JSON is accepted
    # directly too; escape literal apostrophes to keep that legacy replace safe.
    encoded = json.dumps(options, ensure_ascii=False, separators=(",", ":"))
    encoded = encoded.replace("'", "\\u0027")
    return encoded


def question_name(source: str, number: Optional[str], fallback_index: int) -> str:
    label = number or str(fallback_index)
    name = f"{source} 第{label}题" if source else f"PDF 第{label}题"
    return name[:256]


def make_rows(questions: list[Question]) -> tuple[list[dict], Counter, dict[str, dict[str, int]]]:
    rows: list[dict] = []
    stats: Counter = Counter()
    source_stats: dict[str, dict[str, int]] = {}
    for index, question in enumerate(questions, 1):
        description, options, option_type = parse_options(question.description, question.explicit_options)
        answer_type = is_letter_answer(question.answer)
        if options is None and answer_type is not None:
            option_type = answer_type
        option_json = sql_options(options)
        reasons = []
        private_count = len(PRIVATE_USE_RE.findall(question.description + (question.answer or "") + (question.analysis or "")))
        if private_count:
            reasons.append("含私用区数学符号（需检查字体映射）")
        if not question.answer:
            if question.analysis:
                reasons.append("未识别到独立简版答案标记；请核验解析中的最终答案")
            else:
                reasons.append("未识别到简版答案或解析标记")
        if answer_type is not None and options is None:
            reasons.append("答案呈选择项格式，但未能可靠拆出完整选项")
        if not question.source:
            reasons.append("未识别到来源标题")
        too_long = (
            len(description.encode("utf-8")) > 65535
            or (question.answer is not None and len(question.answer.encode("utf-8")) > 65535)
            or (question.analysis is not None and len(question.analysis.encode("utf-8")) > 65535)
        )
        if too_long:
            reasons.append("题干/答案/解析超过 MySQL TEXT 容量，SQL 将跳过此行")
        name = question_name(question.source, question.number, index)
        row = {
            "name": name,
            "source": question.source or None,
            "description": description,
            "options": option_json,
            "answer": question.answer,
            "analysis": question.analysis,
            "option_type": option_type,
            "page": question.page,
            "question_number": question.number or "",
            "private_use_count": private_count,
            "review_reasons": "；".join(reasons),
            "sql_safe": not too_long,
        }
        rows.append(row)
        source_key = question.source or "(未识别来源)"
        source_counter = source_stats.setdefault(source_key, {
            "questions": 0, "with_answer_marker": 0, "with_analysis": 0,
            "analysis_only": 0, "without_answer_or_analysis": 0,
            "review_rows": 0, "private_use_rows": 0,
        })
        source_counter["questions"] += 1
        source_counter["with_answer_marker"] += bool(question.answer)
        source_counter["with_analysis"] += bool(question.analysis)
        source_counter["analysis_only"] += bool(question.analysis and not question.answer)
        source_counter["without_answer_or_analysis"] += not question.answer and not question.analysis
        source_counter["review_rows"] += bool(reasons)
        source_counter["private_use_rows"] += bool(private_count)
        stats["questions"] += 1
        stats[f"option_type_{option_type}"] += 1
        if question.answer:
            stats["with_answer_marker"] += 1
        else:
            stats["missing_answer_marker"] += 1
        if question.analysis:
            stats["with_analysis"] += 1
            if not question.answer:
                stats["analysis_only"] += 1
        elif not question.answer:
            stats["without_answer_or_analysis"] += 1
        if private_count:
            stats["private_use_rows"] += 1
        if reasons:
            stats["review_rows"] += 1
    return rows, stats, source_stats


def render_insert(row_batch: list[dict]) -> str:
    columns = (
        "problem_name,difficulty_name,source_name,description,options,correct_answer,analysis,"
        "create_by_id,create_by_name,create_time,update_by_id,update_by_name,update_time,"
        "status,option_type,is_delete"
    )
    values = []
    for row in row_batch:
        values.append("(" + ",".join([
            sql_expr(row["name"]),
            "NULL",
            sql_expr(row["source"]),
            sql_expr(row["description"]),
            sql_expr(row["options"]),
            sql_expr(row["answer"]),
            sql_expr(row["analysis"]),
            "NULL", "NULL", "CURRENT_TIMESTAMP",
            "NULL", "NULL", "CURRENT_TIMESTAMP",
            "0", str(row["option_type"]), "0",
        ]) + ")")
    return f"INSERT INTO problem_math408_bank ({columns}) VALUES\n" + ",\n".join(values) + ";\n"


def write_outputs(rows: list[dict], sql_path: Path, review_path: Path, summary_path: Path,
                  stats: Counter, source_stats: dict[str, dict[str, int]], include_review: bool) -> None:
    sql_rows = [row for row in rows if row["sql_safe"] and (include_review or not row["review_reasons"])]
    sql_path.parent.mkdir(parents=True, exist_ok=True)
    with sql_path.open("w", encoding="utf-8", newline="\n") as output:
        output.write("SET NAMES utf8mb4;\nSTART TRANSACTION;\n")
        batch: list[dict] = []
        for row in sql_rows:
            batch.append(row)
            if len(batch) == 50:
                output.write(render_insert(batch))
                batch.clear()
        if batch:
            output.write(render_insert(batch))
        output.write("COMMIT;\n")

    review_path.parent.mkdir(parents=True, exist_ok=True)
    with review_path.open("w", encoding="utf-8-sig", newline="") as output:
        writer = csv.DictWriter(output, fieldnames=[
            "page", "source", "question_number", "problem_name", "review_reasons",
            "private_use_count", "description_preview", "answer_preview", "analysis_preview",
        ])
        writer.writeheader()
        for row in rows:
            if row["review_reasons"]:
                writer.writerow({
                    "page": row["page"],
                    "source": row["source"] or "",
                    "question_number": row["question_number"],
                    "problem_name": row["name"],
                    "review_reasons": row["review_reasons"],
                    "private_use_count": row["private_use_count"],
                    "description_preview": row["description"][:300],
                    "answer_preview": (row["answer"] or "")[:200],
                    "analysis_preview": (row["analysis"] or "")[:400],
                })
    summary_path.parent.mkdir(parents=True, exist_ok=True)
    summary = dict(stats)
    summary["candidate_rows"] = len(rows)
    summary["sql_rows"] = len(sql_rows)
    summary["review_rows_excluded_from_sql"] = len(rows) - len(sql_rows)
    summary["include_review_rows"] = include_review
    summary["source_stats"] = source_stats
    summary["sql_file"] = str(sql_path)
    summary["review_file"] = str(review_path)
    summary["source_format"] = "problem_math408_bank"
    summary["warnings"] = [
        "PDFKit text extraction is not OCR and preserves embedded text only.",
        "Private-use math glyphs are retained as extracted and require font-aware review.",
        "PDF text order may not match the visual order of superscripts, fractions, matrices, and other formulas; text extraction cannot certify mathematical fidelity.",
        "Some questions have a solution-analysis block without a separate brief-answer block; a missing answer marker is not proof that the PDF has no solution.",
        "The SQL is generated from detected markers and is not a claim that every PDF question was recovered.",
    ]
    summary_path.write_text(json.dumps(summary, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def extract_pdf_pages(pdf_path: Path, output_path: Path) -> None:
    extractor = Path(__file__).with_name("extract_pdf_pages.m")
    with tempfile.TemporaryDirectory(prefix="66000-pdf-") as temp_dir:
        executable = Path(temp_dir) / "extract_pdf_pages"
        subprocess.run([
            "/usr/bin/clang", "-framework", "Foundation", "-framework", "PDFKit",
            str(extractor), "-o", str(executable),
        ], check=True)
        subprocess.run([str(executable), str(pdf_path), str(output_path)], check=True)


def main(argv: Optional[Iterable[str]] = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("pdf", nargs="?", type=Path, help="input PDF (macOS PDFKit text extraction)")
    parser.add_argument("--pages-jsonl", type=Path, help="use existing PDFKit JSONL page extraction")
    parser.add_argument("--sql", type=Path, required=True, help="output MySQL SQL file")
    parser.add_argument("--review", type=Path, help="output CSV review report")
    parser.add_argument("--summary", type=Path, help="output JSON counts and warnings")
    parser.add_argument("--include-review", action="store_true",
                        help="include rows flagged in the review CSV; default SQL contains only unflagged rows")
    args = parser.parse_args(argv)

    if bool(args.pdf) == bool(args.pages_jsonl):
        parser.error("provide exactly one of PDF path or --pages-jsonl")
    review_path = args.review or args.sql.with_suffix(".review.csv")
    summary_path = args.summary or args.sql.with_suffix(".summary.json")

    if args.pages_jsonl:
        page_jsonl = args.pages_jsonl
        pages = read_pages(page_jsonl)
    else:
        if sys.platform != "darwin":
            parser.error("PDFKit extraction requires macOS; use --pages-jsonl elsewhere")
        with tempfile.TemporaryDirectory(prefix="66000-pdf-pages-") as temp_dir:
            page_jsonl = Path(temp_dir) / "pages.jsonl"
            extract_pdf_pages(args.pdf, page_jsonl)
            pages = read_pages(page_jsonl)

    text, page_starts, page_records = flatten_pages(pages)
    events = extract_events(text, page_starts, page_records)
    questions = parse_questions(text, events)
    rows, stats, source_stats = make_rows(questions)
    write_outputs(rows, args.sql, review_path, summary_path, stats, source_stats, args.include_review)

    print(json.dumps({
        "pages": len(pages),
        "recognized_question_events": sum(event.kind == "question" for event in events),
        "rows": len(rows),
        "sql_rows": sum(row["sql_safe"] and (args.include_review or not row["review_reasons"]) for row in rows),
        "with_answer_marker": stats["with_answer_marker"],
        "missing_answer_marker": stats["missing_answer_marker"],
        "analysis_only": stats["analysis_only"],
        "without_answer_or_analysis": stats["without_answer_or_analysis"],
        "review_rows": stats["review_rows"],
        "sql": str(args.sql),
        "review": str(review_path),
        "summary": str(summary_path),
        "source_count": len(source_stats),
    }, ensure_ascii=False, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
