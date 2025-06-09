package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ChuzhenxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ChuzhenxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ChuzhenxinxiView;


/**
 * 出诊信息
 *
 * @author 
 * @email 
 * @date 2021-02-25 12:06:07
 */
public interface ChuzhenxinxiService extends IService<ChuzhenxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ChuzhenxinxiVO> selectListVO(Wrapper<ChuzhenxinxiEntity> wrapper);
   	
   	ChuzhenxinxiVO selectVO(@Param("ew") Wrapper<ChuzhenxinxiEntity> wrapper);
   	
   	List<ChuzhenxinxiView> selectListView(Wrapper<ChuzhenxinxiEntity> wrapper);
   	
   	ChuzhenxinxiView selectView(@Param("ew") Wrapper<ChuzhenxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ChuzhenxinxiEntity> wrapper);
   	
}

