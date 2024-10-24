//package com.example.backend.controller;
//
//import com.example.backend.common.BaseResponse;
//import com.example.backend.common.ErrorCode;
//import com.example.backend.exception.BusinessException;
//import lombok.extern.slf4j.Slf4j;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RestController;
//import org.eclipse.jdt.core.dom.*;
//
//import java.util.*;
//import java.util.concurrent.*;
//import javax.servlet.http.HttpServletRequest;
//
//@RestController
//@RequestMapping("/duplicate")
//@Slf4j
//@Controller
//public class CodeDuplicateCheckerController {
//    private static final int THREAD_COUNT = 8; // 根据你的 CPU 核心数调整线程数
//
//    @PostMapping("/code/check")
//    private BaseResponse<Boolean> codeDuplicateCheck(HttpServletRequest httpServletRequest) {
//        if (httpServletRequest == null) {
//            throw new BusinessException(ErrorCode.PARAMS_ERROR,"信息不能为空");
//        }
//
//        List<String> codeSnippets = loadCodeSnippets(); // 加载你的代码片段
//
//        ExecutorService executor = Executors.newFixedThreadPool(THREAD_COUNT);
//        List<Future<String>> futures = new ArrayList<>();
//
//        // 提交任务以进行并行处理
//        for (String code : codeSnippets) {
//            futures.add(executor.submit(() -> generateAstHash(code)));
//        }
//
//        Set<String> uniqueHashes = Collections.synchronizedSet(new HashSet<>());
//        List<String> duplicateHashes = Collections.synchronizedList(new ArrayList<>());
//
//        // 收集任务结果
//        for (Future<String> future : futures) {
//            try {
//                String hash = future.get();
//                if (!uniqueHashes.add(hash)) {
//                    duplicateHashes.add(hash);
//                }
//            } catch (ExecutionException | InterruptedException e) {
//                e.printStackTrace();
//            }
//        }
//
//        executor.shutdown(); // 关闭线程池
//
//        // 输出结果
//        System.out.println("Found " + duplicateHashes.size() + " duplicate code snippets.");
//    }
//    public static String generateAstHash(String sourceCode) {
//        ASTParser parser = ASTParser.newParser(AST.JLS_LATEST);
//        parser.setSource(sourceCode.toCharArray());
//        parser.setKind(ASTParser.K_COMPILATION_UNIT);
//
//        CompilationUnit cu = (CompilationUnit) parser.createAST(null);
//        CodeHashVisitor visitor = new CodeHashVisitor();
//        cu.accept(visitor);
//
//        return visitor.getHash();
//    }
//
//    public static List<String> loadCodeSnippets() {
//        // 加载并返回你的代码片段
//        return Arrays.asList(
//                "public class Example { public void method() { int x = 0; } }",
//                "public class Example { public void method() { int y = 0; } }"
//                // 在此添加更多代码片段
//        );
//    }
//}
//
//class CodeHashVisitor extends ASTVisitor {
//    private final StringBuilder sb = new StringBuilder();
//
//    @Override
//    public boolean visit(MethodDeclaration node) {
//        sb.append("MethodDeclaration;");
//        return super.visit(node);
//    }
//
//    @Override
//    public boolean visit(VariableDeclarationFragment node) {
//        sb.append("VariableDeclaration;");
//        return super.visit(node);
//    }
//
//    @Override
//    public boolean visit(TypeDeclaration node) {
//        sb.append("TypeDeclaration;");
//        return super.visit(node);
//    }
//
//    public String getHash() {
//        return sb.toString();
//    }
//}
