<template>
  <audio ref="audioClick" v-show="false">
    <source src="../../../../public/vector.mp3" type="audio/mpeg" />
  </audio>
  <div class="bg-neutral-50 w-full h-16" style="border: lightgray 1px solid">
    <div class="flex">
      <div class="flex-1"></div>
      <select
          id="language"
          class="select select-bordered max-w-xs w-1/6 mb-2 my-1"
          v-model="current_language"
          @change="getCurrentSelected('language')"
      >
        <option v-for="language in languages_options" :key="language">
          {{ language }}
        </option>
      </select>
      <button
          class="EditorSizeControl ml-5"
          @click="EditorSizeControl"
          v-if="isShow === '1'"
      >
        <svg
            v-if="!flag"
            xmlns="http://www.w3.org/2000/svg"
            width="30"
            height="30"
            viewBox="0 0 16 16"
        >
          <path
              fill="#999999"
              d="M16 0H9.5L12 2.5l-3 3L10.5 7l3-3L16 6.5zm0 16V9.5L13.5 12l-3-3L9 10.5l3 3L9.5 16zM0 16h6.5L4 13.5l3-3L5.5 9l-3 3L0 9.5zM0 0v6.5L2.5 4l3 3L7 5.5l-3-3L6.5 0z"
          />
        </svg>
        <svg
            v-else
            xmlns="http://www.w3.org/2000/svg"
            width="30"
            height="30"
            viewBox="0 0 16 16"
        >
          <path
              fill="#2aabd2"
              d="M16 0H9.5L12 2.5l-3 3L10.5 7l3-3L16 6.5zm0 16V9.5L13.5 12l-3-3L9 10.5l3 3L9.5 16zM0 16h6.5L4 13.5l3-3L5.5 9l-3 3L0 9.5zM0 0v6.5L2.5 4l3 3L7 5.5l-3-3L6.5 0z"
          />
        </svg>
      </button>
      <button class="reverseEditorHover ml-4" @click="transformEditor">
        <svg
            v-if="isShow === '0' || isShow == null"
            xmlns="http://www.w3.org/2000/svg"
            width="30"
            height="30"
            viewBox="0 0 24 24"
        >
          <path fill="#999999" d="M1 20V4h6v16zm8 0V4h14v16z" />
        </svg>
        <svg
            v-else
            xmlns="http://www.w3.org/2000/svg"
            width="30"
            height="30"
            viewBox="0 0 24 24"
        >
          <path fill="#2aabd2" d="M1 20V4h6v16zm8 0V4h14v16z" />
        </svg>
      </button>
      <button class="rebootHover mx-6" @click="clearContent">
        <svg
            xmlns="http://www.w3.org/2000/svg"
            width="30"
            height="30"
            viewBox="0 0 24 24"
        >
          <path
              fill="none"
              stroke="#999999"
              stroke-linecap="round"
              stroke-linejoin="round"
              stroke-width="2"
              d="M20 20v-5h-5M4 4v5h5m10.938 2A8.001 8.001 0 0 0 5.07 8m-1.008 5a8.001 8.001 0 0 0 14.868 3"
          />
        </svg>
      </button>
      <button class="bothover mr-6" @click="showBot('ByteOJ AI 问答')" v-if="isBotShow">
        <div v-if="!isBot">
          <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 24 24"><g fill="none" stroke="#666666" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"><path d="M12 8V4H8"/><rect width="16" height="12" x="4" y="8" rx="2"/><path d="M2 14h2m16 0h2m-7-1v2m-6-2v2"/></g></svg>
        </div>
        <div v-else>
          <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 24 24"><g fill="none" stroke="#2AABD2" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"><path d="M12 8V4H8"/><rect width="16" height="12" x="4" y="8" rx="2"/><path d="M2 14h2m16 0h2m-7-1v2m-6-2v2"/></g></svg>
        </div>
      </button>
      <button class="formatHover mr-6" @click="formatCode" title="格式化代码">
        <svg
            xmlns="http://www.w3.org/2000/svg"
            width="30"
            height="30"
            viewBox="0 0 24 24"
        >
          <path
              fill="#999999"
              d="M4 3h16a1 1 0 0 1 1 1v16a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1m1 2v14h14V5zm2 2h3v2H7zm0 3h3v2H7zm0 3h3v2H7zm5-6h5v2h-5zm0 3h5v2h-5zm0 3h5v2h-5z"
          />
        </svg>
      </button>
      <button class="exportRecordsHover mr-6" @click="exportRecords" title="导出代码编辑记录">
        <svg
            xmlns="http://www.w3.org/2000/svg"
            width="30"
            height="30"
            viewBox="0 0 24 24"
        >
          <path
              fill="#999999"
              d="M14 2H6c-1.1 0-2 .9-2 2v16c0 1.1.89 2 2 2h12c1.1 0 2-.9 2-2V8zm4 18H6V4h7v5h5zM8 15.01l1.41 1.41L11 14.84V19h2v-4.16l1.59 1.58L16 15.01L12.01 11z"
          />
        </svg>
      </button>
      <DraggableWindowView
          :title="windoww.title ?? 'ByteOJ AI 问答'"
          :position="windoww.position"
          :size="windoww.size"
          @close="removeWindow"
          @minimize="toggleMinimizeWindow"
          v-show="isBot"
          v-model:fixed="isFixed"
      >
        <ChatBoxView :status="props.status"/>
      </DraggableWindowView>
      <button class="settingHover mr-6" @click="showModal">
        <svg
            xmlns="http://www.w3.org/2000/svg"
            width="30"
            height="30"
            viewBox="0 0 24 24"
        >
          <path
              fill="#999999"
              d="m9.25 22l-.4-3.2q-.325-.125-.612-.3t-.563-.375L4.7 19.375l-2.75-4.75l2.575-1.95Q4.5 12.5 4.5 12.338v-.675q0-.163.025-.338L1.95 9.375l2.75-4.75l2.975 1.25q.275-.2.575-.375t.6-.3l.4-3.2h5.5l.4 3.2q.325.125.613.3t.562.375l2.975-1.25l2.75 4.75l-2.575 1.95q.025.175.025.338v.674q0 .163-.05.338l2.575 1.95l-2.75 4.75l-2.95-1.25q-.275.2-.575.375t-.6.3l-.4 3.2zm2.8-6.5q1.45 0 2.475-1.025T15.55 12t-1.025-2.475T12.05 8.5q-1.475 0-2.488 1.025T8.55 12t1.013 2.475T12.05 15.5"
          />
        </svg>
      </button>
      <dialog id="my_modal" class="modal">
        <div class="modal-box max-w-4xl">
          <div class="text-lg font-bold" style="font-size: 30px">
            代码编辑器设置
          </div>
          <div class="divider"></div>

          <!-- Theme Settings -->
          <div class="flex mb-6">
            <div>
              <div class="font-bold">界面风格</div>
              <div class="text-gray-400">
                对于这种白色页面疲劳了？你可以选择另外几种不同颜色风格的高亮特效感受感受o(*￣︶￣*)o
              </div>
            </div>
            <div class="mx-6 my-2">
              <select
                  id="theme"
                  class="select select-bordered max-w-xs w-48"
                  v-model="current_theme"
                  @click="getCurrentSelected('theme')"
              >
                <option v-for="theme in themes_options" :key="theme">
                  {{ theme }}
                </option>
              </select>
            </div>
          </div>

          <div class="divider"></div>

          <!-- Code Recording Settings -->
          <div class="mb-6">
            <div class="font-bold mb-3">代码记录功能</div>
            <div class="text-gray-400 mb-4">
              自动记录你的每一次编辑操作，支持代码回放
            </div>

            <div class="flex flex-wrap gap-3 mb-4">
              <button
                class="btn btn-sm bg-yellow-500 text-white hover:bg-yellow-600"
                @click="clearRecords"
              >
                清空记录
              </button>
              <button
                class="btn btn-sm bg-orange-500 text-white hover:bg-orange-600"
                @click="openReplayPage"
              >
                🎬 查看代码回放
              </button>
            </div>

            <div class="text-sm text-gray-600 mb-2">
              📝 已记录操作数量: {{ codeRecords.length }}
            </div>
            <div class="text-xs text-blue-600 mb-2">
              💾 操作记录实时保存，点击"查看代码回放"即可观看编程过程
            </div>

          </div>

          <div class="divider"></div>
          <div class="modal-action">
            <form method="dialog">
              <button class="btn bg-blue-400 text-white">确定</button>
            </form>
          </div>
        </div>
      </dialog>
    </div>
  </div>
  <v-ace-editor
      id="editor"
      dragEnabled="true"
      @init="editorInit"
      v-model:value="content"
      :lang="
      current_language == 'C' || current_language == 'C/C++'
        ? 'c_cpp'
        : current_language == 'Python3'
        ? 'python'
        : 'c_cpp'
    "
      :theme="current_theme"
      :options="options"
      class="vue-ace-editor"
      :style="{
      fontSize: font_size + 'px',
      lineHeight: lineHeight + 'px',
      transition: 'all 0.2s ease',
    }"
      @wheel.prevent="handleWheel"
  />
  <button
      v-if="route.path.split('/')[1] != 'exam'"
      @click="submitJudge"
      class="text-lg btn float-right text-white hover:text-slate-700 m-4 w-28 bg-green-400 hover:bg-green-500 active:bg-emerald-500 g-border-b-gray-400 submit-button"
      :disabled="isShow_2"
  >
    提交代码
  </button>
  <button
      class="text-lg btn bg-white float-right m-4 w-28 hover:bg-gray-100 active:bg-gray-300 border-b-gray-400"
      @click="judgeTest"
      :disabled="isShow_1"
  >
    调试代码
  </button>
  <div
      v-show="isLoading !== undefined"
      tabindex="0"
      class="collapse collapse-open border-base-300 border"
      style=""
  >
    <div
        class="collapse-title text-xl font-medium flex"
        style="background-color: #f5f5f5"
    >
      <div>代码运行状态：</div>
      <!-- Pending 状态：浅灰色 + loading spinner -->
      <div class="text-2xl" v-if="code_status == 'pending' || code_status == 'Pending'">
        <span class="text-gray-400">Pending</span>
        <span class="loading loading-spinner ml-3 text-gray-500"></span>
      </div>
      <!-- Running 状态：蓝色 + loading spinner -->
      <div class="text-2xl text-sky-600" v-else-if="isLoading || code_status == 'running' || code_status == 'Running'">
        <span class="">Running</span>
        <span class="loading loading-spinner ml-3"></span>
      </div>
      <!-- Accepted/Finished 状态：绿色 -->
      <span
          class="text-2xl ml-2"
          v-else-if="code_status == 'Accepted' || code_status == 'Finished'"
          style="color: #449d44"
      >{{ code_status }}</span
      >
      <!-- 其他错误状态：红色 -->
      <span
          class="text-2xl text-red-500"
          v-else-if="code_status != 'Nonzero Exit Status'"
      >{{ code_status }}</span
      >
      <!-- 编译错误：红色 -->
      <span class="text-2xl text-red-500" v-else>Compile Error</span>
    </div>
    <div class="collapse-content">
      <!-- Pending、Loading 或 Running 状态时不显示输出内容 -->
      <div class="m-5" v-show="!isLoading && code_status != 'pending' && code_status != 'Pending' && code_status != 'Running' && code_status != 'running'">
        <span class="text-gray-700">输入</span>
        <textarea
            id="auto-expand-textarea_1"
            class="auto-expand-textarea my-2"
            v-model="input"
            style="font-size: 16px; letter-spacing: 2px"
        ></textarea>
        <span class="text-gray-700">输出</span>
        <textarea
            id="auto-expand-textarea_2"
            class="auto-expand-textarea my-2"
            :style="code_status == 'Nonzero Exit Status' ? 'color: #d05451' : ''"
            v-model="code_message"
            style="font-size: 16px; letter-spacing: 2px"
        ></textarea>
        <span
            class="text-gray-700"
            v-show="correctOutput && correctOutput != ''"
        >标准答案</span
        >
        <textarea
            v-if="correctOutput && correctOutput != ''"
            id="auto-expand-textarea_3"
            class="auto-expand-textarea my-2"
            v-model="correctOutput"
            style="font-size: 16px; letter-spacing: 2px"
        ></textarea>
        <div v-if="code_time != 0" style="font-size: 18px">
          时间：{{ code_time }} ms
        </div>
      </div>
    </div>
  </div>
