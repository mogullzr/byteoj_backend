# -*- coding: utf-8 -*-
import os

controller_path = r"d:/Project/Backend/backend/src/main/java/com/example/backend/controller/ProblemAlgorithmController.java"

with open(controller_path, 'r', encoding='utf-8') as f:
    content = f.read()

# 1. 添加 Service 注入
old_text = "    @Autowired\n    private SimpMessagingTemplate messagingTemplate;  // WebSocket 推送\n\n    // 🔥 使用固定线程池"
new_text = "    @Autowired\n    private SimpMessagingTemplate messagingTemplate;  // WebSocket 推送\n\n    @Autowired\n    private SimilarityClusterService similarityClusterService;\n\n    // 🔥 使用固定线程池"

content = content.replace(old_text, new_text)

# 2. 添加两个新接口
old_text2 = "    @AccessLimit(seconds = 3, maxCount = 20, needLogin = true)\n    @PostMapping(\"/set/daily\")"
new_text2 = """    /**
     * 查询某题目的抄袭团伙(分页,每次一个团伙)
     */
    @AccessLimit(seconds = 5, maxCount = 20, needLogin = true)
    @GetMapping("/similarity/clusters")
    public BaseResponse<Page<ClusterVo>> getClustersByProblem(
            @RequestParam Long competitionId,
            @RequestParam(required = false) String problemIndex,
            @RequestParam(defaultValue = "1") Integer currentPage,
            @RequestParam(defaultValue = "1") Integer pageSize) {
        Page<ClusterVo> result = similarityClusterService.getClustersByProblem(
                competitionId, problemIndex, currentPage, pageSize);
        return ResultUtils.success(result);
    }

    /**
     * 查询某用户的抄袭关系网
     */
    @AccessLimit(seconds = 5, maxCount = 20, needLogin = true)
    @GetMapping("/similarity/clusters/user")
    public BaseResponse<Page<ClusterVo>> getClustersByUser(
            @RequestParam Long competitionId,
            @RequestParam Long userUuid,
            @RequestParam(defaultValue = "1") Integer currentPage,
            @RequestParam(defaultValue = "10") Integer pageSize) {
        Page<ClusterVo> result = similarityClusterService.getClustersByUser(
                competitionId, userUuid, currentPage, pageSize);
        return ResultUtils.success(result);
    }

    @AccessLimit(seconds = 3, maxCount = 20, needLogin = true)
    @PostMapping("/set/daily")"""

content = content.replace(old_text2, new_text2)

with open(controller_path, 'w', encoding='utf-8') as f:
    f.write(content)

print("✅ Controller 更新成功!")
