package com.gyl.business.xsgl.service.impl;

import java.util.HashSet;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gyl.base.dao.BaseDao;
import com.gyl.business.base.service.impl.BaseBusinessServiceImpl;
import com.gyl.business.xsgl.dao.XsddzhibDao;
import com.gyl.business.xsgl.dao.XskpzhibDao;
import com.gyl.business.xsgl.dao.XskpzhubDao;
import com.gyl.business.xsgl.service.XskpService;
import com.gyl.domain.business.xsgl.Xsddzhib;
import com.gyl.domain.business.xsgl.Xskpzhib;
import com.gyl.domain.business.xsgl.Xskpzhub;

@Service("xskpService")
public class XskpServiceImpl extends BaseBusinessServiceImpl<Xskpzhub,Xskpzhib> implements XskpService{

	@Resource
	private XskpzhubDao xskpzhubDao;
	@Resource
	private XskpzhibDao xskpzhiDao;
	@Resource
	private XsddzhibDao xsddzhibDao;
	
	@Override
	public BaseDao<Xskpzhub> getBaseDao_zhu() {
		return this.xskpzhubDao;
	}
	
	@Override
	public BaseDao<Xskpzhib> getBaseDao_zhi() {
		return this.xskpzhiDao;
	}
	
	@Override
	@Transactional
	public void saveXskp(Xskpzhub xskpzhub, List<Xskpzhib> xskpzhibs) {
		Float totalMoney = 0.0F;
		for (Xskpzhib xskpzhib : xskpzhibs) {
			String ytdjh = xskpzhib.getYtdjh();
			Long ythh = xskpzhib.getYthh();
			
			Xsddzhib xsddzhib = xsddzhibDao.getXsddzhibCondition(ytdjh, ythh);
			xskpzhib.setLjkpsl(xskpzhib.getSl()+xsddzhib.getLjkpsl());
			xsddzhib.setLjkpsl(xskpzhib.getLjkpsl());
			
			if(xskpzhib.getLjkpsl().longValue()==xsddzhib.getSl().longValue()){
				xskpzhib.setIskpjs(true);
				xsddzhib.setIskpgb(true);
			}
			
			totalMoney += xskpzhib.getHsje();
		}
		
		xskpzhub.setFpzje(totalMoney);
		xskpzhub.setXskpzhibs(new HashSet<Xskpzhib>(xskpzhibs));
		xskpzhubDao.add(xskpzhub);
	}
}