</template>

<script lang="ts" setup>
import { nextTick, onBeforeUpdate, onMounted, ref, Ref, watch } from "vue";
import { debounce } from "lodash";
import { VAceEditor } from "vue3-ace-editor";
import "@/plugins/aceConfig.js";
import UserStore from "@/store/user";
import router from "@/router";
import { ProblemAlgorithmControllerService } from "../../../../generated";
import ace from "ace-builds";
import ChatBoxView from "@/view/AI/ChatBoxView.vue";
import DraggableWindowView from "@/components/Card/DraggableWindowView.vue";
import {} from '@/plugins/CodeSubmit.js'
const props = defineProps<{
  status: number
}>();

const path = router.currentRoute.value.fullPath;
const audioClick: Ref<any> = ref(null);
const useStore = UserStore();
const isShow: Ref<string | null> = ref(localStorage.getItem("EditorStatus"));
const flag: Ref<boolean> = ref(localStorage.getItem("ControlBlock") != null);
const isBot: Ref<boolean> = ref(localStorage.getItem("isBot") == 'true');
const isBotShow: Ref<boolean> = ref(path.toString().split("/")[2] != "competition");
const font_size: Ref<any> = ref(
    localStorage.getItem("fontSize") == null
        ? 18
        : parseInt(localStorage.getItem("fontSize") ?? "22")
);
const lineHeight: Ref<any> = ref(24);
const correctOutput: Ref<string | undefined> = ref(undefined);

