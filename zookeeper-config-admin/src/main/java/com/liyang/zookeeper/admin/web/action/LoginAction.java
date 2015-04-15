package com.liyang.zookeeper.admin.web.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

public class LoginAction extends AbstractController{

	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		if(!username.equals("root")&&!password.equals("root")) {
			response.sendRedirect("login.htm?result=false");
		} else {
			request.getSession().setAttribute("account", "lijieran");
			
			response.sendRedirect("index.htm");
		}
		
		
		
		return null;
	}

}
