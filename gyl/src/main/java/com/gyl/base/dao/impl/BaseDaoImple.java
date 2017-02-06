package com.gyl.base.dao.impl;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.sql.SQLException;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.metadata.ClassMetadata;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.gyl.base.dao.BaseDao;
import com.gyl.query.BaseQuery;
import com.gyl.query.PageResult;
import com.gyl.utils.GylUtils;

public class BaseDaoImple<T> implements BaseDao<T> {
	
	private final Class<T> clazz;
	private ClassMetadata classMetadata;
	
	@SuppressWarnings("unchecked")
	public BaseDaoImple() {
		ParameterizedType pt = (ParameterizedType) this.getClass().getGenericSuperclass();
		clazz = (Class<T>) pt.getActualTypeArguments()[0];
	}
	
	@Resource
	private HibernateTemplate hibernateTemplate;
	
	@PostConstruct
	private void init(){
		classMetadata = hibernateTemplate.getSessionFactory().getClassMetadata(clazz);
	}

	@Override
	public PageResult<T> findPageResult(final BaseQuery baseQuery) {
		Long totalData = this.getCountData(baseQuery);
		final PageResult<T> pageResult = new PageResult<T>(baseQuery.getCurrenPage(),baseQuery.getPageSize(),totalData);
		List<T> item = hibernateTemplate.execute(new HibernateCallback<List<T>>() {
			@SuppressWarnings("unchecked")
			@Override
			public List<T> doInHibernate(Session session) throws HibernateException,SQLException {
				StringBuffer stringBuffer = new StringBuffer();
				stringBuffer.append("from "+ clazz.getSimpleName());
				stringBuffer.append(" where 1=1 ");
				Map<String, Object> map = baseQuery.getMap();
				for (Entry<String, Object> entry : map.entrySet()) {
					if(entry.getKey().contains(".")){
						stringBuffer.append(" and "+entry.getKey()+"=:"+entry.getKey().split("\\.")[1]);
					}else{
						stringBuffer.append(" and "+entry.getKey()+"=:"+entry.getKey());
					}
				}
				Query query = session.createQuery(stringBuffer.toString());
				for (Entry<String,Object> entry : map.entrySet()) {
					if(entry.getKey().contains(".")){
						query.setParameter(entry.getKey().split("\\.")[1],entry.getValue());
					}else{
						query.setParameter(entry.getKey(), entry.getValue());
					}
				}
				query.setFirstResult((pageResult.getCurrenPage()-1)*pageResult.getPageSize());
				query.setMaxResults(pageResult.getPageSize());
				return query.list();
			}
		});
		pageResult.setItem(item);
		return pageResult;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> find() {
		return hibernateTemplate.find("from "+clazz.getSimpleName());
	}

	@Override
	public Long getCountData(final BaseQuery baseQuery) {
		return hibernateTemplate.execute(new HibernateCallback<Long>() {
			@Override
			public Long doInHibernate(Session session) throws HibernateException,SQLException {
				StringBuffer stringBuffer = new StringBuffer();
				stringBuffer.append("select count("+classMetadata.getIdentifierPropertyName()+") from "+clazz.getSimpleName());
				stringBuffer.append(" where 1=1");
				Map<String, Object> map = baseQuery.buildWhere();
				for (Entry<String, Object> entry : map.entrySet()) {
					if(entry.getKey().contains(".")){
						stringBuffer.append(" and "+entry.getKey()+"=:"+entry.getKey().split("\\.")[1]);
					}else{
						stringBuffer.append(" and "+entry.getKey()+"=:"+entry.getKey());
					}
				}
				Query query = session.createQuery(stringBuffer.toString());
				for (Entry<String, Object> entry : map.entrySet()) {
					if(entry.getKey().contains(".")){
						query.setParameter(entry.getKey().split("\\.")[1],entry.getValue());
					}else{
						query.setParameter(entry.getKey(), entry.getValue());
					}
				}
				return (Long) query.uniqueResult();
			}
		});
		
	}

	@Override
	public void update(T entity) {
		hibernateTemplate.update(entity);
	}

	@Override
	public void add(T entity) {
		hibernateTemplate.save(entity);
	}

	@Override
	public Set<T> getEntriesByIds(Serializable[] ids) {
		StringBuffer hql = new StringBuffer();
		hql.append("from "+clazz.getSimpleName());
		hql.append(" where "+classMetadata.getIdentifierPropertyName()+" in(");
		for(int i=0;i<ids.length-1;i++){
			hql.append(ids[i]+",");
		}
		hql.append(ids[ids.length-1]+")");
		@SuppressWarnings("unchecked")
		List<T> list = hibernateTemplate.find(hql.toString());
		return new HashSet<T>(list);
	}

	@Override
	public void deleteByIDs(Serializable[] ids) {
		StringBuffer hql = new StringBuffer();
		hql.append("from "+clazz.getSimpleName());
		hql.append(" where "+classMetadata.getIdentifierPropertyName()+" in(");
		for(int i=0;i<ids.length-1;i++){
			hql.append(ids[i]+",");
		}
		hql.append(ids[ids.length-1]+")");
		@SuppressWarnings("unchecked")
		List<T> list = hibernateTemplate.find(hql.toString());
		hibernateTemplate.deleteAll(list);
	}

	@Override
	public void deleteByID(Serializable id) {
		T entity =  hibernateTemplate.get(clazz, id); 
		hibernateTemplate.delete(entity);
	}

	@Override
	public T getEntryById(Serializable id) {
		return hibernateTemplate.get(clazz, id);
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	@Override
	public String getDDH() {
		List<String> list = this.getHibernateTemplate().find("select max(ddh) from "+clazz.getSimpleName()+" where ddh like '"+GylUtils.getDateToString()+"%'");
		if(list.get(0)==null){
			return GylUtils.getDateToString()+"0001";
		}else{
			return String.valueOf(Long.parseLong(list.get(0))+1);
		}
	}

}
