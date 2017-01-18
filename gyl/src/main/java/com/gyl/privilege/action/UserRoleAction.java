package com.gyl.privilege.action;

import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.gyl.base.action.BaseAction;
import com.gyl.baseData.service.UserService;
import com.gyl.domain.baseData.User;
import com.gyl.domain.privilege.Role;
import com.gyl.privilege.service.RoleService;
import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class UserRoleAction extends BaseAction<User>{

	private static final long serialVersionUID = -4080754356392429060L;
	
	@Resource
	private UserService userService;
	@Resource
	private RoleService roleService;
	
	private String checkedStr; 
	
	public String showUser(){
		List<User> list = userService.find();
		ActionContext.getContext().getContextMap().put("users", list);
		return listUI;
	}
	
	public String showRoleTree(){
		List<Role> roles = roleService.getRoleByUid(getModel().getUid());
		ActionContext.getContext().getValueStack().push(roles);
		return SUCCESS;
	}
	
	public String saveRole(){
		User user = userService.getEntryById(getModel().getUid());
		Set<Role> roles = null;
		if(StringUtils.isNotBlank(checkedStr)){
			roles = roleService.getEntriesByIds(checkedStr.split(","));
		}
		user.setRoles(roles);
		userService.update(user);
		ActionContext.getContext().getValueStack().push("success");
		return SUCCESS;
	}

	public String getCheckedStr() {
		return checkedStr;
	}

	public void setCheckedStr(String checkedStr) {
		this.checkedStr = checkedStr;
	}
	
}
