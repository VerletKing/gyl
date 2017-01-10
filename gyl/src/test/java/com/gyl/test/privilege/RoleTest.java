package com.gyl.test.privilege;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.gyl.domain.privilege.Role;
import com.gyl.privilege.service.RoleService;

public class RoleTest {
	@Test
	public void testAddRoleRoot(){
		ApplicationContext context = new ClassPathXmlApplicationContext("com/gyl/spring/applicationContext.xml");
		RoleService roleService = (RoleService) context.getBean("roleService");
		Role role = new Role();
		role.setName("CEO");
		role.setIsParent(true);
		role.setPid(0L);
		roleService.add(role);
	}

}
