package com.example.backend.config;

import org.springframework.amqp.core.Binding;
import org.springframework.amqp.core.BindingBuilder;
import org.springframework.amqp.core.DirectExchange;
import org.springframework.amqp.core.Queue;
import org.springframework.amqp.core.QueueBuilder;
import org.springframework.amqp.rabbit.config.SimpleRabbitListenerContainerFactory;
import org.springframework.amqp.rabbit.connection.ConnectionFactory;
import org.springframework.amqp.support.converter.Jackson2JsonMessageConverter;
import org.springframework.amqp.support.converter.MessageConverter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.HashMap;
import java.util.Map;

/**
 * RabbitMQ 配置项
 * 多沙箱负载均衡版本：
 * 1. 三个队列对应三个沙箱容器
 * 2. 轮询分配实现负载均衡
 * 3. 每个消费者配置独立的沙箱地址
 */
@Configuration
public class RabbitMQConfig {
    
    // ==================== 沙箱配置 ====================
    public static final int SANDBOX_COUNT = 10;  // 沙箱数量
    
    // 10个沙箱地址
    public static final String[] SANDBOX_URLS = {
        "http://101.43.48.120:6048",
        "http://101.43.48.120:6049", 
        "http://101.43.48.120:6050",
        "http://101.43.48.120:6051",
        "http://101.43.48.120:6052",
        "http://101.43.48.120:6053",
        "http://101.43.48.120:6054",
        "http://101.43.48.120:6055",
        "http://101.43.48.120:6056",
        "http://101.43.48.120:6057",
    };
    
    // ==================== 队列配置 ====================
    // 队列名称模板
    public static final String QUEUE_NAME_PREFIX = "judge.submit.queue.";
    public static final String[] QUEUE_NAMES = {
        "judge.submit.queue.0",
        "judge.submit.queue.1", 
        "judge.submit.queue.2",
        "judge.submit.queue.3",
        "judge.submit.queue.4",
        "judge.submit.queue.5",
        "judge.submit.queue.6",
         "judge.submit.queue.7",
         "judge.submit.queue.8",
         "judge.submit.queue.9",
    };
    
    // 路由键模板
    public static final String ROUTING_KEY_PREFIX = "judge.submit.";
    public static final String[] ROUTING_KEYS = {
        "judge.submit.0",
        "judge.submit.1",
        "judge.submit.2",
        "judge.submit.3",
        "judge.submit.4",
        "judge.submit.5",
        "judge.submit.6",
        "judge.submit.7",
        "judge.submit.8",
        "judge.submit.9",
    };
    
    // 交换器（所有队列共用一个交换器）
    public static final String EXCHANGE_NAME = "judge.exchange";
    
    // ==================== 死信队列配置 ====================
    public static final String DLQ_QUEUE_NAME = "judge.submit.dlq";
    public static final String DLQ_EXCHANGE_NAME = "judge.dlx";
    public static final String DLQ_ROUTING_KEY = "judge.submit.dlq";
    
    // 兼容旧代码（默认使用第一个队列）
    public static final String QUEUE_NAME = QUEUE_NAMES[0];
    public static final String ROUTING_KEY = ROUTING_KEYS[0];

    // ==================== 队列 Bean 定义 ====================
    
    @Bean
    public Queue judgeQueue0() {
        return new Queue(QUEUE_NAMES[0], true);
    }
    
    @Bean
    public Queue judgeQueue1() {
        return new Queue(QUEUE_NAMES[1], true);
    }
    
    @Bean
    public Queue judgeQueue2() {
        return new Queue(QUEUE_NAMES[2], true);
    }

    @Bean
    public Queue judgeQueue3() {
        return new Queue(QUEUE_NAMES[3], true);
    }

    @Bean
    public Queue judgeQueue4() {
        return new Queue(QUEUE_NAMES[4], true);
    }

    @Bean
    public Queue judgeQueue5() {
        return new Queue(QUEUE_NAMES[5], true);
    }

    @Bean
    public Queue judgeQueue6() {
        return new Queue(QUEUE_NAMES[6], true);
    }

    @Bean
    public Queue judgeQueue7() {
        return new Queue(QUEUE_NAMES[7], true);
    }

    @Bean
    public Queue judgeQueue8() {
        return new Queue(QUEUE_NAMES[8], true);
    }

    @Bean
    public Queue judgeQueue9() {
        return new Queue(QUEUE_NAMES[9], true);
    }
    // ==================== 交换器 ====================
    
