package com.forsfortis.bicycleapp.services;

import java.util.ArrayList;
import java.util.List;

import org.dom4j.util.ProxyDocumentFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.forsfortis.bicycleapp.dao.ProductDao;
import com.forsfortis.bicycleapp.model.Product;
import com.forsfortis.bicycleapp.model.ProductBrand;
import com.forsfortis.bicycleapp.model.ProductCategory;
import com.forsfortis.bicycleapp.model.ProductImage;
import com.forsfortis.bicycleapp.model.ProductSize;
import com.forsfortis.bicycleapp.vo.ProductBrandVo;
import com.forsfortis.bicycleapp.vo.ProductCategoryVo;
import com.forsfortis.bicycleapp.vo.ProductImageVo;
import com.forsfortis.bicycleapp.vo.ProductImagesVo;
import com.forsfortis.bicycleapp.vo.ProductSizeVo;
import com.forsfortis.bicycleapp.vo.ProductVo;
@Component
public class ProductServices {
	@Autowired
	ProductDao productDao;
	public List<ProductCategoryVo> getProductcategories(){
		final List<ProductCategory> productList = productDao.getProductCategory();
		List<ProductCategoryVo> voList=new ArrayList<ProductCategoryVo>();
		for (ProductCategory productCategory : productList) {
			if(productCategory.getParent()==null){
				ProductCategoryVo target=new ProductCategoryVo();
				BeanUtils.copyProperties(productCategory, target);
				voList.add(target);
				List<ProductCategoryVo> childList=new ArrayList<ProductCategoryVo>();
				target.setChildren(childList);
				for (ProductCategory pc : productList) {
					if(pc.getParent()!= null && pc.getParent()==target.getId()){
						target.setHasChild(true);
						ProductCategoryVo obj=new ProductCategoryVo();
						BeanUtils.copyProperties(pc, obj);
						childList.add(obj);
					}
				}
			}
		}
		return voList;
	}
	
	public List<ProductSizeVo> getProductSize(){
		final List<ProductSize> productSizes = productDao.getProductSizes();
		List<ProductSizeVo> productsVo=new ArrayList<ProductSizeVo>();
		for (ProductSize productSize : productSizes) {
			ProductSizeVo vo=new ProductSizeVo();
			BeanUtils.copyProperties(productSize, vo);
			productsVo.add(vo);
		}
		return productsVo;
	}
	public List<ProductBrandVo> getProductBrand(){
		final List<ProductBrand> productBrands = productDao.getProductBrands();
		List<ProductBrandVo> productsVo=new ArrayList<ProductBrandVo>();
		for (ProductBrand productBrand : productBrands) {
			ProductBrandVo vo=new ProductBrandVo();
			BeanUtils.copyProperties(productBrand, vo);
			productsVo.add(vo);
		}
		return productsVo;
	}
	
	public List<ProductVo> getProducts(int start,int limit,Integer catId){
		final List<Product> products = productDao.getProducts(start,limit,catId);
		List<ProductVo> productsVo=new ArrayList<ProductVo>();
		for (Product product : products) {
			ProductVo vo=new ProductVo();
			BeanUtils.copyProperties(product, vo);
			final List<ProductImagesVo> productImages = getProductImages(product.getId());
			vo.setProductImages(productImages);
			productsVo.add(vo);
		}
		return productsVo;
	}
	
	public List<ProductVo> getFeaturedProducts(){
		final List<Product> products = productDao.getFeaturedProducts();
		List<ProductVo> productsVo=new ArrayList<ProductVo>();
		for (Product product : products) {
			ProductVo vo=new ProductVo();
			BeanUtils.copyProperties(product, vo);
			final List<ProductImagesVo> productImages = getProductImages(product.getId());
			vo.setProductImages(productImages);
			productsVo.add(vo);
		}
		return productsVo;
	}

	public ProductVo getProduct(int productId) {
		final Product product = productDao.getProduct(productId);
		ProductVo vo=new ProductVo();
		if(product!=null && product.getId()!=0){
			BeanUtils.copyProperties(product, vo);
			final List<ProductImagesVo> productImages = getProductImages(productId);
			vo.setProductImages(productImages);
		}		
		return vo;
	}
	
	public List<ProductCategoryVo> getProductsByCategory(){
		final List<ProductCategory> productCategory = productDao.getProductCategory();
		int start=0;
		int limit=3;
		final List<ProductCategoryVo> productcategoryVoList = new ArrayList<ProductCategoryVo>();
		
		for (ProductCategory cat : productCategory) {
			if(cat.getParent()==null){
			ProductCategoryVo productcategoryVo=new ProductCategoryVo();
			BeanUtils.copyProperties(cat, productcategoryVo);
			productcategoryVoList.add(productcategoryVo);

			final List<Product> products = productDao.getProducts(start, limit, cat.getId());
				List<ProductVo> productVoList=new ArrayList<ProductVo>();
				for (Product product : products) {
					ProductVo pvo=new ProductVo();
					BeanUtils.copyProperties(product, pvo);
					final List<ProductImagesVo> productImages = getProductImages(product.getId());
					pvo.setProductImages(productImages);
					productVoList.add(pvo);
				}
				productcategoryVo.setProductList(productVoList);
				
			}
		}
		return productcategoryVoList;
	}

	public void saveProductImage(Integer productid, String name) {
		productDao.saveProductImage(productid,name);
		
	}

	public List<ProductImagesVo> getProductImages(Integer productId) {
		final List<ProductImage> productImages = productDao.getProductImages(productId);
		List<ProductImagesVo> voList=new ArrayList<ProductImagesVo>();
		for (ProductImage productImage : productImages) {
			ProductImagesVo vo=new ProductImagesVo();
			BeanUtils.copyProperties(productImage, vo);
			voList.add(vo);
		}
		return voList;
	}

	public void deleteProductImage(int productId) {
		productDao.deleteProductImage(productId);
	}
}
