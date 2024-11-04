package com.example.backend.service.Impl.course;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.common.ErrorCode;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.*;
import com.example.backend.models.domain.algorithm.AcAlgorithmProblem;
import com.example.backend.models.domain.algorithm.probleminfo.ProblemAlgorithmBank;
import com.example.backend.models.domain.course.*;
import com.example.backend.models.request.CourseRequest;
import com.example.backend.models.vo.course.CourseChildProblems;
import com.example.backend.models.vo.course.CourseProblem;
import com.example.backend.models.vo.course.CourseProblemsVo;
import com.example.backend.service.course.CourseService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.*;
import java.util.stream.Collectors;

@Service
@Slf4j
public class CourseServiceImpl extends ServiceImpl<CourseMapper, Course> implements CourseService {
    @Resource
    private CourseMapper courseMapper;

    @Resource
    private CourseProblemsMapper courseProblemsMapper;

    @Resource
    private CourseUserAcProblemMapper courseUserAcProblemMapper;


    @Resource
    private CourseUserAcStatusMapper courseUserAcStatusMapper;
    @Resource
    private CourseProblemsAcNumMapper courseProblemsAcNumMapper;

    @Resource
    private AcAlgorithmProblemMapper acAlgorithmProblemMapper;

    @Resource ProblemAlgorithmBankMapper problemAlgorithmBankMapper;

//    @Resource
//    private CourseUserAcProblemService courseUserAcProblemService;
    @Override
    public List<Course> courseSearchByPageNum(Long PageNum) {
        Page<Course> page = new Page<>(PageNum, 10);
        QueryWrapper<Course> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByDesc("create_time");

        return courseMapper.selectPage(page, queryWrapper).getRecords();
    }

    @Override
    public Course courseSearchByCourseId(Long courseId) {
        QueryWrapper<Course> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("course_id", courseId);

        return courseMapper.selectOne(queryWrapper);
    }

    @Override
    public List<CourseProblemsVo> courseSearchProblemsByCourseId(Long courseId, Long uuid) {
        QueryWrapper<CourseProblems> courseProblemsQueryWrapper = new QueryWrapper<>();
        QueryWrapper<CourseUserAcStatus> courseUserAcStatusQueryWrapper = new QueryWrapper<>();

        courseProblemsQueryWrapper.eq("course_id", courseId);

        List<CourseProblemsVo> courseProblemsVos = new ArrayList<>();
        // 1.专栏最基本信息
        List<CourseProblems> courseProblems = courseProblemsMapper.selectList(courseProblemsQueryWrapper);
        for (CourseProblems courseProblems1:courseProblems) {
            CourseProblemsVo courseProblemsVo = new CourseProblemsVo();

            courseProblemsVo.setProblems_type(courseProblems1.getCourse_problems());
            List<Long> problem_id_list = Collections.singletonList(courseProblems1.getProblem_id_list()).stream().map(Long::parseLong).collect(Collectors.toList());
            List<CourseChildProblems> courseChildProblemsList = new ArrayList<>();
            List<CourseProblem> courseProblemList = new ArrayList<>();
            CourseChildProblems courseChildProblems = new CourseChildProblems();
            courseChildProblems.setProblem_algorithm_type(courseProblems1.getProblem_algorithm_type());

            for (int item = 0; item < problem_id_list.size(); item++) {
                CourseProblem courseChildProblems1 = new CourseProblem();
                Long problem_id = problem_id_list.get(item);

                QueryWrapper<AcAlgorithmProblem> acAlgorithmProblemQueryWrapper = new QueryWrapper<>();
                QueryWrapper<ProblemAlgorithmBank> problemAlgorithmBankQueryWrapper = new QueryWrapper<>();

                acAlgorithmProblemQueryWrapper.eq("user_id", uuid);
                acAlgorithmProblemQueryWrapper.eq("problem_id", problem_id);
                problemAlgorithmBankQueryWrapper.eq("problem_id", problem_id);

                AcAlgorithmProblem acAlgorithmProblem = acAlgorithmProblemMapper.selectOne(acAlgorithmProblemQueryWrapper);
                ProblemAlgorithmBank problemAlgorithmBank = problemAlgorithmBankMapper.selectOne(problemAlgorithmBankQueryWrapper);

                courseChildProblems1.setProblem_id(problem_id);
                courseChildProblems1.setProblem_name(problemAlgorithmBank.getChinese_name());

                if (acAlgorithmProblem == null) {
                    courseChildProblems1.setStatus(0);
                } else {
                    courseChildProblems1.setStatus(acAlgorithmProblem.getStatus());
                }

                // 设置ac_num
                QueryWrapper<CourseProblemsAcNum> courseProblemsAcNumQueryWrapper = new QueryWrapper<>();
                courseProblemsAcNumQueryWrapper.eq("course_id", courseId);
                courseProblemsAcNumQueryWrapper.eq("problem_id", problem_id);

                CourseProblemsAcNum courseProblemsAcNum = courseProblemsAcNumMapper.selectOne(courseProblemsAcNumQueryWrapper);
                if (courseProblemsAcNum == null) {
                    throw new BusinessException(ErrorCode.PARAMS_ERROR, "该课程存在一些问题，请联系管理员898561494@qq.com");
                }
                courseChildProblems1.setAc_num(Long.valueOf(courseProblemsAcNum.getNum()));
                // 插入数据
                courseProblemList.add(courseChildProblems1);
            }
            courseProblemsVos.add(courseProblemsVo);
        }

        return courseProblemsVos;
    }

