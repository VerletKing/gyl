package com.gyl.base.dao;

import java.io.Serializable;
import java.util.List;
import java.util.Set;

import com.gyl.query.BaseQuery;
import com.gyl.query.PageResult;

public interface BaseDao<T> {
	/**
	 * 根据条件分页查询
	 */
	public PageResult<T> findPageResult(final BaseQuery baseQuery);
	
	/**
	 * 查询全部
	 */
	public List<T> find();
	
	/**
	 * 查询总数据条数
	 */
	public Long getCountData(final BaseQuery baseQuery);
	
	/**
	 * 修改
	 */
	public void update(T entity);
	
	/**
	 * 添加
	 */
	public void add(T entity);
	
	/**
	 * 根据ids提取很多条数据
	 */
	public Set<T> getEntriesByIds(Serializable[] ids);
	
	/**
	 * 根据id提取很一条数据
	 */
	public T getEntryById(Serializable id);

	/**
	 * 根据id删除多个
	 */
	public void deleteByIDs(Serializable[] ids);
	
	/**
	 * 根据id删除一个
	 */
	public void deleteByID(Serializable id);
}
