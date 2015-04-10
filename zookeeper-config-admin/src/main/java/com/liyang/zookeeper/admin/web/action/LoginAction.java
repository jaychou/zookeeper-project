package com.liyang.zookeeper.admin.web.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

public class LoginAction extends AbstractController{

	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		request.getSession().setAttribute("account", "lijieran");
		
		response.sendRedirect("index.htm");
		
		return null;
	}

}
