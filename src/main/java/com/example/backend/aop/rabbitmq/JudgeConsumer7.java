package com.example.backend.aop.rabbitmq;

import com.example.backend.models.domain.judge.JudgeTaskMessage;
import com.example.backend.service.algorithm.JudgeTaskProcessor;
import com.rabbitmq.client.Channel;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.io.IOException;

@Component
@RabbitListener(queues = "judge.submit.queue.7", containerFactory = "rabbitListenerContainerFactory")
public class JudgeConsumer7 {
    @Resource
    private JudgeTaskProcessor processor;

    @RabbitHandler
    public void handleMessage(JudgeTaskMessage message, Channel channel, Message amqpMessage) throws IOException {
        processor.process(7, message, channel, amqpMessage);
    }
}
