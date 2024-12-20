package com.example.backend.models.request.work;

import com.example.backend.models.work.OrderItem;
import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

@Data
public class GoodsOrdersRequest implements Serializable {
    private static final long serialVersionUID = -8530432314039678101L;
    /**
     * 总价格
     */
    private BigDecimal totalPrice;

    /**
     * order订单列表小项
     */
    private List<OrderItem> orderItems;
}
