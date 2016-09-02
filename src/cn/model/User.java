package cn.model;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class User {
	private int uid;
	private String name;
	private String password;
	private int role;
	private int integral;
	private String phone;
	private Set<Address> addrs=new HashSet<Address>();
	private Set<Store> stores=new HashSet<Store>();
	private Set<Order> orders=new HashSet<Order>();
	private Set<Goods> goodss=new HashSet<Goods>();
	private Set<Message> messages=new HashSet<Message>();
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	public int getIntegral() {
		return integral;
	}
	public void setIntegral(int integral) {
		this.integral = integral;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Set<Address> getAddrs() {
		return addrs;
	}
	public void setAddrs(Set<Address> addrs) {
		this.addrs = addrs;
	}
	public Set<Store> getStores() {
		return stores;
	}
	public void setStores(Set<Store> stores) {
		this.stores = stores;
	}
	public Set<Order> getOrders() {
		return orders;
	}
	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}
	public Set<Goods> getGoodss() {
		return goodss;
	}
	public void setGoodss(Set<Goods> goodss) {
		this.goodss = goodss;
	}
	public Set<Message> getMessages() {
		return messages;
	}
	public void setMessages(Set<Message> messages) {
		this.messages = messages;
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", name=" + name + ", password=" + password
				+ ", role=" + role + ", integral=" + integral + ", phone="
				+ phone + ", addrs=" + addrs + ", stores=" + stores
				+ ", orders=" + orders + ", goodss=" + goodss + ", messages="
				+ messages + "]";
	}


}
