package com.gyl.privilege.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gyl.base.dao.BaseDao;
import com.gyl.base.service.impl.BaseServiceImpl;
import com.gyl.domain.privilege.Role;
import com.gyl.privilege.dao.RoleDao;
import com.gyl.privilege.service.RoleService;

@Service("roleService")
public class RoleServiceImpl extends BaseServiceImpl<Role> implements RoleService{

	@Resource
	private RoleDao roleDao;
	
	@Override
	public BaseDao<Role> getBaseDao() {
		return roleDao;
	}

	@Override
	public Role getRoleByName(String name) {
		return roleDao.getRoleByName(name);
	}

	@Override
	public List<Role> getRoleByUid(Long uid) {
		return roleDao.getRoleByUid(uid);
	}

	
}
