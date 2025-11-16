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
 * 优化：
 * 1. 添加并发控制（最大10个并发消费者）
 * 2. 添加 QoS 预取限制
 * 3. 添加死信队列处理失败消息
 * 4. 添加消息转换器
 */
@Configuration
public class RabbitMQConfig {
    public static final String QUEUE_NAME = "judge.submit.queue";
    public static final String EXCHANGE_NAME = "judge.exchange";
    public static final String ROUTING_KEY = "judge.submit";
    
    // 死信队列配置
    public static final String DLQ_QUEUE_NAME = "judge.submit.dlq";
    public static final String DLQ_EXCHANGE_NAME = "judge.dlx";
    public static final String DLQ_ROUTING_KEY = "judge.submit.dlq";

    /**
     * 主队列：基本配置（不带高级参数）
     * 
     * 重要：如果要启用死信队列和TTL，需要先删除RabbitMQ中的旧队列！
     * 步骤：
     * 1. 访问 http://localhost:15672
     * 2. 进入 Queues 标签
     * 3. 删除 judge.submit.queue
     * 4. 取消下面的注释，重启应用
     */
    @Bean
    public Queue judgeQueue() {
        // 临时使用简单配置，匹配已存在的队列
        return new Queue(QUEUE_NAME, true);  // 仅持久化队列
        
        // 完整配置（删除旧队列后启用）：
        /*
        Map<String, Object> args = new HashMap<>();
        args.put("x-dead-letter-exchange", DLQ_EXCHANGE_NAME);
        args.put("x-dead-letter-routing-key", DLQ_ROUTING_KEY);
        args.put("x-message-ttl", 300000);  // 5分钟
        return QueueBuilder.durable(QUEUE_NAME).withArguments(args).build();
        */
    }

    @Bean
    public DirectExchange judgeExchange() {
        return new DirectExchange(EXCHANGE_NAME, true, false);
    }

    @Bean
    public Binding binding(Queue judgeQueue, DirectExchange judgeExchange) {
        return BindingBuilder.bind(judgeQueue).to(judgeExchange).with(ROUTING_KEY);
    }

    /**
     * 死信队列
     */
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

    /**
     * 消息转换器：支持对象序列化
     */
    @Bean
    public MessageConverter jsonMessageConverter() {
        return new Jackson2JsonMessageConverter();
    }

    /**
     * 监听器容器工厂：配置并发和 QoS
     * 关键配置：
     * - concurrentConsumers: 初始消费者数量（5个）
     * - maxConcurrentConsumers: 最大消费者数量（10个，匹配服务器并发能力）
     * - prefetchCount: 每个消费者预取1条消息（确保负载均衡）
     */
    @Bean
    public SimpleRabbitListenerContainerFactory rabbitListenerContainerFactory(
            ConnectionFactory connectionFactory) {
        SimpleRabbitListenerContainerFactory factory = new SimpleRabbitListenerContainerFactory();
        factory.setConnectionFactory(connectionFactory);
        factory.setMessageConverter(jsonMessageConverter());
        
        // 🔥 并发配置：降低到2-4个消费者（判题是CPU密集型操作）
        // 根据服务器CPU核心数调整：2核用1-2，4核用2-4，8核用4-6
        factory.setConcurrentConsumers(2);  // 初始2个消费者
        factory.setMaxConcurrentConsumers(4);  // 最大4个消费者（避免CPU过载）
        
        // QoS 配置：每个消费者一次只预取1条消息
        factory.setPrefetchCount(1);
        
        // 手动确认模式
        factory.setAcknowledgeMode(org.springframework.amqp.core.AcknowledgeMode.MANUAL);
        
        // 默认重新入队：false（失败后进入死信队列）
        factory.setDefaultRequeueRejected(false);
        
        return factory;
    }
}