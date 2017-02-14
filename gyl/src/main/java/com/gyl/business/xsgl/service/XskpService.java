package com.gyl.business.xsgl.service;

import java.util.List;

import com.gyl.business.base.service.BaseBusinessService;
import com.gyl.domain.business.xsgl.Xskpzhib;
import com.gyl.domain.business.xsgl.Xskpzhub;

public interface XskpService extends BaseBusinessService<Xskpzhub,Xskpzhib>{
	public void saveXskp(Xskpzhub xskpzhub, List<Xskpzhib> xskpzhibs);
}
