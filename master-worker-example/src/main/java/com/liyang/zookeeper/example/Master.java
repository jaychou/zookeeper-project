package com.liyang.zookeeper.example;

import java.io.IOException;
import java.util.Random;

import org.apache.zookeeper.CreateMode;
import org.apache.zookeeper.KeeperException;
import org.apache.zookeeper.WatchedEvent;
import org.apache.zookeeper.Watcher;
import org.apache.zookeeper.ZooDefs;
import org.apache.zookeeper.ZooKeeper;

public class Master implements Watcher{
	
	private String hostPort;
	private ZooKeeper zk;
	
	public Master(String hostPort) {
		this.hostPort = hostPort;
	}

	public void process(WatchedEvent event) {
		System.out.println("watched: " + event);
		
	}
	
	public void startZK() throws IOException {
		zk = new ZooKeeper(hostPort, 15000, this);
	}
	
	public void stopZK() throws InterruptedException {
		if(zk!=null) {
			zk.close();
		}
	}
	
	public void runForMaster() throws KeeperException, InterruptedException {
		Random random = new Random(10);
		String serverId = Integer.toHexString(random.nextInt());
		System.out.println("serverId = " +serverId);
		zk.create("/master", serverId.getBytes(), ZooDefs.Ids.OPEN_ACL_UNSAFE, CreateMode.PERSISTENT);
		
		
		
		byte[] data = zk.getData("/master", this, null);
		System.out.println("data = " + new String(data));
		
		
	}
	
	public static void main(String args[]) throws Exception {
		String hostPort = "115.28.17.57:2181";
		Master master = new Master(hostPort);
		master.startZK();
		
		master.runForMaster();
		Thread.sleep(6000);
		
		master.stopZK();
	}
	
	

}
