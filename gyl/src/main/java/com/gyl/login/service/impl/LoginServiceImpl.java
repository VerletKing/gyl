package com.gyl.login.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gyl.domain.baseData.User;
import com.gyl.login.dao.LoginDao;
import com.gyl.login.service.LoginService;

@Service("loginService")
public class LoginServiceImpl implements LoginService{
	@Resource
	private LoginDao loginDao;

	@Override
	public User authentication(String userName, String password) {
		return loginDao.authentication(userName, password);
	}

}
