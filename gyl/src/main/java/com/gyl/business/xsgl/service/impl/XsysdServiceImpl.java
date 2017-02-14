package com.gyl.business.xsgl.service.impl;

import java.util.HashSet;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gyl.base.dao.BaseDao;
import com.gyl.business.base.service.impl.BaseBusinessServiceImpl;
import com.gyl.business.xsgl.dao.XsddzhibDao;
import com.gyl.business.xsgl.dao.XsddzhubDao;
import com.gyl.business.xsgl.dao.XsysdzhibDao;
import com.gyl.business.xsgl.dao.XsysdzhubDao;
import com.gyl.business.xsgl.service.XsysdService;
import com.gyl.constant.ConstantKey;
import com.gyl.domain.business.xsgl.Xsddzhib;
import com.gyl.domain.business.xsgl.Xsddzhub;
import com.gyl.domain.business.xsgl.Xsysdzhib;
import com.gyl.domain.business.xsgl.Xsysdzhub;

@Service("xsysdService")
public class XsysdServiceImpl extends BaseBusinessServiceImpl<Xsysdzhub,Xsysdzhib> implements XsysdService{
	
	@Resource
	private XsysdzhubDao xsysdzhubDao;
	@Resource
	private XsysdzhibDao xsysdzhibDao;
	@Resource
	private XsddzhibDao xsddzhibDao;
	@Resource
	private XsddzhubDao xsddzhubDao;

	@Override
	public BaseDao<Xsysdzhub> getBaseDao_zhu() {
		return this.xsysdzhubDao;
	}

	@Override
	public BaseDao<Xsysdzhib> getBaseDao_zhi() {
		return this.xsysdzhibDao;
	}
	
	@Override
	@Transactional
	public void saveXsysd(Xsysdzhub xsysdzhub, List<Xsysdzhib> xsysdzhibs) {
		for (Xsysdzhib xsysdzhib : xsysdzhibs) {
			String ytdjh = xsysdzhib.getYtdjh();
			Long ythh = xsysdzhib.getYthh();
			
			Xsddzhib xsddzhib = xsddzhibDao.getXsddzhibCondition(ytdjh, ythh);
			xsysdzhib.setLjyssl(xsysdzhib.getSl()+xsddzhib.getLjyssl());
			xsddzhib.setLjyssl(xsysdzhib.getLjyssl());
			System.out.println(xsddzhib.getSl());
			System.out.println(xsysdzhib.getLjyssl());
			if(xsddzhib.getSl().longValue()==xsysdzhib.getLjyssl().longValue()){
				xsddzhib.setIsskjs(true);
				xsysdzhib.setIsysgb(true);
				xsddzhib.setHstatus(ConstantKey.XSDDZHIB_HH_CLOSE);
				
				List<Xsddzhib> xsddzhibByDDH = xsddzhibDao.getXsddzhibByDDH(ytdjh);
				Boolean flag = true;
				for (Xsddzhib xsddzhib2 : xsddzhibByDDH) {
					if(xsddzhib2.getHstatus().equals(ConstantKey.XSDDZHIB_HH_OPEN)){
						flag = false;
						break;
					}
				}
				if(flag){
					Xsddzhub xsddzhub = this.xsddzhubDao.getXsddzhubByDDH(ytdjh);
					xsddzhub.setState(ConstantKey.XSDDZHUB_STATE_CLOSE);
				}
			}
		}
		xsysdzhub.setXsysdzhibs(new HashSet<Xsysdzhib>(xsysdzhibs));
		this.xsysdzhubDao.add(xsysdzhub);
	}

}
