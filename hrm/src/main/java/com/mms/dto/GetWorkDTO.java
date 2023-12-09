package com.mms.dto;

import lombok.Data;

import java.util.Date;

@Data
public class GetWorkDTO {

    /**
     * 当前用户id
     */
    private Integer staffId;

    /**
     * 年份
     */
    private String year;
    /**
     * 月份
     */
    private String month;


}
