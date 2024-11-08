package com.example.backend.service.Impl.course;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.mapper.CourseUserAcProblemMapper;
import com.example.backend.models.domain.course.CourseUserAcProblem;
import com.example.backend.service.course.CourseUserAcProblemService;
import org.springframework.stereotype.Service;

@Service
public class CourseUserAcProblemServiceImpl extends ServiceImpl<CourseUserAcProblemMapper, CourseUserAcProblem> implements CourseUserAcProblemService {
}
