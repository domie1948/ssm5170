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


import com.dao.DiscusschuzhenxinxiDao;
import com.entity.DiscusschuzhenxinxiEntity;
import com.service.DiscusschuzhenxinxiService;
import com.entity.vo.DiscusschuzhenxinxiVO;
import com.entity.view.DiscusschuzhenxinxiView;

@Service("discusschuzhenxinxiService")
public class DiscusschuzhenxinxiServiceImpl extends ServiceImpl<DiscusschuzhenxinxiDao, DiscusschuzhenxinxiEntity> implements DiscusschuzhenxinxiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscusschuzhenxinxiEntity> page = this.selectPage(
                new Query<DiscusschuzhenxinxiEntity>(params).getPage(),
                new EntityWrapper<DiscusschuzhenxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscusschuzhenxinxiEntity> wrapper) {
		  Page<DiscusschuzhenxinxiView> page =new Query<DiscusschuzhenxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscusschuzhenxinxiVO> selectListVO(Wrapper<DiscusschuzhenxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscusschuzhenxinxiVO selectVO(Wrapper<DiscusschuzhenxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscusschuzhenxinxiView> selectListView(Wrapper<DiscusschuzhenxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscusschuzhenxinxiView selectView(Wrapper<DiscusschuzhenxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
