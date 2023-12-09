package com.mms.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.mms.entity.Docs;
import com.mms.vo.StaffDocsVO;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

/**
 * <p>
 * Mapper 接口
 * </p>
 */
public interface DocsMapper extends BaseMapper<Docs> {

    @Select("select sd.*,ss.name staff_name from sys_staff ss left join sys_docs sd on ss.id = sd.staff_id " +
            "where sd.is_deleted = 0 and sd.old_name like concat('%',#{oldName},'%') and ss.name like concat('%',#{staffName},'%')")
    IPage<StaffDocsVO> listStaffDocsVO(IPage<StaffDocsVO> config, @Param("oldName") String oldName, @Param("staffName") String staffName);

}