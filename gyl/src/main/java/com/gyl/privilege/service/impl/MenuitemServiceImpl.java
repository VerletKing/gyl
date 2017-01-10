package com.gyl.privilege.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gyl.base.dao.BaseDao;
import com.gyl.base.service.impl.BaseServiceImpl;
import com.gyl.domain.privilege.Menuitem;
import com.gyl.privilege.dao.MenuitemDao;
import com.gyl.privilege.service.MenuitemService;

@Service("menuitemService")
public class MenuitemServiceImpl extends BaseServiceImpl<Menuitem> implements MenuitemService{

	@Resource
	private MenuitemDao menuitemDao;
	
	@Override
	public BaseDao<Menuitem> getBaseDao() {
		return menuitemDao;
	}

}
