package com.forsfortis.bicycleapp.controller;

import java.math.BigInteger;
import java.security.SecureRandom;

import javax.servlet.http.HttpSession;

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
import com.forsfortis.bicycleapp.model.UserDetails;
import com.forsfortis.bicycleapp.services.UserServices;
import com.forsfortis.bicycleapp.validation.UserDetailsValidator;
import com.forsfortis.bicycleapp.validation.UserValidator;
import com.forsfortis.bicycleapp.vo.BillingDetailsVo;
import com.forsfortis.bicycleapp.vo.UserRole;
import com.forsfortis.bicycleapp.vo.UserVO;

@Controller
public class UserController {
	
	@Autowired
	UserServices userService;

	@Autowired
	@Qualifier("userValidator")
	private UserValidator userValidator;
	
	@Autowired
	@Qualifier("userDetailsValidator")
	private UserDetailsValidator userDetailsValidator;

	/*@InitBinder
	private void initBinder(WebDataBinder binder) {
		binder.setValidator(validator);
	}*/
	@RequestMapping("/login")
	public ModelAndView login(@RequestParam("username") String user,@RequestParam("password") String password,HttpSession httpSession){
		final UserVO userLogin = userService.userLogin(user, password);
		ModelAndView mv = new ModelAndView();
		if (userLogin != null) {
			mv.setViewName("index");
			mv.addObject("msg", userLogin.getName());
			httpSession.setAttribute("user", userLogin);
		}else{
			mv.setViewName("shop-register");
		}
		return mv;
	}
	@RequestMapping("/logout")
	public String logout(HttpSession httpSession){
		httpSession.removeAttribute("user");
		return "index";
	}
	
	@RequestMapping("/adduser")
	public String saveUser(@ModelAttribute("userForm") @Validated UserVO user,BindingResult result, Model model,
			final RedirectAttributes redirectAttributes){
		
			user.setRole(UserRole.USER);
			userValidator.validate(user, result);
		if (result.hasErrors()) {
			return "/shop-register";
		}
		User userModel=new User(UserRole.USER);
		BeanUtils.copyProperties(user, userModel);
		
		userService.saveUser(userModel);
		return "/shop-register";
	}
	
	@RequestMapping("/saveuserdetails")
	public String saveUserDetails(@ModelAttribute("userDetailsForm") @Validated BillingDetailsVo details,BindingResult results, Model model,
			final RedirectAttributes redirectAttributes){
		userDetailsValidator.validate(details, results);

		if (results.hasErrors()) {
			return "/shop-checkout";
		}
		UserDetails userDetailsModel=new UserDetails();
		BeanUtils.copyProperties(details, userDetailsModel);
		if(details.isCreateaccount()){
			User user=new User(UserRole.USER);
			user.setEmail(details.getEmail());
			user.setName(details.getFirst_name());
			 SecureRandom random = new SecureRandom();
			 final String passcode = new BigInteger(130, random).toString(32);
			 user.setPassword(passcode);
			 userDetailsModel.setUser(user);
		}
		userService.saveUserDetails(userDetailsModel);
		return "/shop-checkout";
	}
}