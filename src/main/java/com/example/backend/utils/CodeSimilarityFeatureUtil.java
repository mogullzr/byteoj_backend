package com.example.backend.utils;

import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTParser;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.SimpleName;

import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 代码查重的结构化特征计算。Embedding 只作为语义辅助，AST 和 Token 特征负责确认实现是否真的相似。
 */
public final class CodeSimilarityFeatureUtil {
    private static final Pattern TOKEN_PATTERN = Pattern.compile(
            "[A-Za-z_$][A-Za-z0-9_$]*|\\d+(?:\\.\\d+)?|==|!=|<=|>=|&&|\\|\\||\\+\\+|--|->|::|\\S");
    private static final Set<String> JAVA_KEYWORDS = Set.of(
            "abstract", "assert", "boolean", "break", "byte", "case", "catch", "char", "class", "const",
            "continue", "default", "do", "double", "else", "enum", "extends", "final", "finally", "float",
            "for", "if", "implements", "import", "instanceof", "int", "interface", "long", "native", "new",
            "package", "private", "protected", "public", "return", "short", "static", "strictfp", "super",
            "switch", "synchronized", "this", "throw", "throws", "transient", "try", "void", "volatile", "while");

    private CodeSimilarityFeatureUtil() {
    }

    public static Features compare(String source1, String source2) {
        String normalized1 = normalize(source1);
        String normalized2 = normalize(source2);
        List<String> tokens1 = tokenize(normalized1);
        List<String> tokens2 = tokenize(normalized2);
        MatchScores tokenScores = fingerprintScores(tokens1, tokens2, 5);
        MatchScores astScores = astScores(normalized1, normalized2);
        return new Features(astScores.similarity, tokenScores.similarity,
                astScores.containment, tokenScores.containment, normalized1, normalized2);
    }

    /** 删除公共模板，保留能表达实现差异的代码。 */
    public static String normalize(String source) {
        if (source == null) return "";
        String code = source.replace("\r", "");
        code = code.replaceAll("(?s)/\\*.*?\\*/", " ")
                .replaceAll("(?m)//.*$", " ")
                .replaceAll("(?m)^\\s*#.*$", " ")
                .replaceAll("(?m)^\\s*(package|import)\\s+[^;]+;", " ")
                .replaceAll("(?m)^\\s*using\\s+namespace\\s+[^;]+;", " ")
                .replaceAll("\"(?:\\\\.|[^\"])*\"", " STR ")
                .replaceAll("'(?:\\\\.|[^'])*'", " CHR ")
                .replaceAll("\\b\\d+(?:\\.\\d+)?\\b", " NUM ");
        Map<String, String> names = new LinkedHashMap<>();
        Matcher matcher = TOKEN_PATTERN.matcher(code);
        StringBuffer result = new StringBuffer();
        while (matcher.find()) {
            String token = matcher.group();
            String replacement = token;
            if (isIdentifier(token) && !JAVA_KEYWORDS.contains(token)) {
                replacement = names.computeIfAbsent(token, ignored -> "ID_" + names.size());
            }
            matcher.appendReplacement(result, Matcher.quoteReplacement(replacement));
        }
        matcher.appendTail(result);
        return result.toString().replaceAll("\\s+", " ").trim();
    }

    private static boolean isIdentifier(String token) {
        return token.matches("[A-Za-z_$][A-Za-z0-9_$]*");
    }

    private static List<String> tokenize(String source) {
        List<String> tokens = new ArrayList<>();
        Matcher matcher = TOKEN_PATTERN.matcher(source);
        while (matcher.find()) tokens.add(matcher.group());
        return tokens;
    }

    /** Winnowing 指纹的 Jaccard 相似度，避免公共短片段主导结果。 */
    private static double winnowingJaccard(List<String> left, List<String> right, int window) {
        return fingerprintScores(left, right, window).similarity;
    }

    private static MatchScores fingerprintScores(List<String> left, List<String> right, int window) {
        if (left.isEmpty() || right.isEmpty()) return MatchScores.ZERO;
        Set<Integer> first = fingerprints(left, window);
        Set<Integer> second = fingerprints(right, window);
        Set<Integer> intersection = new HashSet<>(first);
        intersection.retainAll(second);
        Set<Integer> union = new HashSet<>(first);
        union.addAll(second);
        double similarity = union.isEmpty() ? 0D : (double) intersection.size() / union.size();
        int shorterSize = Math.min(first.size(), second.size());
        double containment = shorterSize == 0 ? 0D : (double) intersection.size() / shorterSize;
        return new MatchScores(similarity, containment);
    }

