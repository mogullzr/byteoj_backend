package com.example.backend.models.request.problem.video;

import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

import java.io.Serializable;

@Data
public class VideoUploadRequest implements Serializable {
    private static final long serialVersionUID = -6527084723850237361L;

    /**
     * 试题ID
     */
    private Long problem_id;

    /**
     * 视频资源
     */
    private MultipartFile videoFile;
}
