package com.liyang.zookeeper.admin.zookeeper.zkclient;

import java.util.ArrayList;
import java.util.List;

import org.I0Itec.zkclient.ZkClient;
import org.apache.log4j.Logger;
import org.apache.zookeeper.CreateMode;

import com.liyang.zookeeper.admin.domain.Application;
import com.liyang.zookeeper.admin.zookeeper.ZkNode;
import com.liyang.zookeeper.admin.zookeeper.ZookeeperClient;
import com.liyang.zookeeper.admin.zookeeper.ZookeeperProperties;

public class SimpleZookeeperClient implements ZookeeperClient{
	
	private static Logger logger = Logger.getLogger(SimpleZookeeperClient.class);
	private static final String ZOOKEEPER_HOST_PORT = "zookeeper_host_port";
	private static final String CONFIG_PATH_PREF = "config_path_pref";
	private ZookeeperProperties p = new ZookeeperProperties();
	private ZkClient zkclient;
	
	public SimpleZookeeperClient() {
		zkclient = new ZkClient(p.get(ZOOKEEPER_HOST_PORT));
	}

	@Override
	public void create(String appName, String name, String data) {
		String pathPref = p.get(CONFIG_PATH_PREF);
		if(!zkclient.exists(pathPref)) {
			zkclient.create(pathPref, "", CreateMode.PERSISTENT);
			logger.info("初始化根节点"+pathPref);
		}
		
		String pathApp = pathPref + "/" + appName;
		
		if(!zkclient.exists(pathApp)) {
			zkclient.create(pathApp, "", CreateMode.PERSISTENT);
			logger.info("初始化配置名称节点"+pathApp);
		}
		
		String path = pathApp +"/" + name ;
		
		if(!zkclient.exists(path)) {
			zkclient.create(path, data, CreateMode.PERSISTENT);
			logger.info("成功创建节点"+path);
		} else {
			logger.info("节点已经存在"+path);
		}
		
	}

	@Override
	public String get(String appName, String name) {
		String path = p.get(CONFIG_PATH_PREF) + "/" + appName + "/" +name;
		String data = zkclient.readData(path);
		logger.info("读取节点"+path+"值为"+data);
		return data;
	}
	
	
	@Override
	public List<String> getKeys(String appName) {
		String path = p.get(CONFIG_PATH_PREF) + "/" + appName;
		List<String> keys = zkclient.getChildren(path);
		return keys;
	}

	@Override
	public List<ZkNode> getNodes(String appName) {
		
		List<String> keys = this.getKeys(appName);
		List<ZkNode> nodes = new ArrayList<ZkNode>();
		for(String key:keys) {
			String path = p.get(CONFIG_PATH_PREF) + "/" + appName + "/" +key;
			String data = zkclient.readData(path);
			nodes.add(new ZkNode(path, key, data));
		}
		return nodes;
	}

	@Override
	public List<Application> getApplications() {
		String path = p.get(CONFIG_PATH_PREF);
		List<String> keys = zkclient.getChildren(path);
		List<Application> result = new ArrayList<Application>();
		for(String key:keys) {
			String data = zkclient.readData(path+"/"+key);
			result.add(new Application(key,data));
		}
		return result;
	}

	
}