    private static Set<Integer> fingerprints(List<String> tokens, int window) {
        Set<Integer> fingerprints = new HashSet<>();
        if (tokens.size() <= window) {
            fingerprints.add(tokens.hashCode());
            return fingerprints;
        }
        for (int i = 0; i <= tokens.size() - window; i++) {
            fingerprints.add(tokens.subList(i, i + window).toString().hashCode());
        }
        return fingerprints;
    }

    /** Java 使用 JDT AST 节点序列；其他语言使用规范化 Token 结构作为降级特征。 */
    private static MatchScores astScores(String left, String right) {
        List<String> first = parseJavaNodes(left);
        List<String> second = parseJavaNodes(right);
        if (first.isEmpty() || second.isEmpty()) {
            return structuralTokenScores(tokenize(left), tokenize(right));
        }
        return fingerprintScores(first, second, 3);
    }

    private static List<String> parseJavaNodes(String source) {
        if (!looksLikeJava(source)) return Collections.emptyList();
        try {
            ASTParser parser = ASTParser.newParser(AST.JLS17);
            parser.setSource(source.toCharArray());
            parser.setKind(ASTParser.K_COMPILATION_UNIT);
            parser.setResolveBindings(false);
            List<String> nodes = new ArrayList<>();
            parser.createAST(null).accept(new ASTVisitor() {
                @Override
                public void preVisit(org.eclipse.jdt.core.dom.ASTNode node) {
                    String name = node.getClass().getSimpleName();
                    if (!(node instanceof SimpleName)) nodes.add(name);
                }
            });
            return nodes;
        } catch (RuntimeException ignored) {
            return Collections.emptyList();
        }
    }

    private static boolean looksLikeJava(String source) {
        return source.contains("class ") || source.contains("public static void main")
                || source.contains("System.out") || source.contains("import java.");
    }

    private static MatchScores structuralTokenScores(List<String> left, List<String> right) {
        if (left.isEmpty() || right.isEmpty()) return MatchScores.ZERO;
        List<String> firstStructure = structuralTokens(left);
        List<String> secondStructure = structuralTokens(right);
        // 对非 Java 代码使用有顺序的结构指纹，避免仅因都包含 for/if/大括号而被判高相似。
        return fingerprintScores(firstStructure, secondStructure, 4);
    }

    private static List<String> structuralTokens(List<String> tokens) {
        List<String> result = new ArrayList<>();
        for (String token : tokens) {
            if (token.matches("ID_\\d+")) result.add("ID");
            else if (token.equals("NUM") || token.equals("STR") || token.equals("CHR")) result.add("LITERAL");
            else result.add(token);
        }
        return result;
    }

    public static final class Features {
        private final double astScore;
        private final double tokenScore;
        private final double astContainmentScore;
        private final double tokenContainmentScore;
        private final String normalizedCode1;
        private final String normalizedCode2;

        public Features(double astScore, double tokenScore, double astContainmentScore,
                        double tokenContainmentScore, String normalizedCode1, String normalizedCode2) {
            this.astScore = clamp(astScore);
            this.tokenScore = clamp(tokenScore);
            this.astContainmentScore = clamp(astContainmentScore);
            this.tokenContainmentScore = clamp(tokenContainmentScore);
            this.normalizedCode1 = normalizedCode1;
            this.normalizedCode2 = normalizedCode2;
        }

        public double getAstScore() { return astScore; }
        public double getTokenScore() { return tokenScore; }
        public double getAstContainmentScore() { return astContainmentScore; }
        public double getTokenContainmentScore() { return tokenContainmentScore; }
        public String getNormalizedCode1() { return normalizedCode1; }
        public String getNormalizedCode2() { return normalizedCode2; }

        public double finalScore(double embeddingScore) {
            double embedding = clamp(embeddingScore);
            double globalScore = astScore * 0.50D + tokenScore * 0.35D + embedding * 0.15D;
            double cloneCoverage = astContainmentScore * 0.55D + tokenContainmentScore * 0.45D;
            double containmentScore = cloneCoverage * 0.85D + embedding * 0.15D;
            return clamp(Math.max(globalScore, containmentScore));
        }
    }

    private static final class MatchScores {
        private static final MatchScores ZERO = new MatchScores(0D, 0D);
        private final double similarity;
        private final double containment;

        private MatchScores(double similarity, double containment) {
            this.similarity = similarity;
            this.containment = containment;
        }
    }

    private static double clamp(double value) {
        return Math.max(0D, Math.min(1D, value));
    }
}
