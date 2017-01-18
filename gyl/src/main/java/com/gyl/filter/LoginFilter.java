package com.gyl.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gyl.domain.baseData.User;

public class LoginFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpServletResponse httpResponse = (HttpServletResponse) response;
		
		String uri = httpRequest.getRequestURI();
		if(uri.contains("/gyl/login.jsp") || uri.contains("/gyl/images/login") || uri.contains("/gyl/loginAction_authentication.action")){
			chain.doFilter(httpRequest, httpResponse);
		}else{
			HttpSession session = httpRequest.getSession();
			User user = (User) session.getAttribute("user");
			if(user == null){
				httpResponse.sendRedirect(httpRequest.getContextPath()+"/login.jsp");
			}else{
				chain.doFilter(httpRequest, httpResponse);
			}
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
