package com.mms.service;

import cn.hutool.core.date.DateUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mms.dto.Response;
import com.mms.dto.ResponseDTO;
import com.mms.entity.Item;
import com.mms.mapper.ItemMapper;
import com.mms.util.HutoolExcelUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ItemService extends ServiceImpl<ItemMapper,Item> {

    @Autowired
    private ItemMapper itemMapper;

    public ResponseDTO findAll() {
        List<Item> list = query().list();
        return new ResponseDTO(200,"查询成功",list);
    }

    public ResponseDTO export(HttpServletResponse response) throws IOException {
        List<Item> list = list();
        HutoolExcelUtil.writeExcel(response, list, "库存情况表", Item.class);
        return Response.success();
    }

    public ResponseDTO imp(MultipartFile file) throws IOException {
        InputStream inputStream = file.getInputStream();
        List<Item> list = HutoolExcelUtil.readExcel(inputStream, 1, Item.class);
        // IService接口中的方法.批量插入数据
        if (saveBatch(list)) {
            return Response.success();
        }
        return Response.error();
    }

    public ResponseDTO listFuzzy(Integer current, Integer size, String itemName, String itemWarehouse) {
        IPage<Item> config = new Page<>(current, size);
        if (itemName == null) {
            itemName = "";
        }
        if(itemWarehouse == null) {
            itemWarehouse = "";
        }

        IPage<Item> page = itemMapper.selectPageFuzzy(config, itemName, itemWarehouse);

        List<Item> items = page.getRecords();
        Map<String,Object> map = new HashMap<>();
        map.put("pages", page.getPages());
        map.put("total", page.getTotal());
        map.put("list", items);
        return Response.success(map);
    }

    public ResponseDTO findById(Integer id) {
        Item item = getById(id);
        if (item != null) {
            return Response.success(item);
        }
        return Response.error();
    }

    public ResponseDTO edit(Item item) {
        if (updateById(item)) {
            return Response.success();
        }
        return Response.error();
    }

    public ResponseDTO deleteBatch(List<Integer> ids) {
        if (removeBatchByIds(ids)) {
            return Response.success();
        }
        return Response.error();
    }

    public ResponseDTO deleteById(Integer id) {
        if (removeById(id)) {
            return Response.success();
        }
        return Response.error();
    }

    public ResponseDTO add(Item item) {
        if (save(item)) {
            return Response.success();
        }
        return Response.error();
    }
}