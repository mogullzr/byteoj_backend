// ============================================
// 优化后的 WebSocket 代码（Vue 3 + @stomp/stompjs）
// ============================================

import { Client } from '@stomp/stompjs';
import SockJS from 'sockjs-client';
import { ref } from 'vue';
import { useRoute } from "vue-router";

// 在 setup() 中定义
const route = useRoute();

// WebSocket 相关状态（使用 ref）
const stompClient = ref(null);
const isConnected = ref(false);
const isConnecting = ref(false);
const subscriptions = ref(new Map()); // 存储所有订阅

/**
 * 初始化 WebSocket 连接（只连接一次）
 * 返回 Promise，确保连接成功后再继续
 */
const initWebSocketConnection = () => {
  // 如果已经连接，直接返回
  if (isConnected.value) {
    return Promise.resolve();
  }

  // 如果正在连接中，等待连接完成
  if (isConnecting.value) {
    return new Promise((resolve) => {
      const checkInterval = setInterval(() => {
        if (isConnected.value) {
          clearInterval(checkInterval);
          resolve();
        }
      }, 100);
    });
  }

  // 开始新连接
  isConnecting.value = true;

  return new Promise((resolve, reject) => {
    try {
      // 创建 Client 实例（新 API）
      const client = new Client({
        // 使用 SockJS 作为 WebSocket 的降级方案
        webSocketFactory: () => new SockJS('http://localhost:7091/api/ws/judge'),
        
        // 心跳配置
        heartbeatIncoming: 20000,  // 服务端心跳
        heartbeatOutgoing: 20000,  // 客户端心跳
        
        // 重连配置
        reconnectDelay: 3000,  // 自动重连延迟 3 秒
        
        // 调试日志（生产环境可关闭）
        debug: (str) => {
          console.log('[STOMP Debug]', str);
        },

        // 连接成功回调
        onConnect: (frame) => {
          console.log('[WebSocket] 连接成功:', frame);
          isConnected.value = true;
          isConnecting.value = false;
          resolve();
        },

        // 连接失败回调
        onStompError: (frame) => {
          console.error('[WebSocket] STOMP 错误:', frame);
          isConnected.value = false;
          isConnecting.value = false;
          reject(new Error(frame.headers.message || 'STOMP connection error'));
        },

        // WebSocket 错误回调
        onWebSocketError: (event) => {
          console.error('[WebSocket] 连接错误:', event);
          isConnected.value = false;
          isConnecting.value = false;
          reject(new Error('WebSocket connection error'));
        },

        // 断开连接回调
        onDisconnect: () => {
          console.warn('[WebSocket] 连接已断开');
          isConnected.value = false;
          subscriptions.value.clear();
        }
      });

      // 激活连接
      client.activate();
      stompClient.value = client;

    } catch (error) {
      console.error('[WebSocket] 初始化失败:', error);
      isConnecting.value = false;
      reject(error);
    }
  });
};

/**
 * 订阅判题结果
 * @param {string} taskId - 任务ID
 * @param {function} onMessage - 消息回调函数
 */
const subscribeJudgeResult = async (taskId, onMessage) => {
  // 确保 WebSocket 已连接
  await initWebSocketConnection();

  // 避免重复订阅
  if (subscriptions.value.has(taskId)) {
    console.warn(`[WebSocket] 任务 ${taskId} 已经订阅过了`);
    return;
  }

  try {
    // 订阅 topic
    const subscription = stompClient.value.subscribe(
      `/topic/judge/${taskId}`,
      (message) => {
        const result = JSON.parse(message.body);
        console.log('[WebSocket] 收到消息:', result);
        
        // 调用回调函数
        onMessage(result);

        // 如果是最终状态，自动取消订阅
        if (['Success', 'Failed', 'Accepted'].includes(result.status)) {
          unsubscribeJudgeResult(taskId);
        }
      }
    );

    // 保存订阅实例
    subscriptions.value.set(taskId, subscription);
    console.log(`[WebSocket] 订阅成功: /topic/judge/${taskId}`);

  } catch (error) {
    console.error('[WebSocket] 订阅失败:', error);
    throw error;
  }
};

/**
 * 取消订阅
 * @param {string} taskId - 任务ID
 */
const unsubscribeJudgeResult = (taskId) => {
  const subscription = subscriptions.value.get(taskId);
  if (subscription) {
    subscription.unsubscribe();
    subscriptions.value.delete(taskId);
    console.log(`[WebSocket] 取消订阅: ${taskId}`);
  }
};

