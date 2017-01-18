package com.gyl.privilege.interceptior;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.ServletActionContext;

import com.gyl.domain.privilege.Privilege;
import com.gyl.privilege.annotation.AnnotationParse;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class PrivilegeInterceptior extends MethodFilterInterceptor{

	private static final long serialVersionUID = 1808224964466575993L;

	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		List<Privilege> functions = (List<Privilege>) ServletActionContext.getRequest().getSession().getAttribute("functions");
		
		//获取访问目标方法的注解的name属性的值
		Class targetClass = invocation.getAction().getClass();
		String methodName = invocation.getProxy().getMethod();
		String accessMethod = AnnotationParse.parse(targetClass, methodName);
		
		//如果目标方法上没有写权限的注解，或者写了权限的注解，但是没有写name属性，放行
		if(StringUtils.isBlank(accessMethod)){
			return invocation.invoke();
		}else{
			for(Privilege privilege : functions){
				if(accessMethod.equals(privilege.getName())){
					return invocation.invoke();
				}
			}
			ActionContext.getContext().getValueStack().push("您没有权限访问");
			return "privilege_error";
		}
	}
}
