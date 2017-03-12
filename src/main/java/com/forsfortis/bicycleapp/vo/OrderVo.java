package com.forsfortis.bicycleapp.vo;

import java.util.Date;

public class OrderVo {
	private int id;
	private UserVO orderedby;
	private ProductVo productid;
	private int batchid;
	private Date purchasedate;
	private int price;
	private String status;
	private String ordernotes;
	private int quantity;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public UserVO getOrderedby() {
		return orderedby;
	}
	public void setOrderedby(UserVO orderedby) {
		this.orderedby = orderedby;
	}
	public ProductVo getProductid() {
		return productid;
	}
	public void setProductid(ProductVo productid) {
		this.productid = productid;
	}
	public int getBatchid() {
		return batchid;
	}
	public void setBatchid(int batchid) {
		this.batchid = batchid;
	}
	public Date getPurchasedate() {
		return purchasedate;
	}
	public void setPurchasedate(Date purchasedate) {
		this.purchasedate = purchasedate;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getOrdernotes() {
		return ordernotes;
	}
	public void setOrdernotes(String ordernotes) {
		this.ordernotes = ordernotes;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	
	
}
