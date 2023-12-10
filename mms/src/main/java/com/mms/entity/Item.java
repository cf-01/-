package com.mms.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.math.BigDecimal;

@Data
@TableName("sys_item")
public class Item {
    @TableId
    private Integer id;
    private String itemName;
    private String itemImg;
    private Integer itemNums;
    private BigDecimal itemPrice;
    private String itemWarehouse;
}
