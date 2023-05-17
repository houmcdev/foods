package com.dao;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.entity.PeisongdanEntity;
import com.entity.view.PeisongdanView;
import com.entity.vo.PeisongdanVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;


/**
 * 配送单
 * 
 * @author 
 * @email 
 * @date 2022-03-26 17:40:36
 */
public interface PeisongdanDao extends BaseMapper<PeisongdanEntity> {
	
	List<PeisongdanVO> selectListVO(@Param("ew") Wrapper<PeisongdanEntity> wrapper);
	
	PeisongdanVO selectVO(@Param("ew") Wrapper<PeisongdanEntity> wrapper);
	
	List<PeisongdanView> selectListView(@Param("ew") Wrapper<PeisongdanEntity> wrapper);

	List<PeisongdanView> selectListView(Pagination page,@Param("ew") Wrapper<PeisongdanEntity> wrapper);
	
	PeisongdanView selectView(@Param("ew") Wrapper<PeisongdanEntity> wrapper);
	

}
