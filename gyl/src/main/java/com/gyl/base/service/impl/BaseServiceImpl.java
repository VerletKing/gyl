package com.gyl.base.service.impl;

import java.io.Serializable;
import java.util.List;
import java.util.Set;

import org.springframework.transaction.annotation.Transactional;

import com.gyl.base.dao.BaseDao;
import com.gyl.base.service.BaseService;
import com.gyl.query.BaseQuery;
import com.gyl.query.PageResult;

public abstract class BaseServiceImpl<T> implements BaseService<T> {
	
	public abstract BaseDao<T> getBaseDao();

	@Override
	public PageResult<T> findPageResult(BaseQuery baseQuery) {
		return getBaseDao().findPageResult(baseQuery);
	}

	@Override
	public List<T> find() {
		return getBaseDao().find();
	}

	@Override
	@Transactional
	public void update(T entity) {
		getBaseDao().update(entity);
	}

	@Override
	@Transactional
	public void add(T entity) {
		getBaseDao().add(entity);
	}

	@Override
	public Set<T> getEntriesByIds(Serializable[] ids) {
		return getBaseDao().getEntriesByIds(ids);
	}

	@Override
	public T getEntryById(Serializable id) {
		return getBaseDao().getEntryById(id);
	}

	@Override
	@Transactional
	public void deleteByIDs(Serializable[] ids) {
		getBaseDao().deleteByIDs(ids);
	}

	@Override
	@Transactional
	public void deleteByID(Serializable id) {
		getBaseDao().deleteByID(id);
	}

}
