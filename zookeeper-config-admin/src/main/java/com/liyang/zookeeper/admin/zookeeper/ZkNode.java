package com.liyang.zookeeper.admin.zookeeper;

public class ZkNode {
	
	private String path;
	private String data;
	private String name;
	
	public ZkNode(String path, String name, String data) {
		this.path = path;
		this.name = name;
		this.data = data;
	}
	
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	

}
