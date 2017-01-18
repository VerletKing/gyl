package com.gyl.login.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.gyl.base.action.BaseAction;
import com.gyl.domain.baseData.User;
import com.gyl.domain.privilege.Privilege;
import com.gyl.login.service.LoginService;
import com.gyl.privilege.service.PrivilegeService;
import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class LoginAction extends BaseAction<User>{

	private static final long serialVersionUID = -9094151817509770361L;
	
	@Resource
	private LoginService loginService;
	@Resource
	private PrivilegeService privilegeService;
	
	public String authentication(){
		User user = loginService.authentication(getModel().getUserName(), getModel().getPassword());
		if(user==null){
			this.addActionError("用户名或者密码错误。");
			return "login";
		}else{
			this.getSession().setAttribute("user", user);
			List<Privilege> functions = privilegeService.getfunctionByUid(user.getUid());
			this.getSession().setAttribute("functions", functions);
			return "home";
		}
	}
	
	public String logOut(){
		HttpSession session = this.getSession();
		if(session != null){
			session.removeAttribute("user");
		}
		ActionContext.getContext().getValueStack().push("success");
		return SUCCESS;
	}
}
