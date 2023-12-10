package com.mms.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mms.dto.Response;
import com.mms.dto.ResponseDTO;
import com.mms.entity.Item;
import com.mms.entity.Stock;
import com.mms.mapper.ItemMapper;
import com.mms.mapper.StockMapper;
import com.mms.util.HutoolExcelUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class StockService extends ServiceImpl<StockMapper, Stock> {
    @Autowired
    private StockMapper stockMapper;

    @Autowired
    private ItemService itemService;

    public ResponseDTO findAll() {
        List<Stock> list = query().list();
        return new ResponseDTO(200,"查询成功",list);
    }

    public ResponseDTO export(HttpServletResponse response) throws IOException {
        List<Stock> list = list();
        HutoolExcelUtil.writeExcel(response, list, "库存情况表", Stock.class);
        return Response.success();
    }

    public ResponseDTO imp(MultipartFile file) throws IOException {
        InputStream inputStream = file.getInputStream();
        List<Stock> list = HutoolExcelUtil.readExcel(inputStream, 1, Stock.class);
        // IService接口中的方法.批量插入数据
        if (saveBatch(list)) {
            return Response.success();
        }
        return Response.error();
    }

    public ResponseDTO listFuzzy(Integer current, Integer size, String itemName) {
        IPage<Stock> config = new Page<>(current, size);
        if (itemName == null) {
            itemName = "";
        }

        IPage<Stock> page = stockMapper.selectPageFuzzy(config, itemName);

        List<Stock> items = page.getRecords();
        Map<String,Object> map = new HashMap<>();
        map.put("pages", page.getPages());
        map.put("total", page.getTotal());
        map.put("list", items);
        return Response.success(map);
    }

    public ResponseDTO findById(Integer id) {
        Stock item = getById(id);
        if (item != null) {
            return Response.success(item);
        }
        return Response.error();
    }

    public ResponseDTO edit(Stock stock) {
        Item item = itemService.getById(stock.getItemId());
        stock.setItemName(item.getItemName());
        stock.setStockSumPrice(stock.getStockPrice().multiply(BigDecimal.valueOf(stock.getItemNums())));
        // 修改item表中的库存数量
        item.setItemNums(item.getItemNums() + stock.getItemNums());
        boolean b = itemService.updateById(item);
        boolean updateById = updateById(stock);
        if (b && updateById ) {
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

    @Transactional(rollbackFor = Exception.class)
    public ResponseDTO add(Stock stock) {
        Item item = itemService.getById(stock.getItemId());
        stock.setItemName(item.getItemName());
        stock.setStockSumPrice(stock.getStockPrice().multiply(BigDecimal.valueOf(stock.getItemNums())));
        // 修改item表中的库存数量
        item.setItemNums(item.getItemNums() + stock.getItemNums());
        boolean b = itemService.updateById(item);
        boolean save = save(stock);
        if (b && save ) {
            return Response.success();
        }
        return Response.error();
    }
}
