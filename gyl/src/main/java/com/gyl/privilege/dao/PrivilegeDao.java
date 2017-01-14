package com.gyl.privilege.dao;

import java.util.List;

import com.gyl.base.dao.BaseDao;
import com.gyl.domain.privilege.Privilege;

public interface PrivilegeDao extends BaseDao<Privilege> {
	public List<Privilege> getPrivilegeByRid(Long rid);
}
