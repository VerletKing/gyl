package com.gyl.privilege.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.gyl.base.dao.impl.BaseDaoImple;
import com.gyl.domain.privilege.Privilege;
import com.gyl.privilege.dao.PrivilegeDao;

@Repository("privilegeDao")
public class PrivilegeDaoImpl extends BaseDaoImple<Privilege> implements PrivilegeDao{

	@Override
	public List<Privilege> getPrivilegeByRid(Long rid) {
		List<Privilege> allPrivilege = this.find();
		List<Privilege> privileges = getHibernateTemplate().find("from Privilege p inner join fetch p.roles r where r.rid=?",rid);
		for(Privilege privilege_b : privileges){
			for(Privilege privilege_a : allPrivilege){
				if(privilege_a.getId().longValue()==privilege_b.getId().longValue()){
					privilege_a.setChecked(true);
					break;
				}
			}
		}
		return allPrivilege;
	}

}
