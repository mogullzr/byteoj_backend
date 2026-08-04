//package com.example.backend;
//
//import com.example.backend.mapper.ProblemAlgorithmBankMapper;
//import com.example.backend.models.domain.algorithm.probleminfo.ProblemAlgorithmBank;
//import lombok.extern.slf4j.Slf4j;
//import org.junit.jupiter.api.Test;
//import org.springframework.boot.test.context.SpringBootTest;
//
//import javax.annotation.Resource;
//import java.util.concurrent.CountDownLatch;
//import java.util.concurrent.ExecutorService;
//import java.util.concurrent.Executors;
//import java.util.concurrent.atomic.AtomicInteger;
//
//import static org.junit.jupiter.api.Assertions.assertEquals;
//
///**
// * 并发安全性测试
// * 用于验证数据库原子操作能否解决丢失更新问题
// */
//@SpringBootTest
//@Slf4j
//public class ConcurrencyTest {
//
//    @Resource
//    private ProblemAlgorithmBankMapper problemAlgorithmBankMapper;
//
//    /**
//     * 测试场景：100个线程同时对同一道题目的 test_total 进行 +1 操作
//     * 预期结果：test_total 增加 100（无丢失更新）
//     */
//    @Test
//    public void testConcurrentIncrementTestTotal() throws InterruptedException {
//        // 1. 准备测试数据（使用真实存在的题目ID，或者先插入一条测试数据）
//        Long testProblemId = 1001L;
//
//        // 获取初始值
//        ProblemAlgorithmBank problem = problemAlgorithmBankMapper.selectById(testProblemId);
//        if (problem == null) {
//            log.error("题目不存在，请先创建 problem_id = {}", testProblemId);
//            return;
//        }
//
//        Long initialTestTotal = problem.getTest_total();
//        log.info("📊 初始 test_total: {}", initialTestTotal);
//
//        // 2. 设置并发参数
//        int threadCount = 100;  // 模拟 100 个并发请求
//        CountDownLatch startLatch = new CountDownLatch(1);  // 控制所有线程同时开始
//        CountDownLatch endLatch = new CountDownLatch(threadCount);  // 等待所有线程完成
//        AtomicInteger successCount = new AtomicInteger(0);
//        AtomicInteger failCount = new AtomicInteger(0);
//
//        // 3. 创建线程池
//        ExecutorService executor = Executors.newFixedThreadPool(100);
//
//        // 4. 提交任务
//        for (int i = 0; i < threadCount; i++) {
//            final int taskId = i;
//            executor.submit(() -> {
//                try {
//                    // 等待所有线程都准备好
//                    startLatch.await();
//
//                    // 执行原子更新
//                    int rows = problemAlgorithmBankMapper.incrementTestTotal(testProblemId, 1);
//
//                    if (rows > 0) {
//                        successCount.incrementAndGet();
//                        log.info("✅ 任务 {} 更新成功", taskId);
//                    } else {
//                        failCount.incrementAndGet();
//                        log.warn("❌ 任务 {} 更新失败", taskId);
//                    }
//
//                } catch (Exception e) {
//                    failCount.incrementAndGet();
//                    log.error("❌ 任务 {} 执行异常: {}", taskId, e.getMessage(), e);
//                } finally {
//                    endLatch.countDown();
//                }
//            });
//        }
//
//        // 5. 开始并发测试
//        log.info("🚀 开始并发测试，线程数：{}", threadCount);
//        long startTime = System.currentTimeMillis();
//        startLatch.countDown();  // 释放所有线程，开始并发执行
//
//        // 6. 等待所有线程完成
//        endLatch.await();
//        long endTime = System.currentTimeMillis();
//        executor.shutdown();
//
//        // 7. 验证结果
//        ProblemAlgorithmBank updatedProblem = problemAlgorithmBankMapper.selectById(testProblemId);
//        Long finalTestTotal = updatedProblem.getTest_total();
//        Long expectedTestTotal = initialTestTotal + threadCount;
//
//        log.info("═══════════════════════════════════════════");
//        log.info("📊 测试结果统计");
//        log.info("═══════════════════════════════════════════");
//        log.info("初始值: {}", initialTestTotal);
//        log.info("期望值: {}", expectedTestTotal);
//        log.info("实际值: {}", finalTestTotal);
//        log.info("成功次数: {}", successCount.get());
//        log.info("失败次数: {}", failCount.get());
//        log.info("总耗时: {} ms", endTime - startTime);
//        log.info("═══════════════════════════════════════════");
//
//        // 8. 断言验证
//        assertEquals(expectedTestTotal, finalTestTotal,
//            "并发更新后的 test_total 应该等于初始值 + 线程数，实际值不匹配，说明存在丢失更新！");
//
//        log.info("✅ 测试通过！无丢失更新，并发安全性验证成功！");
//    }
//
//    /**
//     * 测试场景：100个线程同时对同一道题目的 ac_total 进行 +1 操作
//     * 预期结果：ac_total 增加 100（无丢失更新）
//     */
//    @Test
//    public void testConcurrentIncrementAcTotal() throws InterruptedException {
//        // 类似上面的测试，但测试 ac_total 字段
//        Long testProblemId = 1001L;
//
//        ProblemAlgorithmBank problem = problemAlgorithmBankMapper.selectById(testProblemId);
//        if (problem == null) {
//            log.error("题目不存在，请先创建 problem_id = {}", testProblemId);
//            return;
//        }
//
//        Long initialAcTotal = problem.getAc_total();
//        log.info("📊 初始 ac_total: {}", initialAcTotal);
//
//        int threadCount = 100;
//        CountDownLatch startLatch = new CountDownLatch(1);
//        CountDownLatch endLatch = new CountDownLatch(threadCount);
//
//        ExecutorService executor = Executors.newFixedThreadPool(100);
//
//        for (int i = 0; i < threadCount; i++) {
//            executor.submit(() -> {
//                try {
//                    startLatch.await();
//                    problemAlgorithmBankMapper.incrementAcTotal(testProblemId, 1);
//                } catch (Exception e) {
//                    log.error("更新失败: {}", e.getMessage(), e);
//                } finally {
//                    endLatch.countDown();
//                }
//            });
//        }
//
//        log.info("🚀 开始测试 ac_total 并发更新");
//        startLatch.countDown();
//        endLatch.await();
//        executor.shutdown();
//
//        ProblemAlgorithmBank updatedProblem = problemAlgorithmBankMapper.selectById(testProblemId);
//        Long finalAcTotal = updatedProblem.getAc_total();
//        Long expectedAcTotal = initialAcTotal + threadCount;
//
//        log.info("初始 ac_total: {}, 期望: {}, 实际: {}",
//            initialAcTotal, expectedAcTotal, finalAcTotal);
//
//        assertEquals(expectedAcTotal, finalAcTotal,
//            "并发更新后的 ac_total 应该等于初始值 + 线程数");
//
//        log.info("✅ ac_total 并发测试通过！");
//    }
//
//    /**
//     * 测试场景：模拟真实的判题场景
//     * 10个RabbitMQ消费者同时处理100个任务
//     */
//    @Test
//    public void testRealWorldScenario() throws InterruptedException {
//        Long testProblemId = 1001L;
//
//        ProblemAlgorithmBank problem = problemAlgorithmBankMapper.selectById(testProblemId);
//        if (problem == null) {
//            log.error("题目不存在，请先创建 problem_id = {}", testProblemId);
//            return;
//        }
//
//        Long initialTestTotal = problem.getTest_total();
//        Long initialAcTotal = problem.getAc_total();
//
//        log.info("═══════════════════════════════════════════");
//        log.info("🎯 模拟真实判题场景");
//        log.info("场景：100个用户同时提交代码，10个消费者并发处理");
//        log.info("═══════════════════════════════════════════");
//
//        int totalSubmissions = 100;  // 总提交数
//        int consumerCount = 10;      // RabbitMQ消费者数量
//        int acCount = 80;            // 假设80个AC，20个WA
//
//        CountDownLatch startLatch = new CountDownLatch(1);
//        CountDownLatch endLatch = new CountDownLatch(totalSubmissions);
//
//        // 模拟10个消费者的线程池
//        ExecutorService executor = Executors.newFixedThreadPool(consumerCount);
//
//        for (int i = 0; i < totalSubmissions; i++) {
//            final int submissionId = i;
//            final boolean isAc = submissionId < acCount;  // 前80个AC，后20个WA
//
//            executor.submit(() -> {
//                try {
//                    startLatch.await();
//
//                    // 模拟判题逻辑
//                    // 1. 所有提交都增加 test_total
//                    problemAlgorithmBankMapper.incrementTestTotal(testProblemId, 1);
//
//                    // 2. AC的提交增加 ac_total
//                    if (isAc) {
//                        problemAlgorithmBankMapper.incrementAcTotal(testProblemId, 1);
//                    }
//
//                    // 模拟判题耗时
//                    Thread.sleep(10);
//
//                } catch (Exception e) {
//                    log.error("提交 {} 处理失败: {}", submissionId, e.getMessage(), e);
//                } finally {
//                    endLatch.countDown();
//                }
//            });
//        }
//
//        long startTime = System.currentTimeMillis();
//        startLatch.countDown();
//        endLatch.await();
//        long endTime = System.currentTimeMillis();
//        executor.shutdown();
//
//        // 验证结果
//        ProblemAlgorithmBank updatedProblem = problemAlgorithmBankMapper.selectById(testProblemId);
//        Long finalTestTotal = updatedProblem.getTest_total();
//        Long finalAcTotal = updatedProblem.getAc_total();
//
//        log.info("═══════════════════════════════════════════");
//        log.info("📊 真实场景测试结果");
//        log.info("═══════════════════════════════════════════");
//        log.info("初始提交数: {}, 预期: {}, 实际: {}",
//            initialTestTotal, initialTestTotal + totalSubmissions, finalTestTotal);
//        log.info("初始AC数: {}, 预期: {}, 实际: {}",
//            initialAcTotal, initialAcTotal + acCount, finalAcTotal);
//        log.info("处理总耗时: {} ms", endTime - startTime);
//        log.info("平均每个任务: {} ms", (endTime - startTime) / totalSubmissions);
//        log.info("═══════════════════════════════════════════");
//
//        assertEquals(initialTestTotal + totalSubmissions, finalTestTotal,
//            "提交总数不匹配");
//        assertEquals(initialAcTotal + acCount, finalAcTotal,
//            "AC总数不匹配");
//
//        log.info("✅ 真实场景测试通过！系统可以安全处理高并发判题！");
//    }
//}
//
