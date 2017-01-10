package com.gyl.test.baseData;

import java.util.List;

import org.junit.Test;

import com.gyl.baseData.action.DepartmentAction;
import com.gyl.baseData.dao.DepartmentDao;
import com.gyl.baseData.service.DepartmentService;
import com.gyl.domain.baseData.Department;
import com.gyl.query.baseData.DepartmentQuery;
import com.gyl.test.utils.SpringUtils;

public class DepartmentDaoTest extends SpringUtils{
	@Test
	public void test_getCountData(){
		DepartmentDao dao = (DepartmentDao) context.getBean("departmentDao");
		DepartmentQuery departmentQuery = new DepartmentQuery();
		System.out.println(dao.getCountData(departmentQuery));
	}
	
	@Test
	public void test_findPageResult(){
		DepartmentDao dao = (DepartmentDao) context.getBean("departmentDao");
		DepartmentQuery departmentQuery = new DepartmentQuery();
		List<Department> list = dao.findPageResult(departmentQuery).getItem();
		for (Department department : list) {
			System.out.println(department);
		}
	}
	
	@Test
	public void test_save(){
		DepartmentService service = (DepartmentService) context.getBean("departmentService");
		Department department = new Department();
		department.setName("销售部");
		department.setDescription("杠杠的");
		service.add(department);
	}
	
	@Test
	public void test_DepartmentAction(){
		DepartmentAction departmentAction = (DepartmentAction) context.getBean("departmentAction");
	}
}
