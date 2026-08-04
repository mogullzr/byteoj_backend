package com.example;

//import de.jplag.*;
//import de.jplag.exceptions.ExitException;
//import de.jplag.java.JavaLanguage;
//import de.jplag.options.JPlagOptions;
//import de.jplag.reporting.reportobject.ReportObjectFactory;
import org.junit.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.util.DigestUtils;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Set;
@SpringBootTest
public class CodeTest {
    @Test
    public void test() {
        String SALT = "Mogullzr,搞我网站的我是你爹";  // ← 一定要换成你代码里真实的 SALT 常量
        String token = "123";  // ← 你想让用户输入用来验证的 token

        String md5 = DigestUtils.md5DigestAsHex((SALT + token).getBytes());
        System.out.println(md5);  // 这就是你要存到 Redis 的 value
//        Language language = new JavaLanguage();
//        Set<File> submissionDirectories = Set.of(new File("F:\\Project\\Backend\\backend\\src\\main\\java\\files"));
//        File baseCode = new File("F:\\Project\\Backend\\backend\\src\\main\\java\\files\\test1.cpp");
//        JPlagOptions options = new JPlagOptions(language, submissionDirectories, Set.of()).withBaseCodeSubmissionDirectory(baseCode);
//
//        try {
//            JPlagResult result = JPlag.run(options);
//
//            // Optional
//            ReportObjectFactory reportObjectFactory = new ReportObjectFactory(new File("F:\\Project\\Backend\\backend\\src\\main\\java\\"));
//            reportObjectFactory.createAndSaveReport(result);
//        } catch (ExitException e) {
//            // error handling here
//        } catch (FileNotFoundException e) {
//            // handle IO exception here
//        }
    }
}
