package com.gyl.business.xsgl.dao;

import java.util.List;

import com.gyl.base.dao.BaseDao;
import com.gyl.domain.business.xsgl.Xsddzhib;

public interface XsddzhibDao extends BaseDao<Xsddzhib>{
	public Xsddzhib getXsddzhibCondition(String ytdjh, Long ythh);
	public List<Xsddzhib> getXsddzhibByDDH(String ytdjh);
}
