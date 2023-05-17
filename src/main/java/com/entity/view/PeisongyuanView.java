package com.entity.view;

import com.baomidou.mybatisplus.annotations.TableName;
import com.entity.PeisongyuanEntity;
import org.apache.commons.beanutils.BeanUtils;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;


/**
 * 配送员
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-03-26 17:40:36
 */
@TableName("peisongyuan")
public class PeisongyuanView  extends PeisongyuanEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public PeisongyuanView(){
	}
 
 	public PeisongyuanView(PeisongyuanEntity peisongyuanEntity){
 	try {
			BeanUtils.copyProperties(this, peisongyuanEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
