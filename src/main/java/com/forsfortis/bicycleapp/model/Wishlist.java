package com.forsfortis.bicycleapp.model;

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
@Table(name = "wishlist")
public class Wishlist {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "productid")
	private Product productid;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "userid")
	private User userid;
	
	public Wishlist(){
		
	}
	public Wishlist(Integer id) {
		this.id = id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Product getProductid() {
		return productid;
	}

	public void setProductid(Product productid) {
		this.productid = productid;
	}

	public User getUserid() {
		return userid;
	}

	public void setUserid(User userid) {
		this.userid = userid;
	}

}
