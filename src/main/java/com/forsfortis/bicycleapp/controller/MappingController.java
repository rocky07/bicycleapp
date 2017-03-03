package com.forsfortis.bicycleapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.forsfortis.bicycleapp.vo.BillingDetailsVo;
import com.forsfortis.bicycleapp.vo.ContactVo;
import com.forsfortis.bicycleapp.vo.UserVO;

@Controller
public class MappingController {
	@RequestMapping("/index")
	public String loadPage(){
		return "index";
	}
	
	@RequestMapping("/shop")
	public String shop(){
		return "shop";
	}
	@RequestMapping("/shop-register")
	public ModelAndView shopRegister(){
		UserVO user=new UserVO();
		ModelAndView mv=new ModelAndView();
		mv.addObject("userForm", user);
		mv.setViewName("shop-register");
		return mv;
	}
	@RequestMapping("/shop-checkout")
	public ModelAndView shopCheckout(){
		BillingDetailsVo user=new BillingDetailsVo();
		ModelAndView mv=new ModelAndView();
		mv.addObject("userDetailsForm", user);
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