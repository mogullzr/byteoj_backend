package com.example.backend.service.Impl.user;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.backend.models.domain.user.UserRating;
import com.example.backend.service.user.UserRatingService;
import com.example.backend.mapper.UserRatingMapper;
import org.springframework.stereotype.Service;

/**
* @author Mogullzr
* @description 针对表【user_rating】的数据库操作Service实现
* @createDate 2025-07-22 15:08:13
*/
@Service
public class UserRatingServiceImpl extends ServiceImpl<UserRatingMapper, UserRating>
    implements UserRatingService{

}




