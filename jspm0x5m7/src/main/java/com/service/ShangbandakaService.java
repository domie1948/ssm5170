package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ShangbandakaEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ShangbandakaVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ShangbandakaView;


/**
 * 上班打卡
 *
 * @author 
 * @email 
 * @date 2021-02-25 12:06:07
 */
public interface ShangbandakaService extends IService<ShangbandakaEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ShangbandakaVO> selectListVO(Wrapper<ShangbandakaEntity> wrapper);
   	
   	ShangbandakaVO selectVO(@Param("ew") Wrapper<ShangbandakaEntity> wrapper);
   	
   	List<ShangbandakaView> selectListView(Wrapper<ShangbandakaEntity> wrapper);
   	
   	ShangbandakaView selectView(@Param("ew") Wrapper<ShangbandakaEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ShangbandakaEntity> wrapper);
   	
}

