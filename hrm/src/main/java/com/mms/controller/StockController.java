package com.mms.controller;

import com.mms.dto.ResponseDTO;
import com.mms.entity.Item;
import com.mms.entity.Stock;
import com.mms.service.ItemService;
import com.mms.service.StockService;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("stock")
public class StockController {


    @Resource
    private StockService stockService;

    @ApiOperation("新增")
    @PostMapping
    public ResponseDTO add(@RequestBody Stock stock) {
        return stockService.add(stock);
    }

    @ApiOperation("逻辑删除")
    @DeleteMapping("/{id}")
    public ResponseDTO delete(@PathVariable Integer id) {
        return stockService.deleteById(id);
    }

    @ApiOperation("批量逻辑删除")
    @DeleteMapping("/batch/{ids}")
    public ResponseDTO deleteBatch(@PathVariable List<Integer> ids) {
        return stockService.deleteBatch(ids);
    }

    @ApiOperation("编辑更新")
    @PutMapping
    public ResponseDTO edit(@RequestBody Stock stock) {
        return stockService.edit(stock);
    }


    @ApiOperation("查询")
    @GetMapping("/{id}")
    public ResponseDTO findById(@PathVariable Integer id) {
        return stockService.findById(id);
    }

    @ApiOperation("分页条件查询")
    @GetMapping
    public ResponseDTO listFuzzy(@RequestParam(defaultValue = "1") Integer current, @RequestParam(defaultValue = "10") Integer size, String itemName) {
        return stockService.listFuzzy(current, size, itemName);
    }

    @ApiOperation("数据导出接口")
    @GetMapping("/export")
    public ResponseDTO export(HttpServletResponse response) throws IOException {
        return stockService.export(response);
    }

    @ApiOperation("数据导入接口")
    @PostMapping("/import")
    public ResponseDTO imp(MultipartFile file) throws IOException {
        return stockService.imp(file);
    }
    @ApiOperation("获取所有")
    @GetMapping("/all")
    public ResponseDTO findAll() {
        return stockService.findAll();
    }

}
