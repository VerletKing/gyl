package com.gyl.business.xsgl.service.impl;

import java.util.HashSet;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gyl.base.dao.BaseDao;
import com.gyl.business.base.service.impl.BaseBusinessServiceImpl;
import com.gyl.business.xsgl.dao.XsddzhibDao;
import com.gyl.business.xsgl.dao.XsfhdzhibDao;
import com.gyl.business.xsgl.dao.XsfhdzhubDao;
import com.gyl.business.xsgl.service.XsfhdService;
import com.gyl.domain.business.xsgl.Xsddzhib;
import com.gyl.domain.business.xsgl.Xsfhdzhib;
import com.gyl.domain.business.xsgl.Xsfhdzhub;

@Service("xsfhdService")
public class XsfhdServiceImpl extends BaseBusinessServiceImpl<Xsfhdzhub,Xsfhdzhib> implements XsfhdService{
	
	@Resource
	private XsfhdzhubDao xsfhdzhubDao;
	@Resource
	private XsfhdzhibDao xsfhdzhibDao;
	@Resource
	private XsddzhibDao xsddzhibDao;

	@Override
	public BaseDao<Xsfhdzhub> getBaseDao_zhu() {
		return this.xsfhdzhubDao;
	}

	@Override
	public BaseDao<Xsfhdzhib> getBaseDao_zhi() {
		return this.xsfhdzhibDao;
	}

	@Override
	@Transactional
	public void saveXsfhd(Xsfhdzhub xsfhdzhub, List<Xsfhdzhib> xsfhdzhibs) {
		for(Xsfhdzhib xsfhdzhib : xsfhdzhibs){
			String ytdjh = xsfhdzhib.getYtdjh();
			Long ythh = xsfhdzhib.getYthh();
			
			Xsddzhib xsddzhib = xsddzhibDao.getXsddzhibCondition(ytdjh, ythh);
			xsfhdzhib.setLjfhsl(xsddzhib.getLjfhsl()+xsfhdzhib.getSfsl());
			xsddzhib.setLjfhsl(xsfhdzhib.getLjfhsl());
			
			Long sl = xsddzhib.getSl();
			if(sl.longValue()==xsfhdzhib.getLjfhsl().longValue()){
				xsfhdzhib.setIsfhgb(true);
				xsddzhib.setIsfhgb(true);
			}
			
			xsfhdzhub.setXsfhdzhibs(new HashSet<Xsfhdzhib>(xsfhdzhibs));
			xsfhdzhubDao.add(xsfhdzhub);
		}
	}
}
