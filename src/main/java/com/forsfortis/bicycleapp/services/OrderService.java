package com.forsfortis.bicycleapp.services;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.forsfortis.bicycleapp.dao.OrderDao;
import com.forsfortis.bicycleapp.model.Orders;
import com.forsfortis.bicycleapp.model.Product;
import com.forsfortis.bicycleapp.model.User;
import com.forsfortis.bicycleapp.model.Wishlist;
import com.forsfortis.bicycleapp.vo.OrderVo;
import com.forsfortis.bicycleapp.vo.ProductVo;
import com.forsfortis.bicycleapp.vo.UserVO;
import com.forsfortis.bicycleapp.vo.WishlistVo;

@Component
public class OrderService {
	@Autowired
	OrderDao orderDao;
	public List<OrderVo> listAllOrders(int userId){
		final List<Orders> orderList = orderDao.listOrdersByUserId(userId);
		List<OrderVo> resultList= new ArrayList<OrderVo>(); 
		for (Orders order : orderList) {
			OrderVo vo=new OrderVo();
			BeanUtils.copyProperties(order, vo);
			resultList.add(vo);
		}
		return resultList;
	}
	public List<WishlistVo> listWishlist(int userId){
		final List<Wishlist> wishList = orderDao.listWishlistByUserId(userId);
		List<WishlistVo> resultList= new ArrayList<WishlistVo>(); 
		for (Wishlist order : wishList) {
			WishlistVo vo=new WishlistVo();
			UserVO userVo=new UserVO();
			ProductVo productVo=new ProductVo();
			BeanUtils.copyProperties(order.getUserid(), userVo);
			BeanUtils.copyProperties(order.getProductid(), productVo);
			vo.setUserid(userVo);
			vo.setProductid(productVo);
			BeanUtils.copyProperties(order, vo);
			resultList.add(vo);
		}
		return resultList;
	}
	public void addToWishlist(Integer userId, Integer productId) {
		orderDao.addToWishList(userId,productId);
		
	}
	public void removeFromWishList(Integer id) {
		orderDao.removeFromWishlist(id);
	}
}
