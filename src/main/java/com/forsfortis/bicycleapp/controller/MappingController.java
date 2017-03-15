package com.forsfortis.bicycleapp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.forsfortis.bicycleapp.services.ProductServices;
import com.forsfortis.bicycleapp.vo.ContactVo;
import com.forsfortis.bicycleapp.vo.ProductCategoryVo;
import com.forsfortis.bicycleapp.vo.ProductVo;
import com.forsfortis.bicycleapp.vo.UserVO;

@Controller
public class MappingController {
	
	@Autowired
	ProductServices productService;
	@RequestMapping("/index")
	public ModelAndView loadPage(HttpSession httpSession){
		final List<ProductCategoryVo> productsByCategory = productService.getProductsByCategory();
		final ProductVo product = productService.getProduct(1);
		
		/*final Object cartList = httpSession.getAttribute("cart");
		Map<Integer,ShopingCartVo> cartValues=null;
		int subtotal=0;
		if(cartList!=null){
			cartValues=(Map<Integer,ShopingCartVo>)cartList;
			for (ShopingCartVo cartVo : cartValues.values()) {
				subtotal+=cartVo.getQuantity()*cartVo.getSellingPrice();
			}
			
		}*/
		
		ModelAndView mv=new ModelAndView();
		//mv.addObject("cart", cartValues!=null ? cartValues.values():null);
		//mv.addObject("subtotal", subtotal);
		mv.setViewName("index");
		mv.addObject("category", productsByCategory);
		/*final UserVO user = (UserVO)httpSession.getAttribute("user");
		mv.addObject("user",user);*/
		mv.addObject("product", product);
		return mv;
	}
	
	@RequestMapping("/shop-register")
	public ModelAndView shopRegister(){
		UserVO user=new UserVO();
		ModelAndView mv=new ModelAndView();
		mv.addObject("userForm", user);
		mv.setViewName("shop-register");
		return mv;
	}

	@RequestMapping("/contact")
	public ModelAndView contact(){
		ContactVo vo=new ContactVo();
		ModelAndView mv=new ModelAndView();
		mv.addObject("contactForm", vo);
		mv.setViewName("contact");
		return mv;
	}
}