package com.gyl.baseData.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gyl.base.dao.BaseDao;
import com.gyl.base.service.impl.BaseServiceImpl;
import com.gyl.baseData.dao.UserDao;
import com.gyl.baseData.service.UserService;
import com.gyl.domain.baseData.User;

@Service("userService")
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {

	@Resource
	private UserDao userDao;
	
	@Override
	public BaseDao<User> getBaseDao() {
		return this.userDao;
	}

}
