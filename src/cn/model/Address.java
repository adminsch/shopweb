package cn.model;

public class Address {
	private int aid;
	private String addr;
	private User user;
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "Address [aid=" + aid + ", addr=" + addr + ", user=" + user
				+ "]";
	}
	

}
