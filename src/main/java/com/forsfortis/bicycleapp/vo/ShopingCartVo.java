package com.forsfortis.bicycleapp.vo;

import com.forsfortis.bicycleapp.model.Colors;

public class ShopingCartVo {
	public ShopingCartVo(){}
	
	public ShopingCartVo(int productId, int price, String title){
		this.productId=productId;
		this.quantity=1;
		this.colors=Colors.RED;
		this.title=title;
		this.sellingPrice=price;
		
	}
	private int productId;
	private int sellingPrice;
	private int quantity;
	private Colors colors;
	private String title;
	
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getSellingPrice() {
		return sellingPrice;
	}
	public void setSellingPrice(int sellingPrice) {
		this.sellingPrice = sellingPrice;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Colors getColors() {
		return colors;
	}
	public void setColors(Colors colors) {
		this.colors = colors;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
}
