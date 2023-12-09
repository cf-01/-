package com.mms.controller;

import com.mms.dto.GetWorkDTO;
import com.mms.dto.ResponseDTO;
import com.mms.entity.Work;
import com.mms.service.WorkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/work")
public class WorkController {

    @Autowired
    private WorkService workService;

    /**
     *  1.排班
     */
    @PostMapping("/addWork")
    public ResponseDTO addWork(@RequestBody Work work) {
        return workService.addWork(work);
    }

    /**
     * 2.查询排班
     */
    @PostMapping("/getWork")
    public ResponseDTO getWork(@RequestBody GetWorkDTO getWorkDTO) {
        return workService.getWork(getWorkDTO);
    }

}