const options: any = ref({
  useWorker: true,
  enableBasicAutocompletion: true,
  enableLiveAutocompletion: true,
  enableSnippets: true,
  showPrintMargin: false,
  highlightActiveLine: true,
  highlightSelectedWord: true,
  tabSize: 4,
  wrap: false,
  readonly: false,
  minLines: 15,
  maxLines: 1000,
  fontSize: font_size.value,
});


const problem_id = ref(
    path.toString().split("/")[1] == "competition"
        ? parseInt(path.toString().split("/")[2]) +
        "-" +
        path.toString().split("/")[4]
        : parseInt(path.toString().split("/")[3])
);

const languages_options = useStore.languages_options;
const themes_options = useStore.themes_options;
const languages_content = useStore.languages_content;
const current_language = ref(localStorage.getItem("current_language") == null ? languages_options[0] : localStorage.getItem("current_language"));
const current_theme: Ref<any> = ref(
    localStorage.getItem("theme-" + useStore.loginUser.uuid) == null
        ? themes_options[0] ?? "github"
        : localStorage.getItem("theme-" + useStore.loginUser.uuid) != undefined
            ? localStorage.getItem("theme-" + useStore.loginUser.uuid)
            : "github"
);
const content: Ref<any> = ref(
    localStorage.getItem(
        problem_id.value +
        "-" +
        useStore.loginUser.uuid +
        "-" +
        current_language.value
    ) == null
        ? languages_content[0]
        : localStorage.getItem(
            problem_id.value +
            "-" +
            useStore.loginUser.uuid +
            "-" +
            current_language.value
        )
);

const input = ref("");
const code_status = ref("");
const code_message = ref("");
const code_time = ref(0);
const isLoading: Ref<boolean | undefined> = ref(undefined);
const isShow_1: Ref<Boolean> = ref(false);
const isShow_2: Ref<Boolean> = ref(false);

// Define operation types for recording (following Byteoj format)
const OperationType = {
  INSERT: 0,      // Character insertion - [0, row, col, character, timestamp]
  DELETE: 1,      // Character deletion - [1, startRow, startCol, endRow, endCol, timestamp]
  CURSOR_MOVE: 2, // Cursor movement - [2, fromRow, fromCol, toRow, toCol, timestamp]
  PASTE: 3,       // Paste operation - [3, row, col, text, timestamp]
  UNDO: 4,        // Undo operation
  REDO: 5,        // Redo operation
  CLEAR: 6,       // Clear all content
  BATCH_INSERT: 7, // Batch insertion (autocomplete, paste) - [7, row, col, text, timestamp]
} as const;

// Record array to store all operations (for local preview and Byteoj export)
const codeRecords: Ref<Array<any>> = ref([]);
const startTimestamp = ref(Date.now());

// Batch operation detection
let lastInsertTime = 0;
let isInPasteMode = false;
const BATCH_THRESHOLD = 50; // If multiple characters inserted within 50ms, treat as batch

// Database record interface matching your table structure
interface ProblemRecord {
  type: number;          // 操作类型
  old_row: number | null; // 旧行
  old_col: number | null; // 旧列
  new_row: number | null; // 新行
  new_col: number | null; // 新列
  content: string | null; // 内容
  timestamp: number;      // 距离开始操作的时间
}

// Save operation to backend (single record)
const saveOperation = async (record: ProblemRecord) => {
  try {
    // Prepare data for backend API
    const requestData = {
      type: record.type,
      old_row: record.old_row,
      old_col: record.old_col,
      new_row: record.new_row,
      new_col: record.new_col,
      content: record.content,
      timestamp: record.timestamp,
    };

    console.log('Saving record to backend:', requestData);

    // TODO: Uncomment when backend API is ready
    // const response = await ProblemAlgorithmControllerService.saveProblemRecordUsingPost(requestData);
    // if (response.code !== 0) {
    //   console.error("Failed to save operation:", response.message);
    // }

    // Also add to local array for Byteoj format export
    addToLocalRecords(record);

  } catch (error) {
    console.error("Error saving operation:", error);
  }
};

// Add operation to local records array (for Byteoj format export)
const addToLocalRecords = (record: ProblemRecord) => {
  // Convert to Byteoj format for local storage
  let ByteojRecord: any[];

  if (record.type === OperationType.INSERT) {
    // [0, row, col, character, timestamp]
    ByteojRecord = [
      record.type,
      record.new_row,
      record.new_col,
      record.content,
      record.timestamp
    ];
  } else if (record.type === OperationType.DELETE) {
    // [1, startRow, startCol, endRow, endCol, timestamp]
    ByteojRecord = [
      record.type,
      record.old_row,
      record.old_col,
      record.new_row,
      record.new_col,
      record.timestamp
    ];
  } else if (record.type === OperationType.BATCH_INSERT) {
    // [7, row, col, text, timestamp] - Store as batch operation
    ByteojRecord = [
      record.type,
      record.new_row,
      record.new_col,
      record.content,
      record.timestamp
    ];
  } else {
    // Other operations (CURSOR_MOVE, PASTE, UNDO, REDO, CLEAR)
    ByteojRecord = [
      record.type,
      record.old_row,
      record.old_col,
      record.new_row,
      record.new_col,
      record.timestamp
    ];
  }

  codeRecords.value.push(ByteojRecord);

  // Debug logging
  const DEBUG_RECORDING = true;
  if (DEBUG_RECORDING) {
    console.log('✅ New record added:', ByteojRecord);
    console.log('📊 Total records:', codeRecords.value.length);

    // 特别调试批量插入操作
    if (record.type === OperationType.BATCH_INSERT) {
      console.log('🔍 BATCH_INSERT record details:', {
        original: record,
        ByteojFormat: ByteojRecord,
        contentLength: (record.content || '').length,
        contentPreview: (record.content || '').substring(0, 100) + '...'
      });
    }

    if (codeRecords.value.length === 1) {
      console.log('🎯 代码记录已开始！');
    }
  }
};

