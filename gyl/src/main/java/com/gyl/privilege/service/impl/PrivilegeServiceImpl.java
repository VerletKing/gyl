package com.gyl.privilege.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
	@Transactional
	public List<Privilege> getPrivilegeByRid(Long rid) {
		return privilegeDao.getPrivilegeByRid(rid);
	}

	@Override
	@Transactional
	public List<Privilege> getPrivilegeByUid(Long uid) {
		return privilegeDao.getPrivilegeByUidAndFlag(uid,Privilege.FALG_PRIVILEGE);
	}

	@Override
	@Transactional
	public List<Privilege> getfunctionByUid(Long uid) {
		return privilegeDao.getPrivilegeByUidAndFlag(uid, Privilege.FALG_FUNCTION);
	}

}
