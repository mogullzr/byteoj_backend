//package com.example.backend.utils;
//import java.io.BufferedReader;
//import java.io.InputStreamReader;
//import java.io.IOException;
//
//public class CodeSimilarityTool {
//
//    public static String parseCppWithClang(String cppCode) throws IOException {
//        // 临时将 C++ 代码写入文件
//        String fileName = "temp.cpp";
//        java.nio.file.Files.write(java.nio.file.Paths.get(fileName), cppCode.getBytes());
//
//        // 调用 Clang 工具来解析 C++ 代码，生成 AST
//        String clangCommand = "clang++ -Xclang -ast-dump -fsyntax-only " + fileName;
//        Process process = Runtime.getRuntime().exec(clangCommand);
//
//        BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
//        StringBuilder output = new StringBuilder();
//        String line;
//
//        while ((line = reader.readLine()) != null) {
//            output.append(line).append("\n");
//        }
//
//        return output.toString(); // 返回 AST 输出
//    }
//
//    public static double calculateSimilarity(String ast1, String ast2) {
//        // 这里可以通过对比 AST 输出内容，计算代码相似度
//        // 这里只是一个简单的例子，可以根据需求更复杂地分析 AST 内容
//        if (ast1.equals(ast2)) {
//            return 1.0; // 完全相同
//        }
//        return 0.0; // 完全不同
//    }
//
//    public static void main(String[] args) throws IOException {
//        String cppCode1 = "#include <iostream>\nint main() {std::cout << \"Hello\" << std::endl; return 0;}";
//        String cppCode2 = "#include <iostream>\nint main() {std::cout << \"Hello\" << std::endl; return 0;}";
//
//        String ast1 = parseCppWithClang(cppCode1);
//        String ast2 = parseCppWithClang(cppCode2);
//
//        double similarity = calculateSimilarity(ast1, ast2);
//        System.out.println("代码相似度: " + similarity);
//    }
//}
