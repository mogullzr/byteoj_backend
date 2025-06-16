//package com.example;
//
//import de.jplag.*;
//import de.jplag.exceptions.ExitException;
//import de.jplag.java.JavaLanguage;
//import de.jplag.options.JPlagOptions;
//import de.jplag.reporting.reportobject.ReportObjectFactory;
//import org.junit.Test;
//import org.springframework.boot.test.context.SpringBootTest;
//
//import java.io.File;
//import java.io.FileNotFoundException;
//import java.util.Set;
//@SpringBootTest
//public class CodeTest {
//    @Test
//    public void test() {
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
//    }
//}
