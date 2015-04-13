package com.liyang.zookeeper.admin.web.screen;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.liyang.zookeeper.admin.domain.MessageDefine;

public class Alert extends AbstractController{
	
	private static Logger logger = Logger.getLogger(Alert.class);

	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		logger.info("==============alert================");
		String message="";
		String reason = request.getParameter("reason");
		
		if(reason!=null) {
			message = MessageDefine.alertTypeMap.get(Integer.parseInt(reason));
		}
		
		return new ModelAndView("alert", "message", message);
	}
	
	

}
