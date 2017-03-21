package com.forsfortis.bicycleapp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.forsfortis.bicycleapp.model.User;
import com.forsfortis.bicycleapp.model.Wishlist;
import com.forsfortis.bicycleapp.services.OrderService;
import com.forsfortis.bicycleapp.util.SessionExpiredException;
import com.forsfortis.bicycleapp.vo.OrderVo;
import com.forsfortis.bicycleapp.vo.UserVO;
import com.forsfortis.bicycleapp.vo.WishlistVo;

@Controller
public class MyAccountController {

	@Autowired
	OrderService orderService;
	@RequestMapping("/my-account")
	public ModelAndView myAccount(HttpSession httpSession){
		final UserVO user = (UserVO)httpSession.getAttribute("user");
		List<OrderVo> allOrders = null;
		if(user!=null){
			allOrders = orderService.listAllOrders(user.getId());
		}
		ModelAndView mv=new ModelAndView();
		mv.setViewName("my-account");
		mv.addObject("orders",allOrders);
		return mv;
	}
	
	@RequestMapping("/shop-wishlist")
	public ModelAndView mywishlist(HttpSession httpSession){
		final UserVO user = (UserVO)httpSession.getAttribute("user");
		List<WishlistVo> wishlist=null;
		if(user!=null){
			 wishlist = orderService.listWishlist(user.getId());
		}
		ModelAndView mv=new ModelAndView();
		mv.setViewName("shop-wishlist");
		mv.addObject("wishlist",wishlist);
		return mv;
	}
	
	@RequestMapping("/addtowishlist")
	public ModelAndView addToWishlist(@RequestParam("id") Integer id,HttpSession httpSession) throws Exception{
		final UserVO user = (UserVO)httpSession.getAttribute("user");
		if(user!=null){
			orderService.addToWishlist(user.getId(),id);	
		}else{
			throw new SessionExpiredException();
		}
		
		return new ModelAndView("redirect:/shop-wishlist");
	}
	
	@RequestMapping("/removefromwishlist")
	public String removeFromWishlist(@RequestParam("id") Integer id,HttpSession httpSession) throws Exception{
		final UserVO user = (UserVO)httpSession.getAttribute("user");
		orderService.removeFromWishList(id);
		return "redirect:/shop-wishlist";
	}
}
