package com.example.backend.controller;

import com.alibaba.nacos.shaded.org.checkerframework.checker.units.qual.C;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.backend.common.AccessLimit;
import com.example.backend.common.BaseResponse;
import com.example.backend.common.ErrorCode;
import com.example.backend.common.ResultUtils;
import com.example.backend.exception.BusinessException;
import com.example.backend.mapper.UserMapper;
import com.example.backend.models.domain.user.User;
import com.example.backend.models.request.work.GoodSearchRequest;
import com.example.backend.models.request.work.GoodsCartRequest;
import com.example.backend.models.request.work.GoodsOrdersRequest;
import com.example.backend.models.work.Banner;
import com.example.backend.models.work.Cart;
import com.example.backend.models.work.Goods;
import com.example.backend.models.work.Orders;
import com.example.backend.service.user.UserService;
import com.example.backend.service.work.GoodsService;
import generator.mapper.*;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/goods")
@Controller
@Slf4j
public class GoodsController {
    @Resource
    private GoodsMapper goodsMapper;

    @Resource
    private BannerMapper bannerMapper;

    @Resource
    private CartMapper cartMapper;

    @Resource
    private OrderItemMapper orderItemMapper;

    @Resource
    private OrdersMapper ordersMapper;

    @Resource
    private UserMapper userMapper;

    @Resource
    private GoodsService goodsService;

    @Resource
    private UserService userService;

    @PostMapping("/goods/search")
    @AccessLimit(seconds = 1, maxCount = 10, needLogin = true)
    private BaseResponse<List<Goods>> GoodsSearchByPageNum(Integer pageNum, HttpServletRequest httpServletRequest) {
        List<Goods> result = goodsService.goodsSearchByPageNum(pageNum);
        return ResultUtils.success(result);
    }

    @GetMapping("/banner/get")
    @AccessLimit(seconds = 1, maxCount = 10, needLogin = true)
    private BaseResponse<List<Banner>> BannerSearch(HttpServletRequest httpServletRequest) {
        List<Banner> result = goodsService.bannerSearch();
        return ResultUtils.success(result);
    }

    @PostMapping("/goods/search/keyword")
    @AccessLimit(seconds = 1,maxCount = 10, needLogin = true)
    private BaseResponse<List<Goods>> GoodsSearchByKeyword(@RequestBody GoodSearchRequest goodSearchRequest, HttpServletRequest httpServletRequest) {
        List<Goods> result = goodsService.goodsSearchByKeyWord(goodSearchRequest);
        return ResultUtils.success(result);
    }

    @GetMapping("/goods/findById")
    @AccessLimit(seconds = 1, maxCount = 10, needLogin = true)
    private BaseResponse<Goods> GoodsGetById(Long id) {
        Goods goods = goodsService.goodsGetById(id);
        return ResultUtils.success(goods);
    }

    @GetMapping("/goods/findCategoryList")
    @AccessLimit(seconds = 1, maxCount = 10, needLogin = true)
    private BaseResponse<List<String>> GoodsGetCategoryList(HttpServletRequest httpServletRequest) {
        List<String> result = goodsService.goodsGetCartegoryList();
        return ResultUtils.success(result);
    }

    @GetMapping("/goods/findByCategory")
    @AccessLimit(seconds = 1, maxCount = 10, needLogin = true)
    private BaseResponse<List<Goods>> GoodsFindByCategory(String category, HttpServletRequest httpServletRequest) {
        List<Goods> result = goodsService.goodsFindByCategory(category);
        return ResultUtils.success(result);
    }
    @GetMapping("/cart/findCartCountById")
    @AccessLimit(seconds = 1, maxCount = 10, needLogin = true)
    private BaseResponse<Long> GoodsGetCartCountById(HttpServletRequest httpServletRequest) {
        User loginUser =  userService.getLoginUser(httpServletRequest);
        Long uuid = loginUser.getUuid();
        Long result = goodsService.goodsGetCartCountById(uuid);
        return ResultUtils.success(result);
    }

    @PostMapping("/cart/addCart")
    @AccessLimit(seconds = 1, maxCount = 10, needLogin = true)
    private BaseResponse<Boolean> userAddCart(@RequestBody GoodsCartRequest goodsCartRequest, HttpServletRequest httpServletRequest) {
        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = loginUser.getUuid();

        boolean result = goodsService.userAddCart(goodsCartRequest, uuid);
        return ResultUtils.success(result);
    }

    @PostMapping("/cart/get")
    @AccessLimit(seconds = 1, maxCount = 10, needLogin = true)
    private BaseResponse<List<Goods>> CartsUserGet(HttpServletRequest httpServletRequest) {
        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = loginUser.getUuid();
        QueryWrapper<Cart> cartQueryWrapper = new QueryWrapper<>();
        cartQueryWrapper.eq("user_id", uuid);
        List<Cart> carts = cartMapper.selectList(cartQueryWrapper);
        List<Goods> goodsList = new ArrayList<>();

        carts.forEach((cart)->{
            QueryWrapper<Goods> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("goods_id", cart.getGoods_id());

            Goods goods = goodsMapper.selectOne(queryWrapper);
            goods.setStock(cart.getQuantity());

            goodsList.add(goods);
        });
        return ResultUtils.success(goodsList);
    }

    @PostMapping("/order/addOrder")
    @AccessLimit(seconds = 1, maxCount = 10, needLogin = true)
    private BaseResponse<Boolean> UserAddOrder(@RequestBody GoodsOrdersRequest goodsOrdersRequest, HttpServletRequest httpServletRequest) {
        User loginUser = userService.getLoginUser(httpServletRequest);
        Long uuid = loginUser.getUuid();

        boolean result = goodsService.userAddOrder(goodsOrdersRequest, uuid);
        return ResultUtils.success(result);
    }


}
