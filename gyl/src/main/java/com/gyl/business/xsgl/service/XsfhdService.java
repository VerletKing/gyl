package com.gyl.business.xsgl.service;

import java.util.List;

import com.gyl.business.base.service.BaseBusinessService;
import com.gyl.domain.business.xsgl.Xsfhdzhib;
import com.gyl.domain.business.xsgl.Xsfhdzhub;

public interface XsfhdService extends BaseBusinessService<Xsfhdzhub,Xsfhdzhib>{
	public void saveXsfhd(Xsfhdzhub xsfhdzhub, List<Xsfhdzhib> xsfhdzhibs);
}
