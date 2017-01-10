package com.gyl.forward;

import com.opensymphony.xwork2.ActionSupport;

public class ForwardAction extends ActionSupport{

	private static final long serialVersionUID = -734320110256575571L;
	
	private String strMethod;
	
	public String forward(){
		return strMethod;
	}

	public String getStrMethod() {
		return strMethod;
	}

	public void setStrMethod(String strMethod) {
		this.strMethod = strMethod;
	}

}
