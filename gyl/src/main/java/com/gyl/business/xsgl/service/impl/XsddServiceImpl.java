package com.gyl.business.xsgl.service.impl;

import java.beans.PropertyDescriptor;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gyl.base.dao.BaseDao;
import com.gyl.business.base.service.impl.BaseBusinessServiceImpl;
import com.gyl.business.xsgl.dao.XsddzhibDao;
import com.gyl.business.xsgl.dao.XsddzhubDao;
import com.gyl.business.xsgl.service.XsddService;
import com.gyl.constant.ConstantKey;
import com.gyl.domain.business.xsgl.Xsddzhib;
import com.gyl.domain.business.xsgl.Xsddzhub;

@Service("xsddService")
public class XsddServiceImpl extends BaseBusinessServiceImpl<Xsddzhub,Xsddzhib> implements XsddService{
	
	@Resource
	private XsddzhubDao xsddzhubDao;
	@Resource
	private XsddzhibDao xsddzhibDao;

	@Override
	public BaseDao<Xsddzhub> getBaseDao_zhu() {
		return this.xsddzhubDao;
	}

	@Override
	public BaseDao<Xsddzhib> getBaseDao_zhi() {
		return this.xsddzhibDao;
	}

	@Override
	public Object getXsddzhubByDDH(String ddh) {
		Xsddzhub xsddzhub = this.xsddzhubDao.getXsddzhubByDDH(ddh);
		if(xsddzhub!=null && xsddzhub.getState().equals(ConstantKey.XSDDZHUB_STATE_CLOSE)){
			return "1";
		}
		return xsddzhub;
	}

	@Override
	@Transactional
	public void updateXsdd(String filed, String value, String ddh, String hh) throws Exception {
		String[] str = filed.split("_");
		if("zhu".equals(str[1])){
			Xsddzhub xsddzhub = xsddzhubDao.getXsddzhubByDDH(ddh);
			PropertyDescriptor propertyDescriptor = new PropertyDescriptor(str[0], xsddzhub.getClass());
			propertyDescriptor.getWriteMethod().invoke(xsddzhub, value);
		}else{
			Xsddzhib xsddzhib = xsddzhibDao.getXsddzhibCondition(ddh,Long.valueOf(hh));
			PropertyDescriptor propertyDescriptor = new PropertyDescriptor(str[0], xsddzhib.getClass());
			propertyDescriptor.getWriteMethod().invoke(xsddzhib, value);
		}
	}

}
