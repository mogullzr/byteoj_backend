package com.example.backend.controller;

import com.example.backend.common.AccessLimit;
import com.example.backend.common.BaseResponse;
import com.example.backend.common.ResultUtils;
import com.example.backend.models.request.problem.video.VideoUploadRequest;
import com.example.backend.service.algorithm.ProblemAlgorithmService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.IOException;

@RestController
@RequestMapping("/video")
@Slf4j
@Controller
public class VideoController {

    @Resource
    private ProblemAlgorithmService problemAlgorithmService;

    @AccessLimit(seconds = 60, maxCount = 10, needLogin = true)
    @PostMapping("/upload")
    private BaseResponse<Boolean> VideoUpload( @RequestParam("problem_id") Long problemId,
                                               @RequestPart("videoFile") MultipartFile videoFile) throws IOException {
        Boolean result = problemAlgorithmService.videoUpload(problemId, videoFile);
        return ResultUtils.success(result);
   }
}
