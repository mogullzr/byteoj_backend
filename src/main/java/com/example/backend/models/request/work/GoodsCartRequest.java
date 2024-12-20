package com.example.backend.models.request.work;

import lombok.Data;

import java.io.Serializable;

@Data
public class GoodsCartRequest implements Serializable {
    private static final long serialVersionUID = 5238273673910760487L;

    /**
     * 商品ID
     */
    private Integer goods_id;

    /**
     * 商品数量
     */
    private Integer quantity;
}
