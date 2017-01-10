package com.gyl.baseData.dao.impl;

import org.springframework.stereotype.Repository;

import com.gyl.base.dao.impl.BaseDaoImple;
import com.gyl.baseData.dao.DepartmentDao;
import com.gyl.domain.baseData.Department;

@Repository("departmentDao")
public class DepartmentDaoImpl extends BaseDaoImple<Department> implements DepartmentDao {

}
