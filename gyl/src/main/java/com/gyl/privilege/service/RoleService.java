package com.gyl.privilege.service;

import com.gyl.base.service.BaseService;
import com.gyl.domain.privilege.Role;

public interface RoleService extends BaseService<Role>{
	public Role getRoleByName(final String name);
}