// Get records in Byteoj format
const getRecordsString = () => {
  return JSON.stringify(codeRecords.value);
};

// Clear all records
const clearRecords = () => {
  codeRecords.value = [];
  startTimestamp.value = Date.now();
  console.log('All records cleared');
  alert('所有记录已清空！');
};

// Export records to clipboard
const exportRecords = async () => {
  try {
    if (codeRecords.value.length === 0) {
      alert('没有可导出的记录！请先编写一些代码。');
      return;
    }

    const recordsString = getRecordsString();

    // Try to use the modern Clipboard API
    if (navigator.clipboard && window.isSecureContext) {
      await navigator.clipboard.writeText(recordsString);
      alert(`已成功复制 ${codeRecords.value.length} 条编辑记录到剪贴板！`);
    } else {
      // Fallback for older browsers or non-secure contexts
      const textArea = document.createElement('textarea');
      textArea.value = recordsString;
      textArea.style.position = 'fixed';
      textArea.style.left = '-999999px';
      textArea.style.top = '-999999px';
      document.body.appendChild(textArea);
      textArea.focus();
      textArea.select();

      try {
        document.execCommand('copy');
        textArea.remove();
        alert(`已成功复制 ${codeRecords.value.length} 条编辑记录到剪贴板！`);
      } catch (err) {
        textArea.remove();
        console.error('复制失败:', err);
        // Show records in a dialog as a fallback
        prompt('无法自动复制，请手动复制以下内容:', recordsString);
      }
    }

    console.log(`已导出 ${codeRecords.value.length} 条记录`);

  } catch (error) {
    console.error('导出记录失败:', error);
    alert('导出记录失败，请重试。');
  }
};

// Open replay page
const openReplayPage = () => {
  // Check if there are records to replay
  if (codeRecords.value.length === 0) {
    alert('没有可回放的记录！请先编写一些代码。');
    return;
  }

  // Store current records in localStorage for the replay page
  try {
    const recordsData = JSON.stringify(codeRecords.value);
    localStorage.setItem('codeReplayData', recordsData);
    console.log(`已保存 ${codeRecords.value.length} 条记录到回放页面`);

    // Open in new tab/window
    const url = router.resolve({ path: '/code-replay' }).href;
    window.open(url, '_blank');

    // Optional: Show success message
    // alert(`已自动导入 ${codeRecords.value.length} 条记录到回放页面！`);
  } catch (error) {
    console.error('保存记录到回放页面失败:', error);
    alert('保存记录失败，请手动导出记录！');
  }
};

const editorInit = () => {
  require("ace-builds/src-noconflict/ext-language_tools");
  require("ace-builds/src-noconflict/snippets/sql");
  require("ace-builds/src-noconflict/snippets/c_cpp");
  require("ace-builds/src-noconflict/snippets/java");
  require("ace-builds/src-noconflict/mode-c_cpp");
  require("ace-builds/src-noconflict/mode-java");
  require("ace-builds/src-noconflict/theme-monokai");
  require("ace-builds/src-noconflict/theme-eclipse");
  require("ace-builds/src-noconflict/theme-chrome");
  require("ace-builds/src-noconflict/theme-textmate");
  require("ace-builds/src-noconflict/mode-html");
  require("ace-builds/src-noconflict/mode-html_elixir");
  require("ace-builds/src-noconflict/mode-html_ruby");
  require("ace-builds/src-noconflict/mode-javascript");
  require("ace-builds/src-noconflict/mode-python");
  require("ace-builds/src-noconflict/snippets/less");
  require("ace-builds/src-noconflict/ext-static_highlight");
  require("ace-builds/src-noconflict/ext-beautify");

  let langTools = ace.require("ace/ext/language_tools");
  const customCompleter = {
    getCompletions: function (
        editor: any,
        session: any,
        pos: any,
        prefix: any,
        callback: any
    ) {
      const completions = useStore.auto_code;
      callback(null, completions);
    },
  };
  langTools.addCompleter(customCompleter);

  // Get the Ace Editor instance
  const editor = ace.edit("editor");

  // Initialize recording start time
  startTimestamp.value = Date.now();

  // Previous cursor position for tracking movement
  let previousCursorPosition = { row: 0, column: 0 };

  // Record changes (insertions/deletions) - Optimized for batch operations
  editor.session.on("change", (delta: any) => {
    const timestamp = Date.now() - startTimestamp.value;

    if (delta.action === "insert") {
      const text = delta.lines.join("\n");
      const startRow = delta.start.row;
      const startCol = delta.start.column;

      // Debug logging for content detection
      console.log('Change event - Insert detected:', {
        delta: delta,
        text: text,
        textLength: text.length,
        lines: delta.lines,
        isInPasteMode: isInPasteMode,
        startRow: startRow,
        startCol: startCol,
        timestamp: timestamp,
        lastInsertTime: lastInsertTime
      });

      // Detect if this is a batch operation
      const isBatchOperation = text.length > 1 ||
                              (timestamp - lastInsertTime < BATCH_THRESHOLD && lastInsertTime > 0) ||
                              isInPasteMode;

      console.log('Batch operation detection:', {
        isBatchOperation: isBatchOperation,
        textLength: text.length,
        timeDiff: timestamp - lastInsertTime,
        isInPasteMode: isInPasteMode,
        threshold: BATCH_THRESHOLD
      });

      if (isBatchOperation) {
        // This is a batch operation (paste, autocomplete, etc.)
        console.log('🟠 Recording as BATCH_INSERT:', text.substring(0, 50) + (text.length > 50 ? '...' : ''));

        // Check if this is a rapid repeat - if so, ignore it
        if (isInPasteMode && timestamp - lastInsertTime < 10) {
          console.log('⚠️ Ignoring rapid duplicate paste event (within 10ms)');
          return;
        }

        const record: ProblemRecord = {
          type: OperationType.BATCH_INSERT,
          old_row: null,
          old_col: null,
          new_row: startRow,
          new_col: startCol,
          content: text,
          timestamp: timestamp
        };
        saveOperation(record);

        // Immediately reset paste mode to prevent duplicates
        if (isInPasteMode) {
          isInPasteMode = false;
          console.log('🔄 Reset isInPasteMode to false after batch insert');
        }
      } else {
        // Single character insertion (normal typing)
        console.log('🟢 Recording as single INSERT:', text);
        const record: ProblemRecord = {
          type: OperationType.INSERT,
          old_row: null,
          old_col: null,
          new_row: startRow,
          new_col: startCol,
          content: text,
          timestamp: timestamp
        };
        saveOperation(record);
      }

      lastInsertTime = timestamp;
    } else if (delta.action === "remove") {
      // Handle character deletion
      const deletedText = delta.lines.join("\n");
      const record: ProblemRecord = {
        type: OperationType.DELETE,
        old_row: delta.start.row,
        old_col: delta.start.column,
        new_row: delta.end.row,
        new_col: delta.end.column,
        content: deletedText,
        timestamp: timestamp
      };
      saveOperation(record);
    }
  });

  // Record cursor movements with debouncing
  const debouncedCursorMove = debounce((fromPos: any, toPos: any, timestamp: number) => {
    // Only record if position actually changed
    if (fromPos.row !== toPos.row || fromPos.column !== toPos.column) {
      const record: ProblemRecord = {
        type: OperationType.CURSOR_MOVE,
        old_row: fromPos.row,
        old_col: fromPos.column,
        new_row: toPos.row,
        new_col: toPos.column,
        content: null,
        timestamp: timestamp
      };
      saveOperation(record);
    }
  }, 300);

  // Track cursor movements
  editor.selection.on("changeCursor", () => {
    const currentPosition = editor.getCursorPosition();
    const timestamp = Date.now() - startTimestamp.value;

    debouncedCursorMove(previousCursorPosition, currentPosition, timestamp);
    previousCursorPosition = { row: currentPosition.row, column: currentPosition.column };
  });

  // Record paste operations
  editor.on("paste", (e: any) => {
    console.log('📋 Paste event triggered:', e);

    // Set paste mode flag to help change detection identify batch operations
    isInPasteMode = true;
    console.log('🚩 Set isInPasteMode to true');

    // Note: We don't record the PASTE operation here anymore because:
    // 1. The actual content will be captured by the change event
    // 2. The change event will mark it as BATCH_INSERT due to isInPasteMode
    // 3. isInPasteMode will be reset immediately in the change event to prevent duplicates
  });

  // Record undo/redo operations
  editor.commands.on("afterExec", (e: any) => {
    const timestamp = Date.now() - startTimestamp.value;
    const position = editor.getCursorPosition();

    if (e.command.name === "undo") {
      const record: ProblemRecord = {
        type: OperationType.UNDO,
        old_row: position.row,
        old_col: position.column,
        new_row: position.row,
        new_col: position.column,
        content: null,
        timestamp: timestamp
      };
      saveOperation(record);
    } else if (e.command.name === "redo") {
      const record: ProblemRecord = {
        type: OperationType.REDO,
        old_row: position.row,
        old_col: position.column,
        new_row: position.row,
        new_col: position.column,
        content: null,
        timestamp: timestamp
      };
      saveOperation(record);
    }
  });
};

