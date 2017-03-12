package com.forsfortis.bicycleapp.vo;

import java.util.List;

public class ProductCategoryVo {

	private int id;
	private Integer parent;
	private String category;
	private List<ProductCategoryVo> children;
	private boolean hasChild;
	private List<ProductVo> productList;

	public List<ProductVo> getProductList() {
		return productList;
	}
	public void setProductList(List<ProductVo> productList) {
		this.productList = productList;
	}
	public Integer getParent() {
		return parent;
	}
	public void setParent(Integer parent) {
		this.parent = parent;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public List<ProductCategoryVo> getChildren() {
		return children;
	}
	public void setChildren(List<ProductCategoryVo> children) {
		this.children = children;
	}
	public boolean isHasChild() {
		return hasChild;
	}
	public void setHasChild(boolean hasChild) {
		this.hasChild = hasChild;
	}
	
	
}
