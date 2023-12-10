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

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;


@Service
public class WorkService extends ServiceImpl<WorkMapper, Work> {
    public ResponseDTO addWork(Work work){
        Date parse;
        ResponseDTO responseDTO = new ResponseDTO();
        try {
            // 将work的日期转换为年月日
            Date workDate = work.getWorkDate();
            // 将日期转换为年月日
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            String format = simpleDateFormat.format(workDate);
            // 将字符串转换为日期
            format = format + " 00:00:00";
            parse = simpleDateFormat.parse(format);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
        // 判断workDate和staffId是否已经在数据库存在
        Work work1 = query().eq("work_date", work.getWorkDate()).eq("staff_id", work.getStaffId()).one();
        // 如果存在，就修改
        if (work1 != null){
            work1.setWorkMsg(work.getWorkMsg());
            work1.setWorkStaffId(work.getWorkStaffId());
            boolean b = updateById(work1);
            if (b){
                responseDTO.setCode(200);
                responseDTO.setMessage("修改成功");
            }else {
                responseDTO.setCode(500);
                responseDTO.setMessage("修改失败");
            }
            return responseDTO;
        }else {
            // 如果不存在，就添加
            boolean save = save(work);
            if (save){
                responseDTO.setCode(200);
                responseDTO.setMessage("添加成功");
            }else {
                responseDTO.setCode(500);
                responseDTO.setMessage("添加失败");
            }
            return responseDTO;
        }
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

    public ResponseDTO deleteWork(Integer id) {
        boolean b = removeById(id);
        if (b){
            return new ResponseDTO(200,"删除成功");
        }else {
            return new ResponseDTO(500,"删除失败");
        }
    }
}




