package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.entity.PeisongdanEntity;
import com.entity.view.PeisongdanView;
import com.entity.vo.PeisongdanVO;
import com.utils.PageUtils;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;


/**
 * 配送单
 *
 * @author 
 * @email 
 * @date 2022-03-26 17:40:36
 */
public interface PeisongdanService extends IService<PeisongdanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<PeisongdanVO> selectListVO(Wrapper<PeisongdanEntity> wrapper);
   	
   	PeisongdanVO selectVO(@Param("ew") Wrapper<PeisongdanEntity> wrapper);
   	
   	List<PeisongdanView> selectListView(Wrapper<PeisongdanEntity> wrapper);
   	
   	PeisongdanView selectView(@Param("ew") Wrapper<PeisongdanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<PeisongdanEntity> wrapper);
   	

}

