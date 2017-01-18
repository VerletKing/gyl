package com.gyl.login.service;

import com.gyl.domain.baseData.User;

public interface LoginService {
	public User authentication(String userName, String password);
}
