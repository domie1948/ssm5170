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


import com.dao.ShangbandakaDao;
import com.entity.ShangbandakaEntity;
import com.service.ShangbandakaService;
import com.entity.vo.ShangbandakaVO;
import com.entity.view.ShangbandakaView;

@Service("shangbandakaService")
public class ShangbandakaServiceImpl extends ServiceImpl<ShangbandakaDao, ShangbandakaEntity> implements ShangbandakaService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ShangbandakaEntity> page = this.selectPage(
                new Query<ShangbandakaEntity>(params).getPage(),
                new EntityWrapper<ShangbandakaEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ShangbandakaEntity> wrapper) {
		  Page<ShangbandakaView> page =new Query<ShangbandakaView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ShangbandakaVO> selectListVO(Wrapper<ShangbandakaEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ShangbandakaVO selectVO(Wrapper<ShangbandakaEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ShangbandakaView> selectListView(Wrapper<ShangbandakaEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ShangbandakaView selectView(Wrapper<ShangbandakaEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
