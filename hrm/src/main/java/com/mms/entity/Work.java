package com.mms.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 
 * @TableName sys_work
 */
@TableName(value ="sys_work")
@Data
public class Work implements Serializable {
    /**
     * 排版id
     */
    @TableId
    private Integer id;

    /**
     * 员工id
     */
    private Integer staffId;

    /**
     * 工作时间
     */
    private Date workDate;

    /**
     * 值班时间 1上午 2下午 3晚上
     */
    private Integer workMsg;

    /**
     * 排班人员工id
     */
    private Integer workStaffId;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}