package com.entity.view;

import com.entity.ShangbandakaEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 上班打卡
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-02-25 12:06:07
 */
@TableName("shangbandaka")
public class ShangbandakaView  extends ShangbandakaEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ShangbandakaView(){
	}
 
 	public ShangbandakaView(ShangbandakaEntity shangbandakaEntity){
 	try {
			BeanUtils.copyProperties(this, shangbandakaEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
