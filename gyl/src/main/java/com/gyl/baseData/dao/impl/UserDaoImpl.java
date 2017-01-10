package com.gyl.baseData.dao.impl;

import org.springframework.stereotype.Repository;

import com.gyl.base.dao.impl.BaseDaoImple;
import com.gyl.baseData.dao.UserDao;
import com.gyl.domain.baseData.User;

@Repository("userDao")
public class UserDaoImpl extends BaseDaoImple<User> implements UserDao {

}
