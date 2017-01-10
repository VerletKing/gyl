package com.gyl.baseData.action;

import javax.annotation.Resource;

import org.springframework.beans.BeanUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.gyl.base.action.BaseAction;
import com.gyl.baseData.service.DepartmentService;
import com.gyl.domain.baseData.Department;
import com.gyl.query.PageResult;
import com.gyl.query.baseData.DepartmentQuery;
import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class DepartmentAction extends BaseAction<Department> {

	private static final long serialVersionUID = 7733850668629243823L;
	
	@Resource
	private DepartmentService departmentService;
	
	private DepartmentQuery baseQuery = new DepartmentQuery();
	
	public String showPageResult(){
		PageResult<Department> pageResult = departmentService.findPageResult(baseQuery);
		ActionContext.getContext().getContextMap().put("departments", pageResult);
		return listUI;
	}
	
	public String deleteIds(){
		if(strIds!=null){
			String[] ids = strIds.split(",");
			departmentService.deleteByIDs(ids);
		}else if(ids!=null){
			departmentService.deleteByIDs(ids);
		}
		return action2Action;
	}
	
	public String addUI(){
		return addUI;
	}
	
	public String add(){
		Department department = new Department();
		BeanUtils.copyProperties(getModel(), department);
		departmentService.add(department);
		return action2Action;
	}

	public String updateUI(){
		Department department = departmentService.getEntryById(getModel().getDid());
		ActionContext.getContext().getValueStack().push(department);
		return updateUI;
	}
	
	public String update(){
		Department department = departmentService.getEntryById(getModel().getDid());
		BeanUtils.copyProperties(getModel(), department);
		departmentService.update(department);
		return action2Action;
	}

	public DepartmentQuery getBaseQuery() {
		return baseQuery;
	}

	public void setBaseQuery(DepartmentQuery baseQuery) {
		this.baseQuery = baseQuery;
	}
	
}
