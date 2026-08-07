package com.example.backend.service.Impl.math408;

import com.example.backend.mapper.ProblemMath408BankMapper;
import com.example.backend.mapper.ProblemMath408TagsMapper;
import com.example.backend.models.domain.math408.ProblemMath408Bank;
import com.example.backend.models.vo.problem.ProblemMath408BankVo;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.test.util.ReflectionTestUtils;

import java.util.Collections;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertSame;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.verifyNoInteractions;
import static org.mockito.Mockito.when;

class ProblemMath408BankServiceImplTest {

    private ProblemMath408BankServiceImpl service;
    private ProblemMath408BankMapper mapper;
    private ProblemMath408TagsMapper tagsMapper;

    @BeforeEach
    void setUp() {
        service = new ProblemMath408BankServiceImpl();
        mapper = mock(ProblemMath408BankMapper.class);
        tagsMapper = mock(ProblemMath408TagsMapper.class);
        ReflectionTestUtils.setField(service, "problemMath408BankMapper", mapper);
        ReflectionTestUtils.setField(service, "problemMath408TagsMapper", tagsMapper);
        when(tagsMapper.selectList(any())).thenReturn(Collections.emptyList());
    }

    @Test
    void detailKeepsSourceIdentityAndUsesTargetContent() {
        ProblemMath408Bank source = problem(1L, "/problems/other/15");
        source.setStatus(0);
        source.setOption_type(0);
        ProblemMath408Bank target = problem(15L, "real question");
        target.setCorrect_answer("target answer");
        target.setAnalysis("target analysis");
        target.setOption_type(3);
        when(mapper.selectOne(any())).thenReturn(source, target);

        ProblemMath408BankVo result = service.problemSearchByProblemId(1L);

        assertEquals(1L, result.getProblem_id());
        assertEquals(0, result.getStatus());
        assertEquals(3, result.getOption_type());
        assertEquals("real question", result.getDescription());
        assertEquals("target answer", result.getCorrect_answer());
        assertEquals("target analysis", result.getAnalysis());
    }

    @Test
    void resolvesDirectRedirect() {
        ProblemMath408Bank source = problem(1L, "/problems/other/15");
        ProblemMath408Bank target = problem(15L, "real question");
        when(mapper.selectOne(any())).thenReturn(target);

        assertSame(target, resolve(source));
    }

    @Test
    void resolvesMultiLevelRedirect() {
        ProblemMath408Bank source = problem(1L, "/problems/other/2");
        ProblemMath408Bank middle = problem(2L, "/problems/other/3");
        ProblemMath408Bank target = problem(3L, "real question");
        when(mapper.selectOne(any())).thenReturn(middle, target);

        assertSame(target, resolve(source));
    }

    @Test
    void fallsBackToSourceWhenTargetIsMissing() {
        ProblemMath408Bank source = problem(1L, "/problems/other/404");
        when(mapper.selectOne(any())).thenReturn(null);

        assertSame(source, resolve(source));
    }

    @Test
    void fallsBackToSourceOnCircularRedirect() {
        ProblemMath408Bank source = problem(1L, "/problems/other/2");
        ProblemMath408Bank target = problem(2L, "/problems/other/1");
        when(mapper.selectOne(any())).thenReturn(target);

        assertSame(source, resolve(source));
    }

    @Test
    void doesNotRedirectOrdinaryContentContainingAQuestionLink() {
        ProblemMath408Bank source = problem(1L, "See /problems/other/15 for comparison");

        assertSame(source, resolve(source));
        verifyNoInteractions(mapper);
    }

    private ProblemMath408Bank resolve(ProblemMath408Bank source) {
        return ReflectionTestUtils.invokeMethod(service, "resolveEffectiveMathProblem", source);
    }

    private ProblemMath408Bank problem(Long id, String description) {
        ProblemMath408Bank problem = new ProblemMath408Bank();
        problem.setProblem_id(id);
        problem.setDescription(description);
        problem.setIs_delete(0);
        return problem;
    }
}