/**
 * 断开 WebSocket 连接（通常不需要手动调用）
 */
const disconnectWebSocket = () => {
  if (stompClient.value && isConnected.value) {
    stompClient.value.deactivate();
    isConnected.value = false;
    subscriptions.value.clear();
    console.log('[WebSocket] 已主动断开连接');
  }
};

// ============================================
// 优化后的 submitJudge 函数
// ============================================

const submitJudge = async () => {
  const competition_id = parseInt(route.path.split("/")[2]);
  const problem_index = route.path.split("/")[4] ?? "";
  
  isShow_1.value = true;
  isShow_2.value = true;
  input.value = "";
  code_message.value = "";
  
  // 语言映射
  let temp_language = "";
  if (current_language.value == "C/C++") {
    temp_language = "cpp";
  } else if (current_language.value == "C") {
    temp_language = "c";
  } else if (current_language.value == "Python3") {
    temp_language = "python";
  } else if (current_language.value == "Java") {
    temp_language = "java";
  }
  
  isLoading.value = true;

  try {
    // 1. 提交代码
    let res;
    if (problem_index == "") {
      res = await ProblemAlgorithmControllerService.problemAlgorithmJudgeSubmitUsingPost({
        problem_id: problem_id.value,
        language: temp_language,
        source_code: content.value,
      });
    } else {
      res = await ProblemAlgorithmControllerService.problemAlgorithmJudgeSubmitUsingPost({
        competition_id: competition_id,
        index: problem_index,
        language: temp_language,
        source_code: content.value,
      });
    }

    // 2. 检查提交结果
    if (res.code !== 0) {
      code_message.value = res.message || "提交失败";
      isLoading.value = false;
      return;
    }

    // 3. 获取 taskId
    const taskId = res.data.taskId;
    code_status.value = res.data.status || "Pending";
    code_message.value = "提交成功，等待判题中...";

    console.log('[提交] 任务ID:', taskId);

    // 4. 订阅判题结果（复用连接）
    await subscribeJudgeResult(taskId, (result) => {
      // 处理判题结果
      handleJudgeResult(result);
    });

  } catch (error) {
    console.error('[提交] 出错:', error);
    code_message.value = "提交失败: " + error.message;
  } finally {
    isLoading.value = false;
  }
};

/**
 * 处理判题结果
 * @param {object} result - 判题结果
 */
const handleJudgeResult = (result) => {
  console.log('[判题结果]', result);

  // 更新状态
  code_status.value = result.status;

  // 根据不同状态处理
  switch (result.status) {
    case 'Pending':
      code_message.value = "任务排队中...";
      break;

    case 'Running':
      code_message.value = "正在判题中...";
      break;

    case 'Retrying':
      code_message.value = result.message || "判题失败，正在重试...";
      break;

    case 'Accepted':
    case 'Success':
      // 成功
      audioClick.value.volume = 1;
      audioClick.value?.play();
      code_message.value = `Accepted! 分数: ${result.score || '100'}`;
      
      // 完成后的处理
      finishJudge();
      break;

    case 'Wrong Answer':
      input.value = result.input || "";
      code_message.value = result.message || result.output || "答案错误";
      correctOutput.value = result.correctOutput || "";
      
      finishJudge();
      break;

    case 'Nonzero Exit Status':
    case 'Runtime Error':
      code_message.value = result.message || result.fileId || "运行时错误";
      
      finishJudge();
      break;

    case 'Failed':
      code_message.value = result.message || "判题失败";
      
      finishJudge();
      break;

    default:
      code_message.value = result.message || `状态: ${result.status}`;
  }
};

/**
 * 判题完成后的处理
 */
const finishJudge = () => {
  // 调用原有的 modify 函数
  modify();
  
  // 隐藏相关UI
  isShow_1.value = false;
  isShow_2.value = false;
};

// ============================================
// 组件生命周期
// ============================================

import { onMounted, onUnmounted } from 'vue';

// 组件挂载时初始化连接（可选，也可以在第一次提交时连接）
onMounted(() => {
  console.log('[组件] 挂载，准备初始化 WebSocket');
  // 预先建立连接（可选）
  // initWebSocketConnection();
});

// 组件卸载时断开连接
onUnmounted(() => {
  console.log('[组件] 卸载，断开 WebSocket');
  disconnectWebSocket();
});

// ============================================
// 导出供组件使用
// ============================================

export {
  submitJudge,
  isConnected,
  subscriptions,
  disconnectWebSocket
};

