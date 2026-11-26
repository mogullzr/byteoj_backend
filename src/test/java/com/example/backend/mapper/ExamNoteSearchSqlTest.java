package com.example.backend.mapper;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.scripting.xmltags.XMLLanguageDriver;
import org.apache.ibatis.session.Configuration;
import org.junit.jupiter.api.Test;

import java.util.List;
import java.util.Map;

import static org.junit.jupiter.api.Assertions.*;

class ExamNoteSearchSqlTest {
    @Test
    void bindsLiteralKeywordsAndScopesBothNotesAndAttemptsToTheOwner() throws Exception {
        var driver = new XMLLanguageDriver();
        for (var name : List.of("countSearchMatches", "searchMatches")) {
            var method = java.util.Arrays.stream(ProblemExamAnnotationMapper.class.getMethods())
                    .filter(item -> item.getName().equals(name)).findFirst().orElseThrow();
            String script = String.join(" ", method.getAnnotation(Select.class).value());
            var source = driver.createSqlSource(new Configuration(), script, Map.class);
            var bound = source.getBoundSql(Map.of("uuid", 9L, "terms", List.of("寄存器", "%_' OR 1=1"),
                    "firstTerm", "寄存器", "pageSize", 10, "offset", 0));
            String sql = bound.getSql().replaceAll("\\s+", " ");
            assertTrue(sql.contains("n.uuid = ? AND u.uuid = ?"));
            assertTrue(sql.contains("n.is_delete = 0 AND u.is_delete = 0 AND e.is_delete = 0"));
            assertTrue(sql.contains("u.status = 1"));
            assertTrue(sql.contains("p.is_delete = 0"));
            assertEquals(2, sql.split("AND LOCATE", -1).length - 1);
            assertFalse(sql.contains("%_' OR 1=1"));
            assertFalse(script.contains("${"));
            if (name.equals("searchMatches")) {
                assertTrue(sql.contains("numbered.id <= t.id"));
                assertTrue(sql.contains("180) AS snippet"));
                assertTrue(sql.contains("LIMIT ? OFFSET ?"));
                assertTrue(sql.contains("ORDER BY n.update_date DESC, n.id DESC"));
            }
        }
    }
}
