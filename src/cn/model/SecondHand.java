package cn.model;

import java.io.File;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.Transient;

public class SecondHand {
	private int sid;
	private String sname;
	private double price;
	private double discount;
	private String cdesc;
	private String faddr;
	private int stock;
	private int record;
	private String pictureFileName;//   上传输入域FileName  文件名
	private int approve;
	@Transient
	private File picture;
	@Transient
	private String pictureContentType;
	private Set<Message> messages=new HashSet<Message>();
	private Date Cdate;
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
	public int getApprove() {
		return approve;
	}
	public void setApprove(int approve) {
		this.approve = approve;
	}
	public void setPicture(File picture) {
		this.picture = picture;
	}
	public File getPicture() {
		return picture;
	}
	public Set<Message> getMessages() {
		return messages;
	}
	public void setMessages(Set<Message> messages) {
		this.messages = messages;
	}
	public String getPictureFileName() {
		return pictureFileName;
	}
	public void setPictureFileName(String pictureFileName) {
		this.pictureFileName = pictureFileName;
	}
	public String getPictureContentType() {
		return pictureContentType;
	}
	public void setPictureContentType(String pictureContentType) {
		this.pictureContentType = pictureContentType;
	}
	public Date getCdate() {
		return Cdate;
	}
	public void setCdate(Date cdate) {
		Cdate = cdate;
	}
	@Override
	public String toString() {
		return "Commodity [sid=" + sid + ", sname=" + sname + ", price="
				+ price + ", discount=" + discount + ", cdesc=" + cdesc
				+ ", faddr=" + faddr + ", stock=" + stock + ", record="
				+ record+ ", approve="+ approve + ", pictureFileName=" + pictureFileName
				+ ", picture=" + picture + ", pictureContentType="
				+ pictureContentType + ", messages=" + messages + ", Cdate="
				+ Cdate + "]";
	}
	

	
	
}
