package cn.model;

public class Store {
	private int sid;
	private String sname;
	private User user;
	private String sdesc;
	private String spicture;
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getSdesc() {
		return sdesc;
	}
	public void setSdesc(String sdesc) {
		this.sdesc = sdesc;
	}
	public String getSpicture() {
		return spicture;
	}
	public void setSpicture(String spicture) {
		this.spicture = spicture;
	}
	@Override
	public String toString() {
		return "Store [sid=" + sid + ", sname=" + sname + ", user=" + user
				+ ", sdesc=" + sdesc + ", spicture=" + spicture + "]";
	}
	
}
