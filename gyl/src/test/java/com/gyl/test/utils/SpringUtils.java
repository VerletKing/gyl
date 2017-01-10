package com.gyl.test.utils;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SpringUtils {
	protected static ApplicationContext context;
	
	static{
		context = new ClassPathXmlApplicationContext("com/gyl/spring/applicationContext.xml");
	}
}
