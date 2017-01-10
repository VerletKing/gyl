package com.gyl.privilege.action;

import java.util.List;

import javax.annotation.Resource;
import javax.management.relation.RoleResult;

import org.springframework.beans.BeanUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.gyl.base.action.BaseAction;
import com.gyl.constant.ConstantKey;
import com.gyl.domain.privilege.Role;
import com.gyl.privilege.service.RoleService;
import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class RoleAction extends BaseAction<Role>{

	private static final long serialVersionUID = -932375882342497563L;
	
	@Resource
	private RoleService roleService;
	
	public String showRoleTree(){
		List<Role> list =  roleService.find();
		ActionContext.getContext().getValueStack().push(list);
		return SUCCESS;
	}
	
	public String addRole(){
		Role role = new Role();
		BeanUtils.copyProperties(this.getModel(),role);
		roleService.add(role);
		ActionContext.getContext().getValueStack().push(role);
		return SUCCESS;
	}
	
	public String isRole(){
		Role role = roleService.getRoleByName(this.getModel().getName());
		String flag = ConstantKey.ROLE_NAME_FLAG_DISABLE;
		if(role==null){
			flag = ConstantKey.ROLE_NAME_FLAG_ABLE;
		}
		ActionContext.getContext().getValueStack().push(flag);
		return SUCCESS;
	}
	
	public String deleteRole(){
		roleService.deleteByID(this.getModel().getRid());
		return SUCCESS;
	}
	
	public String updateRole(){
		Role role = roleService.getEntryById(this.getModel().getRid());
		role.setName(this.getModel().getName());
		roleService.update(role);
		return SUCCESS;
	}
}
