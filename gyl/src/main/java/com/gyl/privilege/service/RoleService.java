package com.gyl.privilege.service;

import java.util.List;

import com.gyl.base.service.BaseService;
import com.gyl.domain.privilege.Role;

public interface RoleService extends BaseService<Role>{
	public Role getRoleByName(final String name);
	public List<Role> getRoleByUid(Long uid);
}
