package com.liyang.zookeeper.admin;

import java.util.List;

import com.liyang.zookeeper.admin.domain.Application;
import com.liyang.zookeeper.admin.zookeeper.ZkNode;
import com.liyang.zookeeper.admin.zookeeper.ZookeeperClient;
import com.liyang.zookeeper.admin.zookeeper.zkclient.SimpleZookeeperClient;

import junit.framework.TestCase;

public class ZookeeperClientTest extends TestCase{
	private ZookeeperClient client = new SimpleZookeeperClient();
	String appName = "admin";
	
	public void testConnection() {
		
		client.create("admin", "jdbc_name", "数据库名称");
		System.out.println(client.get("admin", "jdbc_name"));
	}
	

	public void testGetKeys() {
		
		List<String> keys = client.getKeys(appName);
		System.out.println(keys);
	}
	
	public void testGetNodes() {
		List<ZkNode> nodes = client.getNodes(appName);
		for(ZkNode node:nodes) {
			System.out.println("key="+node.getPath()+"; data="+node.getData());
		}
	}
	
	public void testGetApplications() {
		List<Application> result = client.getApplications();
		for(Application entity:result) {
			System.out.println("名称："+entity.getName()+"，描述:"+entity.getDescription());
		}
	}

}
