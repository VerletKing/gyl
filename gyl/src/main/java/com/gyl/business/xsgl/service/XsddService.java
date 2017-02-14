package com.gyl.business.xsgl.service;

import com.gyl.business.base.service.BaseBusinessService;
import com.gyl.domain.business.xsgl.Xsddzhib;
import com.gyl.domain.business.xsgl.Xsddzhub;

public interface XsddService extends BaseBusinessService<Xsddzhub,Xsddzhib>{
	public Object getXsddzhubByDDH(String ddh);
	public void updateXsdd(String filed, String value, String ddh, String hh) throws Exception;
}
