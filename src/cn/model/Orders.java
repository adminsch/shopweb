package cn.model;

import javax.persistence.Transient;

public class Orders {
	private int oid;
	private Commodity commodity=new Commodity();
	
	private String cname;
	private double cprice;
	private double ctotal;//购买N件某商品总价
	private int cnum;
	private String batchno;
	private User user=new User();
	private String saddr;
	private String faddr;
	private int status;
	private int isgw;
	@Transient
	private int ischeck;
	@Transient
	private double batchtotle;//本次订单总价
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public double getCprice() {
		return cprice;
	}
	public void setCprice(double cprice) {
		this.cprice = cprice;
	}
	public double getCtotal() {
		return ctotal;
	}
	public void setCtotal(double ctotal) {
		this.ctotal = ctotal;
	}
	public int getCnum() {
		return cnum;
	}
	public void setCnum(int cnum) {
		this.cnum = cnum;
	}
	public String getBatchno() {
		return batchno;
	}
	public void setBatchno(String batchno) {
		this.batchno = batchno;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getSaddr() {
		return saddr;
	}
	public void setSaddr(String saddr) {
		this.saddr = saddr;
	}
	public String getFaddr() {
		return faddr;
	}
	public void setFaddr(String faddr) {
		this.faddr = faddr;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public double getBatchtotle() {
		return batchtotle;
	}
	public void setBatchtotle(double batchtotle) {
		this.batchtotle = batchtotle;
	}
	public Commodity getCommodity() {
		return commodity;
	}
	public void setCommodity(Commodity commodity) {
		this.commodity = commodity;
	}
	public void setIsgw(int isgw) {
		this.isgw = isgw;
	}
	public int getIsgw() {
		return isgw;
	}
	public void setIscheck(int ischeck) {
		this.ischeck = ischeck;
	}
	public int getIscheck() {
		return ischeck;
	}
	@Override
	public String toString() {
		return "Orders [oid=" + oid + ", commodity=" + commodity + ", cname="
				+ cname + ", cprice=" + cprice + ", ctotal=" + ctotal
				+ ", cnum=" + cnum + ", batchno=" + batchno + ", user=" + user
				+ ", saddr=" + saddr + ", faddr=" + faddr + ", status="
				+ status + ", batchtotle=" + batchtotle + "]";
	}


	
}
