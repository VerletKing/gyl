package com.gyl.base.action;

import java.lang.reflect.ParameterizedType;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class BaseAction<T> extends ActionSupport implements ModelDriven<T> {

	private static final long serialVersionUID = -8737061001033978450L;
	
	private Class<T> clazz;
	public T t;
	
	@SuppressWarnings("unchecked")
	public BaseAction(){
		ParameterizedType pt =  (ParameterizedType) this.getClass().getGenericSuperclass();
		clazz = (Class<T>) pt.getActualTypeArguments()[0];
		try {
			t = clazz.newInstance();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public T getModel() {
		return t;
	}
	
	/**
	 * 如果删除按钮是button
	 */
	public String strIds;
	
	/**
	 * 如果删除按钮是submit
	 */
	public Integer[] ids;
	
	
	public static final String ADDUI = "addUI";
	public String addUI = ADDUI;
	
	public static final String UPDATEUI = "updateUI";
	public String updateUI = UPDATEUI;
	
	public static final String LISTUI = "listUI";
	public String listUI = LISTUI;
	
	public static final String ACTION2ACTION = "action2Action";
	public String action2Action = ACTION2ACTION;
	
	public HttpSession getSession(){
		return ServletActionContext.getRequest().getSession();
	}

	public void setStrIds(String strIds) {
		this.strIds = strIds;
	}

	public void setIds(Integer[] ids) {
		this.ids = ids;
	}

	public T getT() {
		return t;
	}

	public void setT(T t) {
		this.t = t;
	}
	
	
}
