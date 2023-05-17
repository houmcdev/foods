package com.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.dao.PeisongdanDao;
import com.entity.PeisongdanEntity;
import com.entity.view.PeisongdanView;
import com.entity.vo.PeisongdanVO;
import com.service.PeisongdanService;
import com.utils.PageUtils;
import com.utils.Query;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("peisongdanService")
public class PeisongdanServiceImpl extends ServiceImpl<PeisongdanDao, PeisongdanEntity> implements PeisongdanService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<PeisongdanEntity> page = this.selectPage(
                new Query<PeisongdanEntity>(params).getPage(),
                new EntityWrapper<PeisongdanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<PeisongdanEntity> wrapper) {
		  Page<PeisongdanView> page =new Query<PeisongdanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<PeisongdanVO> selectListVO(Wrapper<PeisongdanEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public PeisongdanVO selectVO(Wrapper<PeisongdanEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<PeisongdanView> selectListView(Wrapper<PeisongdanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public PeisongdanView selectView(Wrapper<PeisongdanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
