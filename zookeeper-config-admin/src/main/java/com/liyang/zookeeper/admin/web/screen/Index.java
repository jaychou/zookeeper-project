package com.liyang.zookeeper.admin.web.screen;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

public class Index extends AbstractController {

	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		if(request.getSession().getAttribute("account")==null) {
			return new ModelAndView("redirect:login.htm");
		}
		
		return new ModelAndView("index");
	}

}
