package com.mms.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.mms.entity.Item;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface ItemMapper extends BaseMapper<Item> {

    @Select("select * from sys_item where item_name like concat('%',#{itemName},'%') and item_warehouse like concat('%',#{itemWarehouse},'%')")
    IPage<Item> selectPageFuzzy(IPage<Item> config, @Param("itemName") String itemName,@Param("itemWarehouse") String itemWarehouse);

}
