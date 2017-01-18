package com.gyl.login.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.gyl.domain.baseData.User;
import com.gyl.login.dao.LoginDao;

@Repository("loginDao")
public class LoginDaoImpl implements LoginDao{
	@Resource
	private HibernateTemplate hibernateTemplate;

	@Override
	public User authentication(String userName, String password) {
		List<User> list = hibernateTemplate.find("from User where userName = ? and password = ?",userName,password);
		if(list.size()==0){
			return null;
		}else{
			return list.get(0);
		}
	}
	
	
}
