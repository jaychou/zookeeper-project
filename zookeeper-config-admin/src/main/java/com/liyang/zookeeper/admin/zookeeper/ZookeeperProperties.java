package com.liyang.zookeeper.admin.zookeeper;

import java.io.IOException;
import java.util.Properties;

public class ZookeeperProperties {
	
	private static Properties p = new Properties();
	
	static {
		try {
			p.load(ZookeeperProperties.class.getClassLoader().getResourceAsStream("zookeeper.properties"));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public String get(String key) {
		return p.getProperty(key);
	}
	
	

}
