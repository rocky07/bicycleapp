package com.forsfortis.bicycleapp.dao;

import java.util.List;

import com.forsfortis.bicycleapp.model.Product;
import com.forsfortis.bicycleapp.model.ProductBrand;
import com.forsfortis.bicycleapp.model.ProductCategory;
import com.forsfortis.bicycleapp.model.ProductSize;

public interface ProductDao {

	public List<ProductCategory> getProductCategory();

	public List<ProductSize> getProductSizes();

	public List<ProductBrand> getProductBrands();

	public List<Product> getProducts(int start, int limit,Integer catId);

	public List<Product> getFeaturedProducts();

	public Product getProduct(int productId);
		
}
