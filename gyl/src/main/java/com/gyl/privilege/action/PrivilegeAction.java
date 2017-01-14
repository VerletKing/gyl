package com.gyl.privilege.action;

import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.gyl.base.action.BaseAction;
import com.gyl.domain.privilege.Privilege;
import com.gyl.domain.privilege.Role;
import com.gyl.privilege.service.PrivilegeService;
import com.gyl.privilege.service.RoleService;
import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class PrivilegeAction extends BaseAction<Privilege>{

	private static final long serialVersionUID = 5561125906923817132L;
	
	@Resource
	private PrivilegeService privilegeService;
	@Resource
	private RoleService roleService;
	
	private Long rid;
	private String checkedStr;
	
	public String showPrivilegeTree(){
		List<Privilege> list =  privilegeService.getPrivilegeByRid(rid);
		ActionContext.getContext().getValueStack().push(list);
		try {
			Thread.sleep(500L);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	public String savePrivilege(){
		Role role = roleService.getEntryById(rid);
		Set<Privilege> privileges = privilegeService.getEntriesByIds(checkedStr.split(","));
		role.setPrivileges(privileges);
		roleService.update(role);
		ActionContext.getContext().getValueStack().push("success");
		return SUCCESS;
	}

	public void setCheckedStr(String checkedStr) {
		this.checkedStr = checkedStr;
	}

	public void setRid(Long rid) {
		this.rid = rid;
	}

	public Long getRid() {
		return rid;
	}

	public String getCheckedStr() {
		return checkedStr;
	}

}
