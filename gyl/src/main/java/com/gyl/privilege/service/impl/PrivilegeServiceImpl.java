package com.gyl.privilege.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gyl.base.dao.BaseDao;
import com.gyl.base.service.impl.BaseServiceImpl;
import com.gyl.domain.privilege.Privilege;
import com.gyl.privilege.dao.PrivilegeDao;
import com.gyl.privilege.service.PrivilegeService;

@Service("privilegeService")
public class PrivilegeServiceImpl extends BaseServiceImpl<Privilege> implements PrivilegeService{

	@Resource
	private PrivilegeDao privilegeDao;

	@Override
	public BaseDao<Privilege> getBaseDao() {
		return privilegeDao;
	}

	@Override
	public List<Privilege> getPrivilegeByRid(Long rid) {
		return privilegeDao.getPrivilegeByRid(rid);
	}


}
