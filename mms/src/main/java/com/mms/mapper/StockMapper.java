package com.mms.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.mms.entity.Item;
import com.mms.entity.Stock;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface StockMapper extends BaseMapper<Stock> {

    @Select("select * from sys_stock where item_name like concat('%',#{itemName},'%')")
    IPage<Stock> selectPageFuzzy(IPage<Stock> config, String itemName);
}
