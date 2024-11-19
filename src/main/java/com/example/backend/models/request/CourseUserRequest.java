package com.example.backend.models.request;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class CourseUserRequest implements Serializable {
    private static final long serialVersionUID = 1526978569192587925L;
    /**
     * 课程ID
     */
    private Long course_id;

    /**
     * 用户ID列表
     */
    private List<Long> user_list;
}
