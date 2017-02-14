package com.gyl.business.xsgl.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.gyl.base.dao.impl.BaseDaoImple;
import com.gyl.business.xsgl.dao.XsddzhubDao;
import com.gyl.domain.business.xsgl.Xsddzhub;

@Repository("xsddzhubDao")
public class XsddzhubDaoImpl extends BaseDaoImple<Xsddzhub> implements XsddzhubDao{

	@Override
	public Xsddzhub getXsddzhubByDDH(String ytdjh) {
		List<Xsddzhub> list =  this.getHibernateTemplate().find("from Xsddzhub where ddh = ?",ytdjh);
		if(list.size()>0){
			return list.get(0);
		}
		return null;
	}
}
