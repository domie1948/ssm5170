package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YuyueshijianduanEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YuyueshijianduanVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YuyueshijianduanView;


/**
 * 预约时间段
 *
 * @author 
 * @email 
 * @date 2021-02-25 12:06:07
 */
public interface YuyueshijianduanService extends IService<YuyueshijianduanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YuyueshijianduanVO> selectListVO(Wrapper<YuyueshijianduanEntity> wrapper);
   	
   	YuyueshijianduanVO selectVO(@Param("ew") Wrapper<YuyueshijianduanEntity> wrapper);
   	
   	List<YuyueshijianduanView> selectListView(Wrapper<YuyueshijianduanEntity> wrapper);
   	
   	YuyueshijianduanView selectView(@Param("ew") Wrapper<YuyueshijianduanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YuyueshijianduanEntity> wrapper);
   	
}

