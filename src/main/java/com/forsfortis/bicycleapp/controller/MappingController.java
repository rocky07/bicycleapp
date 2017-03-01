package com.forsfortis.bicycleapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
}