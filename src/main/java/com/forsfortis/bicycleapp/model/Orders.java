package com.forsfortis.bicycleapp.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="orders")
public class Orders {
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@ManyToOne(fetch = FetchType.LAZY,targetEntity=User.class,cascade=CascadeType.ALL)  
    @JoinColumn(name = "orderedby")
	private User orderedby;
	@ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "productid")
	private Product productid;
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
	public User getOrderedby() {
		return orderedby;
	}
	public void setOrderedby(User orderedby) {
		this.orderedby = orderedby;
	}
	public Product getProductid() {
		return productid;
	}
	public void setProductid(Product productid) {
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