const modify = async () => {
  const textarea1 = document.getElementById(
      "auto-expand-textarea_1"
  ) as HTMLTextAreaElement;
  if (textarea1) {
    await adjustHeight(textarea1);
  }
  const textarea2 = document.getElementById(
      "auto-expand-textarea_2"
  ) as HTMLTextAreaElement;
  if (textarea2) {
    await adjustHeight(textarea2);
  }
  const textarea3 = document.getElementById(
      "auto-expand-textarea_3"
  ) as HTMLTextAreaElement;
  if (textarea3) {
    await adjustHeight(textarea3);
  }
};

const judgeTest = async () => {
  let competition_id = ref(parseInt(path.toString().split("/")[2]));
  let problem_index = path.toString().split("/")[4] ?? "";

  isShow_1.value = true;
  isShow_2.value = true;

  code_message.value = "";
  code_time.value = 0;
  correctOutput.value = undefined; // 清除标准答案，避免误导学生

  let temp_language = "";
  if (current_language.value == "C/C++") {
    temp_language = "cpp";
  } else if (current_language.value == "C") {
    temp_language = "c";
  } else if (current_language.value == "Python3") {
    temp_language = "python";
  } else if (current_language.value == "Java") {
    temp_language = "java";
  } else if (current_language.value == "Go") {
    temp_language = "go";
  } else if (current_language.value == "JavaScript"){
    temp_language = "javascript";
  }
  isLoading.value = true;
  if (problem_index == "") {
    const res =
        await ProblemAlgorithmControllerService.problemAlgorithmJudgeUsingPost({
          problem_id: problem_id.value,
          language: temp_language,
          source_code: content.value,
          input_list: [input.value],
        });

    if (res.code === 0) {
      code_status.value = res.data[0].status;
      code_time.value = res.data[0].time;
      if (code_status.value == "Nonzero Exit Status") {
        code_message.value = res.data[0].fileId;
      } else {
        code_message.value = res.data[0].output;
      }
      isLoading.value = false;

      isShow_1.value = false;
      isShow_2.value = false;
    }
  } else {
    const res =
        await ProblemAlgorithmControllerService.problemAlgorithmJudgeUsingPost({
          index: problem_index,
          competition_id: competition_id.value,
          language: temp_language,
          source_code: content.value,
          input_list: [input.value],
        });

    if (res.code === 0) {
      code_status.value = res.data[0].status;
      code_time.value = res.data[0].time;
      if (code_status.value == "Nonzero Exit Status") {
        code_message.value = res.data[0].fileId;
      } else {
        code_message.value = res.data[0].output;
      }
      isLoading.value = false;

      isShow_1.value = false;
      isShow_2.value = false;
    }
  }
};
// ============================================
// 你的前端代码 - 优化版本
// 主要改动：复用 WebSocket 连接，支持快速连续提交
// ============================================

import { Client } from '@stomp/stompjs';  // 使用 Client 类（新 API）
import SockJS from 'sockjs-client';
import { useRoute } from "vue-router";
import { onUnmounted } from 'vue';  // 添加 ref 和 onUnmounted

// ============================================
// WebSocket 全局状态（改为 ref）
// ============================================
const route = useRoute();

const stompClient = ref(null);           // WS 客户端
const isConnected = ref(false);          // 连接状态
const subscriptions = ref(new Map());    // 存储所有订阅
const messageQueue = ref(new Map());     // 消息缓存队列（用于处理订阅前到达的消息）
const MAX_QUEUE_SIZE = 10;               // 每个任务最多缓存10条消息

// ============================================
// 消息缓存管理
// ============================================

/**
 * 缓存消息（如果订阅还未建立）
 */
const cacheMessage = (taskId, message) => {
  if (!subscriptions.value.has(taskId)) {
    // 还未订阅，缓存消息
    if (!messageQueue.value.has(taskId)) {
      messageQueue.value.set(taskId, []);
    }
    const queue = messageQueue.value.get(taskId);
    if (queue.length < MAX_QUEUE_SIZE) {
      queue.push(message);
      console.log(`[消息缓存] 任务 ${taskId} 缓存消息，当前队列: ${queue.length}`);
    }
    return true;  // 已缓存
  }
  return false;  // 已订阅，不需要缓存
};

