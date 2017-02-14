package com.gyl.business.xsgl.service;

import java.util.List;

import com.gyl.business.base.service.BaseBusinessService;
import com.gyl.domain.business.xsgl.Xsysdzhib;
import com.gyl.domain.business.xsgl.Xsysdzhub;

public interface XsysdService extends BaseBusinessService<Xsysdzhub,Xsysdzhib>{
	public void saveXsysd(Xsysdzhub xsysdzhub, List<Xsysdzhib> xsysdzhibs);
}
