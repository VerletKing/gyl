package com.gyl.baseData.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.BeanUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.gyl.base.action.BaseAction;
import com.gyl.baseData.service.DepartmentService;
import com.gyl.baseData.service.UserService;
import com.gyl.domain.baseData.Department;
import com.gyl.domain.baseData.User;
import com.gyl.query.PageResult;
import com.gyl.query.baseData.UserQuery;
import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class UserAction extends BaseAction<User>{

	private static final long serialVersionUID = -7922817034079327616L;
	
	@Resource
	private UserService userService;
	@Resource
	private DepartmentService departmentService;
	
	private Long did;
	private UserQuery baseQuery = new UserQuery();

	public String showPageResult(){
		PageResult<User> pageResult = userService.findPageResult(baseQuery);
		ActionContext.getContext().getContextMap().put("users", pageResult);
		return listUI;
	}
	
	public String addUI(){
		List<Department> departments = departmentService.find();
		ActionContext.getContext().getContextMap().put("departments", departments);
		return addUI;
	}
	
	public String add(){
		Department department = departmentService.getEntryById(getDid());
		User user = new User();
		BeanUtils.copyProperties(getModel(), user);
		user.setDepartment(department);
		userService.add(user);
		return action2Action;
	}
	
	public String deleteIds(){
		if(strIds!=null){
			String[] ids = strIds.split(",");
			userService.deleteByIDs(ids);
		}else if(ids!=null){
			userService.deleteByIDs(ids);
		}
		return action2Action;
	}
	
	public String updateUI(){
		List<Department> departments = departmentService.find();
		ActionContext.getContext().getContextMap().put("departments", departments);
		
		User user = userService.getEntryById(getModel().getUid());
		ActionContext.getContext().getValueStack().push(user);
		
		this.did = user.getDepartment().getDid();
		return updateUI;
	}

	public String update(){
		User user = userService.getEntryById(getModel().getUid());
		String password = user.getPassword();
		BeanUtils.copyProperties(getModel(), user);
		user.setPassword(password);
		Department department = departmentService.getEntryById(did);
		user.setDepartment(department);
		userService.update(user);
		return action2Action;
	}
	
	public UserQuery getBaseQuery() {
		return baseQuery;
	}

	public void setBaseQuery(UserQuery baseQuery) {
		this.baseQuery = baseQuery;
	}

	public Long getDid() {
		return did;
	}

	public void setDid(Long did) {
		this.did = did;
	}
	
}
