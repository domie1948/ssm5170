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


import com.dao.YuyueshijianduanDao;
import com.entity.YuyueshijianduanEntity;
import com.service.YuyueshijianduanService;
import com.entity.vo.YuyueshijianduanVO;
import com.entity.view.YuyueshijianduanView;

@Service("yuyueshijianduanService")
public class YuyueshijianduanServiceImpl extends ServiceImpl<YuyueshijianduanDao, YuyueshijianduanEntity> implements YuyueshijianduanService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YuyueshijianduanEntity> page = this.selectPage(
                new Query<YuyueshijianduanEntity>(params).getPage(),
                new EntityWrapper<YuyueshijianduanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YuyueshijianduanEntity> wrapper) {
		  Page<YuyueshijianduanView> page =new Query<YuyueshijianduanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<YuyueshijianduanVO> selectListVO(Wrapper<YuyueshijianduanEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YuyueshijianduanVO selectVO(Wrapper<YuyueshijianduanEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YuyueshijianduanView> selectListView(Wrapper<YuyueshijianduanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YuyueshijianduanView selectView(Wrapper<YuyueshijianduanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
