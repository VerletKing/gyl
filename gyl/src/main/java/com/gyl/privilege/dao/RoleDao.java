package com.gyl.privilege.dao;

import com.gyl.base.dao.BaseDao;
import com.gyl.domain.privilege.Role;

public interface RoleDao extends BaseDao<Role> {
	public Role getRoleByName(final String name);
}
