package com.liyang.zookeeper.admin.service;

import java.util.List;

import com.liyang.zookeeper.admin.zookeeper.ZkNode;

public interface AdminService {
	
	public void addAppConfig(String name);
	public List<ZkNode> getAppConfig(String name);

}