    @Bean
    public DirectExchange judgeExchange() {
        return new DirectExchange(EXCHANGE_NAME, true, false);
    }

    // ==================== 绑定关系 ====================
    
    @Bean
    public Binding binding0(Queue judgeQueue0, DirectExchange judgeExchange) {
        return BindingBuilder.bind(judgeQueue0).to(judgeExchange).with(ROUTING_KEYS[0]);
    }
    
    @Bean
    public Binding binding1(Queue judgeQueue1, DirectExchange judgeExchange) {
        return BindingBuilder.bind(judgeQueue1).to(judgeExchange).with(ROUTING_KEYS[1]);
    }
    
    @Bean
    public Binding binding2(Queue judgeQueue2, DirectExchange judgeExchange) {
        return BindingBuilder.bind(judgeQueue2).to(judgeExchange).with(ROUTING_KEYS[2]);
    }

    @Bean
    public Binding binding3(Queue judgeQueue3, DirectExchange judgeExchange) {
        return BindingBuilder.bind(judgeQueue3).to(judgeExchange).with(ROUTING_KEYS[3]);
    }

    @Bean
    public Binding binding4(Queue judgeQueue4, DirectExchange judgeExchange) {
        return BindingBuilder.bind(judgeQueue4).to(judgeExchange).with(ROUTING_KEYS[4]);
    }

    @Bean
    public Binding binding5(Queue judgeQueue5, DirectExchange judgeExchange) {
        return BindingBuilder.bind(judgeQueue5).to(judgeExchange).with(ROUTING_KEYS[5]);
    }

    @Bean
    public Binding binding6(Queue judgeQueue6, DirectExchange judgeExchange) {
        return BindingBuilder.bind(judgeQueue6).to(judgeExchange).with(ROUTING_KEYS[6]);
    }

    @Bean
    public Binding binding7(Queue judgeQueue7, DirectExchange judgeExchange) {
        return BindingBuilder.bind(judgeQueue7).to(judgeExchange).with(ROUTING_KEYS[7]);
    }

    @Bean
    public Binding binding8(Queue judgeQueue8, DirectExchange judgeExchange) {
        return BindingBuilder.bind(judgeQueue8).to(judgeExchange).with(ROUTING_KEYS[8]);
    }

    @Bean
    public Binding binding9(Queue judgeQueue9, DirectExchange judgeExchange) {
        return BindingBuilder.bind(judgeQueue9).to(judgeExchange).with(ROUTING_KEYS[9]);
    }
    // ==================== 死信队列 ====================
    
    @Bean
    public Queue deadLetterQueue() {
        return QueueBuilder.durable(DLQ_QUEUE_NAME).build();
    }

    @Bean
    public DirectExchange deadLetterExchange() {
        return new DirectExchange(DLQ_EXCHANGE_NAME, true, false);
    }

    @Bean
    public Binding deadLetterBinding() {
        return BindingBuilder.bind(deadLetterQueue())
                .to(deadLetterExchange())
                .with(DLQ_ROUTING_KEY);
    }

    // ==================== 消息转换器 ====================
    
    @Bean
    public MessageConverter jsonMessageConverter() {
        return new Jackson2JsonMessageConverter();
    }

    // ==================== 监听器容器工厂 ====================
    
    /**
     * 监听器容器工厂：配置并发和 QoS
     * 每个沙箱队列配置独立的消费者
     */
    @Bean
    public SimpleRabbitListenerContainerFactory rabbitListenerContainerFactory(
            ConnectionFactory connectionFactory) {
        SimpleRabbitListenerContainerFactory factory = new SimpleRabbitListenerContainerFactory();
        factory.setConnectionFactory(connectionFactory);
        factory.setMessageConverter(jsonMessageConverter());
        
        // 🔥 并发配置：每个队列 1-2 个消费者
        // 总共 10 个队列 × 2 = 最多 20 个并发判题
        factory.setConcurrentConsumers(1);  // 每个队列初始 1 个消费者
        factory.setMaxConcurrentConsumers(2);  // 每个队列最大 2 个消费者
        
        // QoS 配置：每个消费者一次只预取1条消息
        factory.setPrefetchCount(1);
        
        // 手动确认模式
        factory.setAcknowledgeMode(org.springframework.amqp.core.AcknowledgeMode.MANUAL);
        
        // 默认重新入队：false（失败后进入死信队列）
        factory.setDefaultRequeueRejected(false);
        
        return factory;
    }
}
