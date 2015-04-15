package com.liyang.zookeeper.admin.web.screen;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

public class Login extends AbstractController{

	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		String result = null;
		try {
			result = request.getParameter("result").trim();
		} catch (NullPointerException e) {
			result = "login";
		}
		if (result == null) {
			result = "login";
		}
		
		return new ModelAndView("login", "result", result);
	}

}