    @Override
    public boolean courseAdminAdd(CourseRequest courseRequest, boolean isAdmin, String userAccount) {
        if (!isAdmin) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "对不起，你没有操作权限");
        }

        Course course = new Course();
        Long course_id = courseRequest.getCourse_id();
        String course_title = courseRequest.getCourse_title();
        String course_title_description = courseRequest.getCourse_title_description();
        String create_name = courseRequest.getCreate_name();
        String avatar = courseRequest.getAvatar();
        Date start_time = courseRequest.getStart_time();
        Date end_time = courseRequest.getEnd_time();
        Date nowDate = new Date();

        if (StringUtils.isAnyBlank(course_title, course_title_description, create_name, avatar) && !Objects.isNull(course_id)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "你有必填项没有填");
        }

        if (Objects.nonNull(start_time) && nowDate.before(start_time)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "课程开始时间不能早于当前时间");
        }

        if (Objects.nonNull(end_time) && nowDate.after(end_time)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "课程结束时间不能晚于当前时间");
        }

        if (Objects.isNull(start_time) || Objects.isNull(end_time)){
            start_time = null;
            end_time = null;
        }

        // 判重
        QueryWrapper<Course> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("course_id", course_id);
        Course course1 = courseMapper.selectOne(queryWrapper);
        if (course1 == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "课程编号已存在");
        }

        // 插入数据
        course.setCourse_id(course_id);
        course.setCourse_title(course_title);
        course.setCourse_title_description(course_title_description);
        course.setCreate_name(userAccount);
        course.setAvatar(avatar);
        course.setNum(0L);
        course.setStart_time(start_time);
        course.setEnd_time(end_time);

        return courseMapper.insert(course) == 1;
    }


    @Override
    public boolean courseAdminDelete(Long courseId, boolean isAdmin) {
        if (!isAdmin) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "对不起，你没有操作权限");
        }

        // 判断数据库中是否存在该课程
        QueryWrapper<Course> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("course_id",courseId);
        Course course = courseMapper.selectOne(queryWrapper);
        if (course == null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "不存在该课程");
        }

        // 删除关联的所有课程相关信息
        QueryWrapper<Course> courseQueryWrapper = new QueryWrapper<>();
        QueryWrapper<CourseProblems> courseProblemsQueryWrapper = new QueryWrapper<>();
        QueryWrapper<CourseUserAcProblem> courseUserAcProblemQueryWrapper = new QueryWrapper<>();
        QueryWrapper<CourseUserAcStatus> courseUserAcStatusQueryWrapper = new QueryWrapper<>();
        QueryWrapper<CourseProblemsAcNum> courseProblemsAcNumQueryWrapper = new QueryWrapper<>();

        courseQueryWrapper.eq("course_id", courseId);
        courseProblemsQueryWrapper.eq("course_id", courseId);
        courseUserAcProblemQueryWrapper.eq("course_id", courseId);
        courseUserAcStatusQueryWrapper.eq("course_id", courseId);
        courseProblemsAcNumQueryWrapper.eq("course_id", courseId);

        courseProblemsMapper.delete(courseProblemsQueryWrapper);
        courseUserAcStatusMapper.delete(courseUserAcStatusQueryWrapper);
        courseUserAcProblemMapper.delete(courseUserAcProblemQueryWrapper);
        courseProblemsAcNumMapper.delete(courseProblemsAcNumQueryWrapper);
        courseMapper.delete(courseQueryWrapper);

        return true;
    }

    @Override
    public boolean courseAdminProblemSet(CourseRequest courseRequest, boolean isAdmin) {
       if(!isAdmin) {
           throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "对不起，你没有操作权限");
       }

        QueryWrapper<Course> courseQueryWrapper = new QueryWrapper<>();

        Long course_id = courseRequest.getCourse_id();
        if (Objects.isNull(course_id)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "课程ID不允许为空");
        }
        courseQueryWrapper.eq("course_id", course_id);
        Course course = courseMapper.selectOne(courseQueryWrapper);

        if (course ==null) {
            throw new BusinessException(ErrorCode.NOT_FOUND_ERROR, "不存在这样的课程");
        }

        Date nowDate = new Date();
        List<CourseProblemsVo> courseProblemsList = courseRequest.getCourseProblemsList();
        for (CourseProblemsVo courseProblemsVo : courseProblemsList) {
            // 课程专栏信息填充
            CourseProblems courseProblems = new CourseProblems();
            courseProblems.setCourse_problems(courseProblemsVo.getProblems_type());
            courseProblems.setCourse_id(course_id);
            courseProblems.setCreate_time(nowDate);
            courseProblems.setUpdate_time(nowDate);


            String problems_type = courseProblemsVo.getProblems_type();
            Long ac_num = courseProblemsVo.getAc_num();
            Long problem_num = courseProblemsVo.getProblem_num();

            if (StringUtils.isAnyBlank(problems_type) && Objects.isNull(ac_num) && Objects.nonNull(problem_num)) {
                throw new BusinessException(ErrorCode.PARAMS_ERROR, "填写专栏基本信息有误");
            }

            List<CourseChildProblems> courseProblemsList1 = courseProblemsVo.getCourseProblemList();
            for (CourseChildProblems courseChildProblems:courseProblemsList1) {
                String problemAlgorithmType = courseChildProblems.getProblem_algorithm_type();
                if (StringUtils.isAnyBlank(problemAlgorithmType)) {
                  throw new BusinessException(ErrorCode.PARAMS_ERROR, "专栏类别不允许为空");
              }
              courseProblems.setProblem_algorithm_type(problemAlgorithmType);

              List<CourseProblem> courseProblemList = courseChildProblems.getCourseProblemList();
              List<Long> problem_id_list = new ArrayList<>();

              for (CourseProblem courseProblem:courseProblemList) {
                  Long problem_id = courseProblem.getProblem_id();
                  problem_id_list.add(problem_id);
              }
              courseProblems.setProblem_id_list(problem_id_list.toString());
            }

            courseProblemsMapper.insert(courseProblems);
        }
        return true;
    }

    // TODO 这段逻辑有大问题！！！！！！！！！！！！！！！！！！！！！！！！！！！！
    @Override
    public boolean courseAdminUserSet(Long course_id, List<Long> user_list, boolean isAdmin) {
        if (!isAdmin) {
            throw new BusinessException(ErrorCode.NOT_AUTH_ERROR, "对不起，你没有操作权限");
        }
        QueryWrapper<CourseUserAcProblem> courseUserAcProblemMapperQueryWrapper = new QueryWrapper<>();

        for (int i = 0; i < user_list.size(); i++) {
            courseUserAcProblemMapperQueryWrapper.or().eq("uuid", user_list.get(i));
        }

        List<CourseUserAcProblem> courseUserAcProblems = courseUserAcProblemMapper.selectList(courseUserAcProblemMapperQueryWrapper);
        if (courseUserAcProblems != null){
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "请不要重复将用户添加到课程当中");
        }

        // 开始批量插入数据
        courseUserAcProblems = new ArrayList<>();
        for (int i = 0; i < user_list.size(); i++) {
            CourseUserAcProblem courseUserAcProblem = new CourseUserAcProblem();
            courseUserAcProblem.setCourse_id(course_id);
            courseUserAcProblem.setNum(0L);
            courseUserAcProblem.setUuid(user_list.get(i));

            courseUserAcProblems.add(courseUserAcProblem);
        }

//        courseUserAcProblemService.saveBatch(courseUserAcProblems);
        return true;
    }
}