/**
 * 消费缓存的消息
 */
const consumeCachedMessages = (taskId, onMessage) => {
  const queue = messageQueue.value.get(taskId);
  if (queue && queue.length > 0) {
    console.log(`[消息缓存] 任务 ${taskId} 消费 ${queue.length} 条缓存消息`);
    queue.forEach(message => {
      onMessage(message);
    });
    messageQueue.value.delete(taskId);
  }
};

// ============================================
// WebSocket 连接管理（新增）
// ============================================

/**
 * 初始化 WebSocket 连接（全局只连接一次）
 */
const initWebSocketConnection = () => {
  // 如果已经连接，直接返回
  if (isConnected.value && stompClient.value) {
    console.log('[WebSocket] 已连接，复用现有连接');
    return Promise.resolve();
  }

  // 如果正在连接中，等待连接完成
  if (stompClient.value && !isConnected.value) {
    return new Promise((resolve) => {
      const checkInterval = setInterval(() => {
        if (isConnected.value) {
          clearInterval(checkInterval);
          resolve();
        }
      }, 100);
    });
  }

  console.log('[WebSocket] 开始建立连接...');

  return new Promise((resolve, reject) => {
    try {
      // 动态获取 WebSocket URL（根据当前协议和域名）
      const protocol = window.location.protocol === 'https:' ? 'https:' : 'http:';
      const host = window.location.hostname;
      const port = process.env.NODE_ENV === 'production' ? '' : ':7091';
      const wsUrl = `${protocol}//${host}${port}/api/ws/judge`;
      
      console.log('[WebSocket] 连接地址:', wsUrl);

      const client = new Client({
        // WebSocket 工厂
        webSocketFactory: () => new SockJS(wsUrl),

        // 心跳配置
        heartbeatIncoming: 20000,
        heartbeatOutgoing: 20000,

        // 自动重连
        reconnectDelay: 3000,

        // 调试日志（生产环境可关闭）
        debug: (str) => {
          // console.log('[STOMP]', str);
        },

        // 连接成功
        onConnect: (frame) => {
          console.log('[WebSocket] ✅ 连接成功');
          isConnected.value = true;

          // 🔥 订阅全局主题，缓存所有判题消息（用于处理订阅前到达的消息）
          stompClient.value.subscribe('/topic/judge/*', (message) => {
            try {
              const result = JSON.parse(message.body);
              const taskId = result.taskId;

              // 如果该任务还未订阅，缓存消息
              if (taskId && !subscriptions.value.has(taskId)) {
                cacheMessage(taskId, result);
              }
            } catch (e) {
              // 忽略解析错误
            }
          });

          resolve();
        },

        // STOMP 错误
        onStompError: (frame) => {
          console.error('[WebSocket] ❌ STOMP 错误:', frame);
          isConnected.value = false;
          reject(new Error('STOMP 连接失败'));
        },

        // WebSocket 错误
        onWebSocketError: (event) => {
          console.error('[WebSocket] ❌ 连接错误:', event);
          isConnected.value = false;
          reject(new Error('WebSocket 连接失败'));
        },

        // 断开连接
        onDisconnect: () => {
          console.warn('[WebSocket] ⚠️ 连接已断开');
          isConnected.value = false;
          subscriptions.value.clear();
        }
      });

      // 激活连接
      client.activate();
      stompClient.value = client;

    } catch (error) {
      console.error('[WebSocket] ❌ 初始化失败:', error);
      reject(error);
    }
  });
};

/**
 * 订阅判题结果（新增）
 */
const subscribeJudgeResult = async (taskId, onMessage) => {
  try {
    // 确保 WebSocket 已连接
    await initWebSocketConnection();

    // 避免重复订阅
    if (subscriptions.value.has(taskId)) {
      console.warn(`[WebSocket] 任务 ${taskId} 已订阅`);
      return;
    }

    console.log(`[WebSocket] 📡 订阅任务: ${taskId}`);

    // 先消费缓存的消息（处理订阅前到达的消息）
    consumeCachedMessages(taskId, onMessage);

    // 订阅 topic
    const subscription = stompClient.value.subscribe(
        `/topic/judge/${taskId}`,
        (message) => {
          const result = JSON.parse(message.body);
          console.log('[WebSocket] 📥 收到消息:', result);

          // 调用回调函数
          onMessage(result);
        }
    );

    // 保存订阅
    subscriptions.value.set(taskId, subscription);

  } catch (error) {
    console.error('[WebSocket] ❌ 订阅失败:', error);
    throw error;
  }
};

/**
 * 取消订阅（新增）
 */
const unsubscribeJudgeResult = (taskId) => {
  const subscription = subscriptions.value.get(taskId);
  if (subscription) {
    subscription.unsubscribe();
    subscriptions.value.delete(taskId);
    console.log(`[WebSocket] 🚫 取消订阅: ${taskId}`);
  }
};

// ============================================
// 你原有的 submitJudge 函数（优化版）
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
  } else if (current_language.value == "Go") {
    temp_language = "go";
  } else if (current_language.value == "JavaScript"){
    temp_language = "javascript";
  }

  isLoading.value = true;

  try {
    let res;

    // 提交代码
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

    // 检查提交结果
    if (res.code !== 0) {
      code_message.value = res.message || "提交失败";
      isLoading.value = false;
      return;
    }

    // 获取 taskId
    const taskId = res.data.taskId;
    code_status.value = res.data.status || "Pending";
    code_message.value = "提交成功，等待判题中...";

    console.log('[提交] ✅ 任务ID:', taskId);

    // ✅ 关键改动：订阅判题结果（复用连接）
    await subscribeJudgeResult(taskId, (result) => {
      handleJudgeResult(taskId, result);
    });

  } catch (error) {
    console.error('[提交] ❌ 出错:', error);
    code_message.value = "提交失败: " + (error.message || '未知错误');
  } finally {
    isLoading.value = false;
  }
};

// ============================================
// 处理判题结果（整合你原有的逻辑）
// ============================================

