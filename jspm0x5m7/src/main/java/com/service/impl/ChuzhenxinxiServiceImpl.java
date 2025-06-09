package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.ChuzhenxinxiDao;
import com.entity.ChuzhenxinxiEntity;
import com.service.ChuzhenxinxiService;
import com.entity.vo.ChuzhenxinxiVO;
import com.entity.view.ChuzhenxinxiView;

@Service("chuzhenxinxiService")
public class ChuzhenxinxiServiceImpl extends ServiceImpl<ChuzhenxinxiDao, ChuzhenxinxiEntity> implements ChuzhenxinxiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ChuzhenxinxiEntity> page = this.selectPage(
                new Query<ChuzhenxinxiEntity>(params).getPage(),
                new EntityWrapper<ChuzhenxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ChuzhenxinxiEntity> wrapper) {
		  Page<ChuzhenxinxiView> page =new Query<ChuzhenxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ChuzhenxinxiVO> selectListVO(Wrapper<ChuzhenxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ChuzhenxinxiVO selectVO(Wrapper<ChuzhenxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ChuzhenxinxiView> selectListView(Wrapper<ChuzhenxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ChuzhenxinxiView selectView(Wrapper<ChuzhenxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
