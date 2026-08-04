package com.example.backend.config;

import org.springframework.amqp.core.Binding;
import org.springframework.amqp.core.BindingBuilder;
import org.springframework.amqp.core.DirectExchange;
import org.springframework.amqp.core.Queue;
import org.springframework.amqp.core.QueueBuilder;
import org.springframework.amqp.rabbit.config.SimpleRabbitListenerContainerFactory;
import org.springframework.amqp.rabbit.connection.ConnectionFactory;
import org.springframework.amqp.support.converter.MessageConverter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.HashMap;
import java.util.Map;

@Configuration
public class AlgorithmTestGenerationRabbitConfig {
    public static final String EXCHANGE = "algorithm.test.generation.exchange";
    public static final String QUEUE = "algorithm.test.generation.queue";
    public static final String ROUTING_KEY = "algorithm.test.generation.execute";
    public static final String DLX = "algorithm.test.generation.dlx";
    public static final String DLQ = "algorithm.test.generation.dlq";
    public static final String DEAD_ROUTING_KEY = "algorithm.test.generation.dead";

    @Bean
    public DirectExchange algorithmTestGenerationExchange() { return new DirectExchange(EXCHANGE, true, false); }
    @Bean
    public DirectExchange algorithmTestGenerationDeadExchange() { return new DirectExchange(DLX, true, false); }
    @Bean
    public Queue algorithmTestGenerationQueue() {
        Map<String, Object> args = new HashMap<>();
        args.put("x-dead-letter-exchange", DLX);
        args.put("x-dead-letter-routing-key", DEAD_ROUTING_KEY);
        return QueueBuilder.durable(QUEUE).withArguments(args).build();
    }
    @Bean
    public Queue algorithmTestGenerationDeadQueue() { return QueueBuilder.durable(DLQ).build(); }
    @Bean
    public Binding algorithmTestGenerationBinding() { return BindingBuilder.bind(algorithmTestGenerationQueue()).to(algorithmTestGenerationExchange()).with(ROUTING_KEY); }
    @Bean
    public Binding algorithmTestGenerationDeadBinding() { return BindingBuilder.bind(algorithmTestGenerationDeadQueue()).to(algorithmTestGenerationDeadExchange()).with(DEAD_ROUTING_KEY); }

    @Bean
    public SimpleRabbitListenerContainerFactory algorithmTestGenerationListenerFactory(ConnectionFactory connectionFactory, MessageConverter jsonMessageConverter) {
        SimpleRabbitListenerContainerFactory factory = new SimpleRabbitListenerContainerFactory();
        factory.setConnectionFactory(connectionFactory);
        factory.setMessageConverter(jsonMessageConverter);
        factory.setConcurrentConsumers(1);
        factory.setMaxConcurrentConsumers(2);
        factory.setPrefetchCount(1);
        factory.setAcknowledgeMode(org.springframework.amqp.core.AcknowledgeMode.MANUAL);
        factory.setDefaultRequeueRejected(false);
        return factory;
    }
}