const handleJudgeResult = (taskId, result) => {
  console.log('[判题结果]', result);

  // 更新状态
  code_status.value = result.status;

  // 根据不同状态处理（保留你原有的逻辑）
  if (result.status === "Pending") {
    code_message.value = "任务排队中...";
  }
  else if (result.status === "Running" || result.status === "running") {
    code_message.value = "";  // 不显示输出内容
  }
  else if (result.status === "Retrying") {
    code_message.value = result.message || "判题失败，正在重试...";
  }
  else if (result.status === "Wrong Answer") {
    input.value = result.input || "";
    code_message.value = result.message || result.output || "";
    correctOutput.value = result.correctOutput || "";

    // 判题完成
    finishJudge(taskId);
  }
  else if (result.status === "Nonzero Exit Status") {
    code_message.value = result.message || result.fileId || "";

    finishJudge(taskId);
  }
  else if (result.status === "Accepted" || result.status === "Success") {
    // 播放成功音效
    audioClick.value.volume = 1;
    audioClick.value?.play();
    code_message.value = "";  // 不显示输出内容

    finishJudge(taskId);
  }
  else if (result.status === "Time Limit Exceeded") {
    input.value = result.input || "";
    code_message.value = result.message || result.output || "";
    correctOutput.value = result.correctOutput || "";

    finishJudge(taskId);
  }
  else if (result.status === "Memory Limit Exceeded") {
    input.value = result.input || "";
    code_message.value = result.message || result.output || "";
    correctOutput.value = result.correctOutput || "";

    finishJudge(taskId);
  }
  else if (result.status === "Runtime Error") {
    input.value = result.input || "";
    code_message.value = result.message || result.output || result.fileId || "";

    finishJudge(taskId);
  }
  else if (result.status === "Compile Error") {
    code_message.value = result.message || result.fileId || "";

    finishJudge(taskId);
  }
  else if (result.status === "Failed" || result.status === "failed") {
    code_message.value = result.message || "判题失败";

    finishJudge(taskId);
  }
  else {
    // 其他未知状态，也需要完成判题
    code_message.value = result.message || result.output || "";
    
    finishJudge(taskId);
  }
};

// ============================================
// 判题完成后的处理
// ============================================

const finishJudge = (taskId) => {
  // 调用原有的 modify 函数
  modify();

  // 隐藏 UI
  isShow_1.value = false;
  isShow_2.value = false;

  // 取消订阅（释放资源）
  setTimeout(() => {
    unsubscribeJudgeResult(taskId);
  }, 1000);
};

// ============================================
// 组件生命周期
// ============================================

// 组件卸载时断开连接
onUnmounted(() => {
  console.log('[组件] 卸载，清理 WebSocket');

  // 取消所有订阅
  subscriptions.value.forEach((sub) => {
    sub.unsubscribe();
  });
  subscriptions.value.clear();

  // 断开连接
  if (stompClient.value && isConnected.value) {
    stompClient.value.deactivate();
    isConnected.value = false;
  }
});

// ============================================
// 导出（如果需要在其他地方使用）
// ============================================


const getCurrentSelected = (keyId: string) => {
  let selectDiv: any = document.getElementById(keyId);
  if (keyId === "language") {
    current_language.value = languages_options[selectDiv.selectedIndex];
    localStorage.setItem("current_language", current_language.value)
    content.value =
        localStorage.getItem(
            problem_id.value +
            "-" +
            useStore.loginUser.uuid +
            "-" +
            current_language.value
        ) == null
            ? languages_content[selectDiv.selectedIndex]
            : localStorage.getItem(
                problem_id.value +
                "-" +
                useStore.loginUser.uuid +
                "-" +
                current_language.value
            );
  } else {
    current_theme.value = themes_options[selectDiv.selectedIndex];
    localStorage.setItem(
        "theme-" + useStore.loginUser.uuid,
        current_theme.value
    );
  }
};

const clearContent = () => {
  let selectDiv: any = document.getElementById("language");
  content.value = languages_content[selectDiv.selectedIndex];
  localStorage.removeItem(
      problem_id.value +
      "-" +
      useStore.loginUser.uuid +
      "-" +
      current_language.value
  );
  localStorage.removeItem("fontSize");
  font_size.value = 22;

  // Record clear operation
  const timestamp = Date.now() - startTimestamp.value;
  const record: ProblemRecord = {
    type: OperationType.CLEAR,
    old_row: null,
    old_col: null,
    new_row: null,
    new_col: null,
    content: "Editor cleared",
    timestamp: timestamp
  };
  saveOperation(record);
};

const formatCode = () => {
  if (!content.value || content.value.trim() === '') {
    alert('没有可格式化的代码！');
    return;
  }

  // 只对 C/C++ 代码进行格式化
  if (current_language.value !== 'C' && current_language.value !== 'C++' && current_language.value !== 'C/C++') {
    alert('格式化功能目前仅支持 C/C++ 代码！');
    return;
  }

  try {
    const formattedCode = normalizeIndentation(content.value);
    content.value = formattedCode;

    // 保存格式化后的代码到 localStorage
    localStorage.setItem(
      problem_id.value +
      "-" +
      useStore.loginUser.uuid +
      "-" +
      current_language.value,
      content.value
    );

    console.log('代码格式化成功！');
  } catch (error) {
    console.error('格式化代码失败:', error);
    alert('格式化代码失败，请检查代码语法！');
  }
};

const transformEditor = () => {
  if (isShow.value == null || isShow.value == "0") {
    localStorage.setItem("EditorStatus", "1");
    isShow.value = "1";
    window.location.reload();
  } else {
    localStorage.setItem("EditorStatus", "0");
    localStorage.removeItem("ControlBlock");
    isShow.value = "0";
    window.location.reload();
  }
};

watch(content, (NewValue, OldValue) => {
  localStorage.setItem(
      problem_id.value +
      "-" +
      useStore.loginUser.uuid +
      "-" +
      current_language.value,
      content.value
  );
});

const handleWheel = (event: WheelEvent) => {
  event.preventDefault();
  if (event.ctrlKey) {
    const increment = event.deltaY > 0 ? -1 : 1;
    const newFontSize = font_size.value + increment;
    if (newFontSize >= 7 && newFontSize <= 33) {
      requestAnimationFrame(() => {
        font_size.value = newFontSize;
        document.documentElement.style.setProperty(
            "--font-size",
            `${newFontSize}px`
        );
      });
    }
  } else {
    window.scrollTo(
        document.documentElement.scrollLeft + event.deltaX,
        document.documentElement.scrollTop + event.deltaY
    );
  }
};

const EditorSizeControl = () => {
  if (!flag.value) {
    flag.value = true;
    localStorage.setItem("ControlBlock", "0");
  } else {
    localStorage.removeItem("ControlBlock");
    flag.value = false;
  }
  window.location.reload();
};

const showModal = () => {
  let el: any = document.getElementById("my_modal");
  el?.showModal();
};

