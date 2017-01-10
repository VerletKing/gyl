package com.gyl.query;

import java.util.HashMap;
import java.util.Map;

public abstract class BaseQuery {
	
	//当前页
	private Integer currenPage = 1;
	//页大小
	private Integer pageSize = PageResult.INITPAGESIZE;

	public Map<String,Object> map = new HashMap<String, Object>();
	
	public abstract Map<String,Object> buildWhere();

	public Map<String, Object> getMap() {
		return map;
	}

	public void setMap(Map<String, Object> map) {
		this.map = map;
	}

	public Integer getCurrenPage() {
		return currenPage;
	}

	public void setCurrenPage(Integer currenPage) {
		this.currenPage = currenPage;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	
}
