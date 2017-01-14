package com.gyl.privilege.dao;

import java.util.List;

import com.gyl.base.dao.BaseDao;
import com.gyl.domain.privilege.Role;

public interface RoleDao extends BaseDao<Role> {
	public Role getRoleByName(final String name);
	public List<Role> getRoleByUid(Long uid);
}
