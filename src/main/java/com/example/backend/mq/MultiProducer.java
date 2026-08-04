package com.example.backend.mq;

import com.rabbitmq.client.Channel;
import com.rabbitmq.client.Connection;
import com.rabbitmq.client.ConnectionFactory;
import com.rabbitmq.client.MessageProperties;

import java.util.Scanner;

public class MultiProducer {

  private static final String TASK_QUEUE_NAME = "multi_queue";

  public static void main(String args[]) throws Exception {
    ConnectionFactory factory = new ConnectionFactory();
    factory.setHost("localhost");
    try (Connection connection = factory.newConnection();
         Channel channel = connection.createChannel()) {
        // 队列持久化，true这个，服务器重启之后队列还存在
        channel.queueDeclare(TASK_QUEUE_NAME, true, false, false, null);

         Scanner scanner = new Scanner(System.in);
         while (scanner.hasNext()) {
             String message = scanner.nextLine();
             // 消息持久化，指定PERSISTENT_TEXT_PLAIN参数
             channel.basicPublish("", TASK_QUEUE_NAME,
                     MessageProperties.PERSISTENT_TEXT_PLAIN,
                     message.getBytes("UTF-8"));
             System.out.println(" [x] Sent '" + message + "'");
         }

    }
  }

}