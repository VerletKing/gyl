package com.gyl.business.xsgl.dao;

import com.gyl.base.dao.BaseDao;
import com.gyl.domain.business.xsgl.Xsddzhub;

public interface XsddzhubDao extends BaseDao<Xsddzhub>{
	public Xsddzhub getXsddzhubByDDH(String ytdjh);
}
