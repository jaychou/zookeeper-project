package com.liyang.zookeeper.admin.zookeeper;

import java.util.List;

import com.liyang.zookeeper.admin.domain.Application;

public interface ZookeeperClient {
	
	public void create(String appName, String name, String data);
	
	
	public String get(String appName, String name);
	
	public List<String> getKeys(String appName);

	public List<ZkNode> getNodes(String appName);
	
	public List<Application> getApplications();
}
