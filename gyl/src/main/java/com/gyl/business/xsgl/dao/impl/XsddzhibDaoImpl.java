package com.gyl.business.xsgl.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.gyl.base.dao.impl.BaseDaoImple;
import com.gyl.business.xsgl.dao.XsddzhibDao;
import com.gyl.domain.business.xsgl.Xsddzhib;

@Repository("xsddzhibDao")
public class XsddzhibDaoImpl extends BaseDaoImple<Xsddzhib> implements XsddzhibDao{

	@Override
	public Xsddzhib getXsddzhibCondition(String ytdjh, Long ythh) {
		return (Xsddzhib) this.getHibernateTemplate().find("from Xsddzhib where xsddzhub.ddh = ? and hh = ?",ytdjh,ythh).get(0);
	}

	@Override
	public List<Xsddzhib> getXsddzhibByDDH(String ytdjh) {
		return this.getHibernateTemplate().find("from Xsddzhib where xsddzhub.ddh = ?",ytdjh);
	}
}
