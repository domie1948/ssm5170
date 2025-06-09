package com.dao;

import com.entity.ShangbandakaEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ShangbandakaVO;
import com.entity.view.ShangbandakaView;


/**
 * 上班打卡
 * 
 * @author 
 * @email 
 * @date 2021-02-25 12:06:07
 */
public interface ShangbandakaDao extends BaseMapper<ShangbandakaEntity> {
	
	List<ShangbandakaVO> selectListVO(@Param("ew") Wrapper<ShangbandakaEntity> wrapper);
	
	ShangbandakaVO selectVO(@Param("ew") Wrapper<ShangbandakaEntity> wrapper);
	
	List<ShangbandakaView> selectListView(@Param("ew") Wrapper<ShangbandakaEntity> wrapper);

	List<ShangbandakaView> selectListView(Pagination page,@Param("ew") Wrapper<ShangbandakaEntity> wrapper);
	
	ShangbandakaView selectView(@Param("ew") Wrapper<ShangbandakaEntity> wrapper);
	
}
