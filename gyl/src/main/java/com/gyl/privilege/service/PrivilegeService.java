package com.gyl.privilege.service;

import java.util.List;

import com.gyl.base.service.BaseService;
import com.gyl.domain.privilege.Privilege;

public interface PrivilegeService extends BaseService<Privilege>{
	public List<Privilege> getPrivilegeByRid(Long rid);
}
