package com.gyl.business.xsgl.service;

import java.util.List;

import com.gyl.business.base.service.BaseBusinessService;
import com.gyl.domain.business.xsgl.Xsckdzhib;
import com.gyl.domain.business.xsgl.Xsckdzhub;

public interface XsckdService extends BaseBusinessService<Xsckdzhub,Xsckdzhib>{
	public void saveXsckd(Xsckdzhub xsckdzhub, List<Xsckdzhib> xsckdzhibs);
}
