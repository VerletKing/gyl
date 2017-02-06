package com.gyl.business.base.service;

import java.io.Serializable;

import com.gyl.query.BaseQuery;
import com.gyl.query.PageResult;

public interface BaseBusinessService<T,E extends Serializable>{
	public PageResult<T> findPageResult_zhu(BaseQuery baseQuery);
	public PageResult<E> findPageResult_zhi(BaseQuery baseQuery);
	
	public String getDDH();
	public void savePageResult_zhu(T t);
}
