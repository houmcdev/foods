package com.entity.view;

import com.baomidou.mybatisplus.annotations.TableName;
import com.entity.PeisongdanEntity;
import org.apache.commons.beanutils.BeanUtils;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;


/**
 * 配送单
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-03-26 17:40:36
 */
@TableName("peisongdan")
public class PeisongdanView  extends PeisongdanEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public PeisongdanView(){
	}
 
 	public PeisongdanView(PeisongdanEntity peisongdanEntity){
 	try {
			BeanUtils.copyProperties(this, peisongdanEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
