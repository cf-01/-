package com.mms.controller;

import com.mms.dto.ResponseDTO;
import com.mms.entity.Item;
import com.mms.entity.StaffLeave;
import com.mms.service.ItemService;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("item")
public class ItemController {

    @Resource
    private ItemService itemService;

    @ApiOperation("新增")
    @PostMapping
    public ResponseDTO add(@RequestBody Item item) {
        return itemService.add(item);
    }

    @ApiOperation("逻辑删除")
    @DeleteMapping("/{id}")
    public ResponseDTO delete(@PathVariable Integer id) {
        return itemService.deleteById(id);
    }

    @ApiOperation("批量逻辑删除")
    @DeleteMapping("/batch/{ids}")
    public ResponseDTO deleteBatch(@PathVariable List<Integer> ids) {
        return itemService.deleteBatch(ids);
    }

    @ApiOperation("编辑更新")
    @PutMapping
    public ResponseDTO edit(@RequestBody Item item) {
        return itemService.edit(item);
    }


    @ApiOperation("查询")
    @GetMapping("/{id}")
    public ResponseDTO findById(@PathVariable Integer id) {
        return itemService.findById(id);
    }

    @ApiOperation("分页条件查询")
    @GetMapping
    public ResponseDTO list(@RequestParam(defaultValue = "1") Integer current, @RequestParam(defaultValue = "10") Integer size, String itemName, String itemWarehouse) {
        return itemService.listFuzzy(current, size, itemName, itemWarehouse);
    }

    @ApiOperation("数据导出接口")
    @GetMapping("/export")
    public ResponseDTO export(HttpServletResponse response) throws IOException {
        return itemService.export(response);
    }

    @ApiOperation("数据导入接口")
    @PostMapping("/import")
    public ResponseDTO imp(MultipartFile file) throws IOException {
        return itemService.imp(file);
    }


    @ApiOperation("获取所有")
    @GetMapping("/all")
    public ResponseDTO findAll() {
        return itemService.findAll();
    }

}
