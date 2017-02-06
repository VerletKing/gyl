package com.gyl.business.base.service.impl;

import java.io.Serializable;

import org.springframework.transaction.annotation.Transactional;

import com.gyl.base.dao.BaseDao;
import com.gyl.business.base.service.BaseBusinessService;
import com.gyl.query.BaseQuery;
import com.gyl.query.PageResult;

public abstract class BaseBusinessServiceImpl<T,E extends Serializable> implements BaseBusinessService<T, E> {

	public abstract BaseDao<T> getBaseDao_zhu();
	public abstract BaseDao<E> getBaseDao_zhi();
	
	@Override
	public PageResult<T> findPageResult_zhu(BaseQuery baseQuery) {
		return this.getBaseDao_zhu().findPageResult(baseQuery);
	}

	@Override
	public PageResult<E> findPageResult_zhi(BaseQuery baseQuery) {
		return this.getBaseDao_zhi().findPageResult(baseQuery);
	}

	@Override
	public String getDDH(){
		return this.getBaseDao_zhu().getDDH();
	}
	
	@Override
	@Transactional
	public void savePageResult_zhu(T t) {
		this.getBaseDao_zhu().add(t);
	}
}
