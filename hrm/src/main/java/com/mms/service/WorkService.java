package com.mms.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mms.dto.GetWorkDTO;
import com.mms.dto.ResponseDTO;
import com.mms.entity.Work;
import com.mms.mapper.WorkMapper;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class WorkService extends ServiceImpl<WorkMapper, Work> {
    @Autowired
    private WorkMapper workMapper;

    public ResponseDTO addWork(Work work) {
        return null;
    }

    public ResponseDTO getWork(GetWorkDTO getWorkDTO) {
        ResponseDTO responseDTO = new ResponseDTO();
        // 1.校验参数
        if (StringUtils.isBlank(getWorkDTO.getMonth())|| StringUtils.isBlank(getWorkDTO.getYear())){
            responseDTO.setCode(500);
            responseDTO.setMessage("日期不能为空");
            return responseDTO;
        }
        if (ObjectUtils.isEmpty(getWorkDTO.getStaffId())){
            responseDTO.setCode(500);
            responseDTO.setMessage("员工id不能为空");
            return responseDTO;
        }
        // 2.查询排班
        // 2.1.根据员工id、年、月查询排班
        // 拼接日期
        String date = getWorkDTO.getYear() + "-" + getWorkDTO.getMonth();
        List<Work> list = query().eq("staff_id", getWorkDTO.getStaffId()).like("work_date", date).list();
        // 3.返回结果
        responseDTO.setCode(200);
        responseDTO.setMessage("查询成功");
        responseDTO.setData(list);
        return responseDTO;
    }
}




