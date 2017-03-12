package com.forsfortis.bicycleapp.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.forsfortis.bicycleapp.dao.OrderDao;
import com.forsfortis.bicycleapp.model.Orders;
import com.forsfortis.bicycleapp.model.Product;
import com.forsfortis.bicycleapp.model.User;
import com.forsfortis.bicycleapp.model.Wishlist;
@Transactional
@Repository("orderDao")
public class OrderDaoImpl extends AbstractDao implements OrderDao{

	@Override
	public List<Orders> listOrdersByUserId(int userId) {
		final Query createQuery = getSession().createQuery("from Orders where orderedby=:userid");
		createQuery.setParameter("userid",new User(userId));
		return createQuery.list();
		
	}

	@Override
	public List<Wishlist> listWishlistByUserId(int userId) {
		final Query createQuery = getSession().createQuery("from Wishlist where userid=:userid");
		createQuery.setParameter("userid",new User(userId));
		return createQuery.list();
	}

	@Override
	public void addToWishList(Integer userId, Integer productId) {
		Wishlist wl=new Wishlist();
		final Product product = new Product();
		product.setId(productId);
		wl.setProductid(product);
		wl.setUserid(new User(userId));
		final Serializable save = getSession().save(wl);
	}

	@Override
	public void removeFromWishlist(Integer id) {
		getSession().delete(new Wishlist(id));
		
	}
}
