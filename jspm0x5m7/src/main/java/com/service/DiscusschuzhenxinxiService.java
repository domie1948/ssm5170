package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscusschuzhenxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscusschuzhenxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscusschuzhenxinxiView;


/**
 * 出诊信息评论表
 *
 * @author 
 * @email 
 * @date 2021-02-25 12:06:07
 */
public interface DiscusschuzhenxinxiService extends IService<DiscusschuzhenxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscusschuzhenxinxiVO> selectListVO(Wrapper<DiscusschuzhenxinxiEntity> wrapper);
   	
   	DiscusschuzhenxinxiVO selectVO(@Param("ew") Wrapper<DiscusschuzhenxinxiEntity> wrapper);
   	
   	List<DiscusschuzhenxinxiView> selectListView(Wrapper<DiscusschuzhenxinxiEntity> wrapper);
   	
   	DiscusschuzhenxinxiView selectView(@Param("ew") Wrapper<DiscusschuzhenxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscusschuzhenxinxiEntity> wrapper);
   	
}

