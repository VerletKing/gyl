package com.gyl.login.dao;

import com.gyl.domain.baseData.User;

public interface LoginDao {
	public User authentication(String userName, String password);
}
