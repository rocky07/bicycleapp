package com.forsfortis.bicycleapp.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.forsfortis.bicycleapp.dao.ProductDao;
import com.forsfortis.bicycleapp.model.Product;
import com.forsfortis.bicycleapp.model.ProductBrand;
import com.forsfortis.bicycleapp.model.ProductCategory;
import com.forsfortis.bicycleapp.model.ProductSize;
@Transactional
@Repository("productDao")
public class ProductDaoImpl extends AbstractDao implements ProductDao {

	@Override
	public List<ProductCategory> getProductCategory() {
		final List<ProductCategory> list = getSession().createCriteria(ProductCategory.class).list();
		return list;
	}

	@Override
	public List<ProductSize> getProductSizes() {
		// TODO Auto-generated method stub
		return getSession().createCriteria(ProductSize.class).list();
	}

	@Override
	public List<ProductBrand> getProductBrands() {
		return getSession().createCriteria(ProductBrand.class).list();
	}

	@Override
	public List<Product> getProducts(int start, int limit,Integer catId) {
				final Criteria createCriteria = getSession().createCriteria(Product.class);
				if(catId!=null){
					createCriteria.add(Restrictions.eq("category", new ProductCategory(catId)));
				}
				createCriteria.setFirstResult(start).setMaxResults(limit);
		return createCriteria.list();
	}

	@Override
	public List<Product> getFeaturedProducts() {
		final List<Product> list = getSession().createCriteria(Product.class).addOrder(Order.desc("rating")).setMaxResults(5).list();
		return list;
	}

	@Override
	public Product getProduct(int productId) {
		final Product product = (Product)getSession().get(Product.class, productId);
		// TODO Auto-generated method stub
		return product;
	}

}
