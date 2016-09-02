package cn.model;

import java.util.Date;

public class Message {
	private int mid;
	private User user;
	private String content;
	private Date mdate;
	private Commodity commodity;
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getMdate() {
		return mdate;
	}
	public void setMdate(Date mdate) {
		this.mdate = mdate;
	}
	public Commodity getCommodity() {
		return commodity;
	}
	public void setCommodity(Commodity commodity) {
		this.commodity = commodity;
	}
	@Override
	public String toString() {
		return "Message [mid=" + mid + ", user=" + user + ", content="
				+ content + ", mdate=" + mdate + ", commodity=" + commodity
				+ "]";
	}
	
	
}
