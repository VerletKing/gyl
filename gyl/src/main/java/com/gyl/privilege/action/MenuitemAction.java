package com.gyl.privilege.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.gyl.base.action.BaseAction;
import com.gyl.domain.privilege.Menuitem;
import com.gyl.privilege.service.MenuitemService;
import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class MenuitemAction extends BaseAction<Menuitem>{

	private static final long serialVersionUID = -5860494313338606583L;
	
	@Resource
	private MenuitemService menuitemService;
	
	public String showMenuitemTree(){
		List<Menuitem> list =  menuitemService.find();
		ActionContext.getContext().getValueStack().push(list);
		return SUCCESS;
	}

}
