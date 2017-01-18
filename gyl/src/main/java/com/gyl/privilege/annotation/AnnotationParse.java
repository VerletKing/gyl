package com.gyl.privilege.annotation;

import java.lang.reflect.Method;

public class AnnotationParse {
	public static String parse(Class targetClass, String methodName) throws Exception{
		String accessMethod = null;
		Method method = targetClass.getMethod(methodName);
		
		if(method.isAnnotationPresent(PrivilegeInfo.class)){
			PrivilegeInfo privilegeInfo = method.getAnnotation(PrivilegeInfo.class);
			accessMethod = privilegeInfo.name();
		}
		return accessMethod;
	}
}
