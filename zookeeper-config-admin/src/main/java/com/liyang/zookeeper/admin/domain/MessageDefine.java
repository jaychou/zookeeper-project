package com.liyang.zookeeper.admin.domain;

import java.util.HashMap;
import java.util.Map;

public class MessageDefine {
	
	public static final Map<Integer,String> alertTypeMap = new HashMap<Integer,String>(); 
	
	
	
	//Alert message
	public static final int USERNAME_NULL=1;
	public static final int PASSWORD_NULL=2;
	
	static {
		alertTypeMap.put(USERNAME_NULL, "用户名不能为空!");
		alertTypeMap.put(PASSWORD_NULL, "密码不能为空!");
	}
	

}
