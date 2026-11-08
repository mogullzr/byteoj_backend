# 66000 PDF one-time extractor

This utility reads the PDF's embedded text layer with macOS PDFKit. It uses no AI and does not run OCR. It writes MySQL `INSERT` statements for `problem_math408_bank`, a CSV review list with source page numbers and answer/analysis previews, and a JSON count summary grouped by source title.

Run it on macOS from the backend directory:

```sh
python3 tools/extract_66000_to_sql.py \
  "/path/to/冯建轩《考研数学66000》最后一舞（终章）.pdf" \
  --sql tools/output/66000-import-conservative.sql
```

The parser supports both inline labels such as `【冯建轩题干】` / `【冯建轩简版答案】` / `【冯建轩解析】` and numbered solved-book headings such as `【2165】` followed by an answer and analysis. The default SQL omits rows the parser can detect as uncertain, such as rows with private-use glyphs, no independently labeled short answer, an incomplete option list, or no recognized source heading. A row with an analysis but no separate short-answer label is reported separately; it is not treated as proof that the PDF has no solution.

To also generate the entire detected candidate set after reviewing the risks, add `--include-review` and choose a separate SQL path:

```sh
python3 tools/extract_66000_to_sql.py \
  "/path/to/冯建轩《考研数学66000》最后一舞（终章）.pdf" \
  --sql tools/output/66000-import-all-candidates.sql \
  --include-review
```

The script can also consume an existing PDFKit page dump:

```sh
python3 tools/extract_66000_to_sql.py \
  --pages-jsonl /path/to/pages.jsonl \
  --sql tools/output/66000-import-conservative.sql
```

## Fidelity limits

This PDF has more than one question layout. PDFKit extracts searchable text, but a text layer does not preserve the visual placement of every formula. It also emits private-use characters for some math symbols. Therefore, even the conservative output is a candidate set, not a certified exact transcription. Check the source-specific counts in the JSON summary, review CSV, and representative PDF pages before importing the data into a live database. `--include-review` deliberately includes flagged candidates and should not be imported without that review.

The extractor does not deduplicate repeated problems. Re-running an `INSERT` file will create duplicate rows unless the imported rows are cleared or otherwise handled first.
