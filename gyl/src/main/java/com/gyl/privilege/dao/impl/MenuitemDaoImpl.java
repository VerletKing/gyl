package com.gyl.privilege.dao.impl;

import org.springframework.stereotype.Repository;

import com.gyl.base.dao.impl.BaseDaoImple;
import com.gyl.domain.privilege.Menuitem;
import com.gyl.privilege.dao.MenuitemDao;

@Repository("menuitemDao")
public class MenuitemDaoImpl extends BaseDaoImple<Menuitem> implements MenuitemDao{

}
