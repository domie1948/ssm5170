package com.dao;

import com.entity.DiscusschuzhenxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscusschuzhenxinxiVO;
import com.entity.view.DiscusschuzhenxinxiView;


/**
 * 出诊信息评论表
 * 
 * @author 
 * @email 
 * @date 2021-02-25 12:06:07
 */
public interface DiscusschuzhenxinxiDao extends BaseMapper<DiscusschuzhenxinxiEntity> {
	
	List<DiscusschuzhenxinxiVO> selectListVO(@Param("ew") Wrapper<DiscusschuzhenxinxiEntity> wrapper);
	
	DiscusschuzhenxinxiVO selectVO(@Param("ew") Wrapper<DiscusschuzhenxinxiEntity> wrapper);
	
	List<DiscusschuzhenxinxiView> selectListView(@Param("ew") Wrapper<DiscusschuzhenxinxiEntity> wrapper);

	List<DiscusschuzhenxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<DiscusschuzhenxinxiEntity> wrapper);
	
	DiscusschuzhenxinxiView selectView(@Param("ew") Wrapper<DiscusschuzhenxinxiEntity> wrapper);
	
}
