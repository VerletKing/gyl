package com.gyl.business.xsgl.service.impl;

import java.util.HashSet;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gyl.base.dao.BaseDao;
import com.gyl.business.base.service.impl.BaseBusinessServiceImpl;
import com.gyl.business.xsgl.dao.XsckdzhibDao;
import com.gyl.business.xsgl.dao.XsckdzhubDao;
import com.gyl.business.xsgl.dao.XsddzhibDao;
import com.gyl.business.xsgl.service.XsckdService;
import com.gyl.domain.business.xsgl.Xsckdzhib;
import com.gyl.domain.business.xsgl.Xsckdzhub;
import com.gyl.domain.business.xsgl.Xsddzhib;

@Service("xsckdService")
public class XsckdServiceImpl extends BaseBusinessServiceImpl<Xsckdzhub,Xsckdzhib> implements XsckdService{
	
	@Resource
	private XsckdzhubDao xsckdzhubDao;
	@Resource
	private XsckdzhibDao xsckdzhibDao;
	@Resource
	private XsddzhibDao xsddzhibDao;

	@Override
	public BaseDao<Xsckdzhub> getBaseDao_zhu() {
		return this.xsckdzhubDao;
	}

	@Override
	public BaseDao<Xsckdzhib> getBaseDao_zhi() {
		return this.xsckdzhibDao;
	}

	@Override
	@Transactional
	public void saveXsckd(Xsckdzhub xsckdzhub, List<Xsckdzhib> xsckdzhibs) {
		for (Xsckdzhib xsckdzhib : xsckdzhibs) {
			String ytdjh = xsckdzhib.getYtdjh();
			Long ythh = xsckdzhib.getYthh();
			
			Xsddzhib xsddzhib = xsddzhibDao.getXsddzhibCondition(ytdjh, ythh);
			xsckdzhib.setLjcksl(xsddzhib.getLjcksl()+xsckdzhib.getSfsl());
			xsddzhib.setLjcksl(xsckdzhib.getLjcksl());
			if(xsddzhib.getSl().longValue()==xsckdzhib.getLjcksl().longValue()){
				xsckdzhib.setIsckgb(true);
				xsddzhib.setIsckgb(true);
			}
		}
		xsckdzhub.setXsckdzhibs(new HashSet<Xsckdzhib>(xsckdzhibs));
		xsckdzhubDao.add(xsckdzhub);
	}

}
