package com.forsfortis.bicycleapp.vo;

public class WishlistVo {
	private int id;
	private UserVO userid;
	private ProductVo productid;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public UserVO getUserid() {
		return userid;
	}
	public void setUserid(UserVO userid) {
		this.userid = userid;
	}
	public ProductVo getProductid() {
		return productid;
	}
	public void setProductid(ProductVo productid) {
		this.productid = productid;
	}
	
}
