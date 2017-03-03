package com.forsfortis.bicycleapp.controller;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.forsfortis.bicycleapp.model.User;
import com.forsfortis.bicycleapp.services.UserServices;
import com.forsfortis.bicycleapp.vo.BillingDetailsVo;
import com.forsfortis.bicycleapp.vo.UserRole;
import com.forsfortis.bicycleapp.vo.UserVO;

@Controller
public class UserController {
	
	@Autowired
	UserServices userService;

	@Autowired
	@Qualifier("userValidator")
	private Validator userValidator;
	
	@Autowired
	@Qualifier("contactDetailsValidator")
	private Validator contactDetailsValidator;

	/*@InitBinder
	private void initBinder(WebDataBinder binder) {
		binder.setValidator(validator);
	}*/
	@RequestMapping("/login")
	public ModelAndView login(@RequestParam("username") String user,@RequestParam("password") String password){
		final UserVO userLogin = userService.userLogin(user, password);
		ModelAndView mv = new ModelAndView();
		if (userLogin != null) {
			mv.setViewName("index");
			mv.addObject("msg", userLogin.getName());
		}else{
			mv.setViewName("shop-register");
		}
		return mv;
	}
	
	@RequestMapping("/adduser")
	public String saveUser(@ModelAttribute("userForm") @Validated UserVO user,BindingResult result, Model model,
			final RedirectAttributes redirectAttributes){
		
		user.setRole(UserRole.USER);
		if (result.hasErrors()) {
			return "/shop-register";
		}
		User userModel=new User();
		BeanUtils.copyProperties(user, userModel);
		
		userService.saveUser(userModel);
		return "/shop-register";
	}
	
	@RequestMapping("/adduserdetails")
	public String saveUserDetails(@ModelAttribute("userDetailsForm") @Validated BillingDetailsVo details,BindingResult results, Model model,
			final RedirectAttributes redirectAttributes){
		contactDetailsValidator.validate(details, results);

		if (results.hasErrors()) {
			return "/shop-register";
		}
		UserDetails userModel=new UserDetails();
		
		BeanUtils.copyProperties(details, userModel);
		
		userService.saveUser(userModel);
		return "/shop-register";
	}
}