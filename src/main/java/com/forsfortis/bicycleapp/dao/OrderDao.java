package com.forsfortis.bicycleapp.dao;

import java.util.List;

import com.forsfortis.bicycleapp.model.Orders;
import com.forsfortis.bicycleapp.model.Wishlist;

public interface OrderDao {
	public List<Orders> listOrdersByUserId(int user);
	public List<Wishlist> listWishlistByUserId(int user);
	public void addToWishList(Integer userId, Integer productId);
	public void removeFromWishlist(Integer id);
}
