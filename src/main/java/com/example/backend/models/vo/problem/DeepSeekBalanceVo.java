package com.example.backend.models.vo.problem;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

/** Account balance returned by the official DeepSeek balance endpoint. */
@Data
public class DeepSeekBalanceVo implements Serializable {
    private static final long serialVersionUID = 1L;

    @JsonProperty("is_available")
    private Boolean available;

    @JsonProperty("balance_infos")
    private List<BalanceInfo> balanceInfos;

    @Data
    public static class BalanceInfo implements Serializable {
        private String currency;
        private String total_balance;
        private String granted_balance;
        private String topped_up_balance;
    }
}
