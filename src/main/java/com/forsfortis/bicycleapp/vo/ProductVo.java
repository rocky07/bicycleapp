package com.forsfortis.bicycleapp.vo;

import com.forsfortis.bicycleapp.model.Colors;
import com.forsfortis.bicycleapp.model.ProductBrand;
import com.forsfortis.bicycleapp.model.ProductCategory;
import com.forsfortis.bicycleapp.model.ProductSize;

public class ProductVo {
	private int id;
	private int price;
	private int rating;
	private int stock;
	private Colors color;
	private String description;
	private String reviews;
	private String information;
	private ProductCategory category;
	private String tags;
	private ProductSize size;
	private ProductBrand brand;
	private String title;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public Colors getColor() {
		return color;
	}
	public void setColor(Colors color) {
		this.color = color;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getReviews() {
		return reviews;
	}
	public void setReviews(String reviews) {
		this.reviews = reviews;
	}
	public String getInformation() {
		return information;
	}
	public void setInformation(String information) {
		this.information = information;
	}
	public ProductCategory getCategory() {
		return category;
	}
	public void setCategory(ProductCategory category) {
		this.category = category;
	}
	public String getTags() {
		return tags;
	}
	public void setTags(String tags) {
		this.tags = tags;
	}
	public ProductSize getSize() {
		return size;
	}
	public void setSize(ProductSize size) {
		this.size = size;
	}
	public ProductBrand getBrand() {
		return brand;
	}
	public void setBrand(ProductBrand brand) {
		this.brand = brand;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

}
