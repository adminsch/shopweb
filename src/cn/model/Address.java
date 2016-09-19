package cn.model;

public class Address {
	private int aid;
	private String addr;
	private User user=new User();
	private String aname;
	private String phone;
	private String postal;//邮编
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
	
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPostal() {
		return postal;
	}
	public void setPostal(String postal) {
		this.postal = postal;
	}
	@Override
	public String toString() {
		return "Address [aid=" + aid + ", addr=" + addr + ", user=" + user
				+ ", aname=" + aname + ", phone=" + phone + ", postal="
				+ postal + "]";
	}
	

}
