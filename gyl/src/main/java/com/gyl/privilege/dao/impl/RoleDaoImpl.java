package com.gyl.privilege.dao.impl;

import java.sql.SQLException;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.stereotype.Repository;

import com.gyl.base.dao.impl.BaseDaoImple;
import com.gyl.domain.privilege.Role;
import com.gyl.privilege.dao.RoleDao;

@Repository("roleDao")
public class RoleDaoImpl extends BaseDaoImple<Role> implements RoleDao{

	@Override
	public Role getRoleByName(final String name){
		return hibernateTemplate.execute(new HibernateCallback<Role>(){

			@Override
			public Role doInHibernate(Session session) throws HibernateException, SQLException {
				Query query = session.createQuery("from Role where name=:name");
				query.setParameter("name", name);
				return (Role)query.uniqueResult();
			}
			
		});
		
	}

}
