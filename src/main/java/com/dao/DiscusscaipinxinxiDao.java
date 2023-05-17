package com.dao;

import com.entity.DiscusscaipinxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;

import java.util.HashMap;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscusscaipinxinxiVO;
import com.entity.view.DiscusscaipinxinxiView;


/**
 * 菜品信息评价表
 * 
 * @author 
 * @email 
 * @date 2023-03-25 14:13:13
 */
public interface DiscusscaipinxinxiDao extends BaseMapper<DiscusscaipinxinxiEntity> {
	
	List<DiscusscaipinxinxiVO> selectListVO(@Param("ew") Wrapper<DiscusscaipinxinxiEntity> wrapper);
	
	DiscusscaipinxinxiVO selectVO(@Param("ew") Wrapper<DiscusscaipinxinxiEntity> wrapper);
	
	List<DiscusscaipinxinxiView> selectListView(@Param("ew") Wrapper<DiscusscaipinxinxiEntity> wrapper);

	List<DiscusscaipinxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<DiscusscaipinxinxiEntity> wrapper);
	
	DiscusscaipinxinxiView selectView(@Param("ew") Wrapper<DiscusscaipinxinxiEntity> wrapper);

	List<HashMap<String,String>> selectList1(@Param("ew") Wrapper<DiscusscaipinxinxiEntity> wrapper);


	HashMap selectById1(Long id);
}
