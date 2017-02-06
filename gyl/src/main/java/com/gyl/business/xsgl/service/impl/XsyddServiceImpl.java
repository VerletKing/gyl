package com.gyl.business.xsgl.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gyl.base.dao.BaseDao;
import com.gyl.business.base.service.impl.BaseBusinessServiceImpl;
import com.gyl.business.xsgl.dao.XsyddzhibDao;
import com.gyl.business.xsgl.dao.XsyddzhubDao;
import com.gyl.business.xsgl.service.XsyddService;
import com.gyl.domain.business.xsgl.Xsyddzhib;
import com.gyl.domain.business.xsgl.Xsyddzhub;

@Service("xsyddService")
public class XsyddServiceImpl extends BaseBusinessServiceImpl<Xsyddzhub,Xsyddzhib> implements XsyddService{

	@Resource
	private XsyddzhubDao xsyddzhubDao;

	@Resource
	private XsyddzhibDao xsyddzhibDao;
	
	@Override
	public BaseDao<Xsyddzhub> getBaseDao_zhu() {
		return xsyddzhubDao;
	}

	@Override
	public BaseDao<Xsyddzhib> getBaseDao_zhi() {
		return xsyddzhibDao;
	}

}
