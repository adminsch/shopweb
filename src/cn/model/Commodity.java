package cn.model;

public class Commodity {
	private int cid;
	private String cname;
	private double price;
	private double discount;
	private Store store;
	private String cdesc;
	private String faddr;
	private int stock;
	private int record;
	private String cpicture;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	public Store getStore() {
		return store;
	}
	public void setStore(Store store) {
		this.store = store;
	}
	public String getCdesc() {
		return cdesc;
	}
	public void setCdesc(String cdesc) {
		this.cdesc = cdesc;
	}
	public String getFaddr() {
		return faddr;
	}
	public void setFaddr(String faddr) {
		this.faddr = faddr;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getRecord() {
		return record;
	}
	public void setRecord(int record) {
		this.record = record;
	}
	public String getCpicture() {
		return cpicture;
	}
	public void setCpicture(String cpicture) {
		this.cpicture = cpicture;
	}
	@Override
	public String toString() {
		return "Commodity [cid=" + cid + ", cname=" + cname + ", price="
				+ price + ", discount=" + discount + ", store=" + store
				+ ", cdesc=" + cdesc + ", faddr=" + faddr + ", stock=" + stock
				+ ", record=" + record + ", cpicture=" + cpicture + "]";
	}
	
	
	
	
}
