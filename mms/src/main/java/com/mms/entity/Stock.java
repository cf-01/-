package com.mms.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;

@Data
@TableName("sys_stock")
public class Stock {
    @TableId
    private Integer id;
    private Integer itemId;
    private Integer itemNums;
    private Date stockDate;
    private String itemName;
    private BigDecimal stockPrice;
    private BigDecimal stockSumPrice;
}
