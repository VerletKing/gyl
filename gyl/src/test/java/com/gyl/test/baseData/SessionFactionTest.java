package com.gyl.test.baseData;

import org.junit.Test;

import com.gyl.test.utils.SpringUtils;

public class SessionFactionTest extends SpringUtils{
	@Test
	public void testSessionFaction(){
		context.getBean("sessionFactory");
	}
}
