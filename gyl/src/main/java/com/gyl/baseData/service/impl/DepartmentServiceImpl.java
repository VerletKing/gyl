package com.gyl.baseData.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gyl.base.dao.BaseDao;
import com.gyl.base.service.impl.BaseServiceImpl;
import com.gyl.baseData.dao.DepartmentDao;
import com.gyl.baseData.service.DepartmentService;
import com.gyl.domain.baseData.Department;

@Service("departmentService")
public class DepartmentServiceImpl extends BaseServiceImpl<Department> implements DepartmentService {

	@Resource
	private DepartmentDao departmentDao;
	
	@Override
	public BaseDao<Department> getBaseDao() {
		return departmentDao;
	}

}
