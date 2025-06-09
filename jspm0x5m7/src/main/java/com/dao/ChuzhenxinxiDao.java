package com.dao;

import com.entity.ChuzhenxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ChuzhenxinxiVO;
import com.entity.view.ChuzhenxinxiView;


/**
 * 出诊信息
 * 
 * @author 
 * @email 
 * @date 2021-02-25 12:06:07
 */
public interface ChuzhenxinxiDao extends BaseMapper<ChuzhenxinxiEntity> {
	
	List<ChuzhenxinxiVO> selectListVO(@Param("ew") Wrapper<ChuzhenxinxiEntity> wrapper);
	
	ChuzhenxinxiVO selectVO(@Param("ew") Wrapper<ChuzhenxinxiEntity> wrapper);
	
	List<ChuzhenxinxiView> selectListView(@Param("ew") Wrapper<ChuzhenxinxiEntity> wrapper);

	List<ChuzhenxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<ChuzhenxinxiEntity> wrapper);
	
	ChuzhenxinxiView selectView(@Param("ew") Wrapper<ChuzhenxinxiEntity> wrapper);
	
}
