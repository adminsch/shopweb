package cn.model;

public class Order {
	private int oid;
	private Commodity commodity;
	private String batchno;
	private User user;
	
	private Store store;
	private String saddr;
	
	private String faddr;
	
	private int status;

	public int getOid() {
		return oid;
	}

	public void setOid(int oid) {
		this.oid = oid;
	}

	public Commodity getCommodity() {
		return commodity;
	}

	public void setCommodity(Commodity commodity) {
		this.commodity = commodity;
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

	public Store getStore() {
		return store;
	}

	public void setStore(Store store) {
		this.store = store;
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

	@Override
	public String toString() {
		return "Order [oid=" + oid + ", commodity=" + commodity + ", batchno="
				+ batchno + ", user=" + user + ", store=" + store + ", saddr="
				+ saddr + ", faddr=" + faddr + ", status=" + status + "]";
	}
	
	
	
	

}
