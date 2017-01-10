package com.gyl.test.baseData;

import org.junit.Test;

import com.gyl.base.dao.BaseDao;
import com.gyl.query.baseData.DepartmentQuery;
import com.gyl.test.utils.SpringUtils;

public class BaseDaoTest extends SpringUtils{
	
	@Test
	public void test_getCountData(){
		DepartmentQuery departmentQuery = new DepartmentQuery();
		BaseDao dao = (BaseDao) context.getBean("baseDao");
		Long count = dao.getCountData(departmentQuery);
		System.out.println(count);
	}
}
