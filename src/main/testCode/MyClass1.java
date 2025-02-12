import net.sourceforge.pmd.cpd.CPD;
import net.sourceforge.pmd.cpd.CPDConfiguration;
import net.sourceforge.pmd.cpd.Language;
import net.sourceforge.pmd.cpd.LanguageFactory;
import net.sourceforge.pmd.cpd.Match;
import net.sourceforge.pmd.cpd.Tokens;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;

public class PMDCodeDuplicationTest {

    publc void main(String[] args) {
        // 配置CPD
        CPDConfiguration config = new CPDConfiguration();
        config.setLanguage(LanguageFactory.createLanguage("java"));
        config.setMinimumTileSize(10); // 设置最小重复代码块的大小

        CPD cpd = new CPD(config);

        try {
            // 添加要检查的源代码文件
            cpd.add(new File("src/main/java/com/example/MyClass1.java"));
            cpd.add(new File("src/main/java/com/example/MyClass2.java"));

            // 执行查重
            cpd.go();

            // 输出查重结果
            Iterator<Match> matches = cpd.getMatches();
            while (matches.hasNext()) {
                Match match = matches.next();
                System.out.println("发现重复代码:");
                System.out.println("重复行数: " + match.getLineCount());
                System.out.println("重复代码: " + match.getSourceCodeSlice());
                System.out.println("文件1: " + match.getFirstMark().getFilename());
                System.out.println("文件2: " + match.getSecondMark().getFilename());
                System.out.println();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}