const adjustHeight = async (element: HTMLTextAreaElement) => {
  await nextTick();
  setTimeout(() => {
    element.style.height = "auto";
    element.style.height = `${Math.min(element.scrollHeight, 2000)}px`;
  }, 0);
};

const preventInput = (event: KeyboardEvent) => {
  if (event.key.length === 1) {
    event.preventDefault();
  }
};

const triggerEnterEvent = (element: HTMLTextAreaElement) => {
  const event = new KeyboardEvent("keydown", {
    key: "Enter",
    code: "Enter",
    bubbles: true,
  });
  element.dispatchEvent(event);
};

const normalizeIndentation = (code:string) => {
  let result = [];
  let indentLevel = 0;
  let parenLevel = 0;
  let inExpression = false;
  let lastWasInclude = false;
  let i = 0;
  let current = '';

  function pushLine(line) {
    let trimmed = line.trim();
    if (trimmed && trimmed.startsWith('#include')) {
      lastWasInclude = true;
    } else {
      if (lastWasInclude) {
        result.push('');
      }
      lastWasInclude = false;
    }
    result.push(line);
  }

  while (i < code.length) {
    let ch = code.charAt(i);
    if (/\s/.test(ch)) {
      if (ch === '\n') {
        if (current.trim()) {
          let appended = ' '.repeat(indentLevel * 4) + current.trim();
          pushLine(appended);
        }
        current = '';
        i++;
        continue;
      } else {
        current += ' ';
        i++;
        continue;
      }
    }
    // non-space
    current += ch;
    if (ch === '(') {
      parenLevel++;
    }
    if (ch === ')') {
      parenLevel--;
    }
    if (ch === '{') {
      let trimmed = current.trim();
      if (trimmed.endsWith('={')) {
        inExpression = true;
      } else {
        let appended = ' '.repeat(indentLevel * 4) + trimmed;
        pushLine(appended);
        current = '';
        indentLevel++;
      }
      i++;
      continue;
    }
    if (ch === '}') {
      if (inExpression) {
        inExpression = false;
      } else {
        indentLevel--;
        let appended = ' '.repeat(indentLevel * 4) + current.trim();
        pushLine(appended);
        current = '';
      }
      i++;
      continue;
    }
    if (ch === ';') {
      if (parenLevel === 0) {
        let appended = ' '.repeat(indentLevel * 4) + current.trim();
        pushLine(appended);
        current = '';
      }
      // else: keep ; in current for inner expressions
      i++;
      continue;
    }
    i++;
  }
  if (current.trim()) {
    let appended = ' '.repeat(indentLevel * 4) + current.trim();
    pushLine(appended);
  }
  return result.join('\n');
}
onMounted(() => {
  if (route.query.problem_id != null) {
    problem_id.value = route.query.problem_id;
    content.value = localStorage.getItem(
        problem_id.value +
        "-" +
        useStore.loginUser.uuid +
        "-" +
        current_language.value);
  }
  const textarea1 = document.getElementById(
      "auto-expand-textarea_1"
  ) as HTMLTextAreaElement;
  const textarea2 = document.getElementById(
      "auto-expand-textarea_2"
  ) as HTMLTextAreaElement;
  const textarea3 = document.getElementById(
      "auto-expand-textarea_3"
  ) as HTMLTextAreaElement;
  if (textarea1) {
    adjustHeight(textarea1);
  }
  if (textarea2) {
    adjustHeight(textarea2);
    textarea2.addEventListener("keydown", preventInput);
  }
  if (textarea3) {
    adjustHeight(textarea3);
    textarea3.addEventListener("keydown", preventInput);
  }
});

watch(font_size, (NewValue, OldValue) => {
  localStorage.setItem("fontSize", font_size.value.toString());
});

onBeforeUpdate(async () => {
  const textarea1 = document.getElementById(
      "auto-expand-textarea_1"
  ) as HTMLTextAreaElement;
  await adjustHeight(textarea1);
  const textarea2 = document.getElementById(
      "auto-expand-textarea_2"
  ) as HTMLTextAreaElement;
  await adjustHeight(textarea2);
  const textarea3 = document.getElementById(
      "auto-expand-textarea_3"
  ) as HTMLTextAreaElement;
  await adjustHeight(textarea3);
});

const emit = defineEmits(['toggle-bot']);
const showBot = (type: string) => {
  isBot.value = !isBot.value;
  windoww.value = {
    id: 1,
    title: type,
    content: `这是 ${type} 的内容。`,
    position: { x: 100, y: 100 },
    size: { width: 500, height: 200 },
    minimized: true,
  };
  emit('toggle-bot');
};

const isFixed = ref(false);
const windoww = ref<{ id: number; title: string; content: string; position: { x: number; y: number }; size: { width: number; height: number }; minimized: boolean }>({} as any);
const toggleMinimizeWindow = () => {
  windoww.value.minimized = !windoww.value.minimized;
};
const removeWindow = () => {
  isBot.value = !isBot.value;
  emit("toggle-bot");
};

// Recording functionality - simplified UI
</script>

<style scoped>
.vue-ace-editor {
  overflow: auto;
  height: 2150px;
  width: 100%;
  font-size: 40px;
  border: lightgray 1px solid;
  white-space: pre;
  transition: height 0.3s ease;
}

.rebootHover:hover {
  path {
    stroke: #2aabd2;
  }
}

.settingHover:hover {
  path {
    fill: #2aabd2;
  }
}
.bothover:hover{
  path {
    fill: #2aabd2;
  }
}

.exportRecordsHover:hover {
  path {
    fill: #2aabd2;
  }
}

.formatHover:hover {
  path {
    fill: #2aabd2;
  }
}

.reverseEditorHover:hover {
  path {
    fill: #2aabd2;
  }
}

.EditorSizeControl:hover {
  path {
    fill: #2aabd2;
  }
}

.auto-expand-textarea {
  height: auto;
  width: 100%;
  box-sizing: border-box;
  overflow: hidden;
  resize: none;
  border: 1px solid #ddd;
  border-radius: 4px;
  padding: 10px;
  font-size: 16px;
  line-height: 1.5;
  color: #333;
  background-color: #fafafa;
  transition: border-color 0.2s, box-shadow 0.2s;
}
.auto-expand-textarea:focus {
  border-color: #2aabd2;
  box-shadow: 0 0 0 3px rgba(38, 143, 255, 0.25);
  outline: none;
}

/* Submit button hover gif background effect */
.submit-button {
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
  transition: all 0.3s ease;
}

.submit-button:hover {
  background-image: url('/public/C7422125F210F0DEBB2BDE23EB8041DA.gif');
  background-color: rgba(74, 222, 128, 0.8) !important; /* Keep some green tint */
}
</style>
