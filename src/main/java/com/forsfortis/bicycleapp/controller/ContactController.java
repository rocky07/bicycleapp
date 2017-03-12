package com.forsfortis.bicycleapp.controller;

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
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.forsfortis.bicycleapp.mail.SendMail;
import com.forsfortis.bicycleapp.vo.ContactVo;
@Controller
public class ContactController {
	@Autowired
	@Qualifier("contactValidator")
	private Validator validator;

	@InitBinder
	private void initBinder(WebDataBinder binder) {
		binder.setValidator(validator);
	}
	
	@RequestMapping("/sendmail")
	public ModelAndView sendMail(@ModelAttribute("contactForm") @Validated ContactVo contact,BindingResult result, Model model,
			final RedirectAttributes redirectAttributes){
		ModelAndView mv=new ModelAndView();
		if(result.hasErrors()){
			mv.setViewName("contact");
		}else{
			SendMail.sendMail(contact.getEmail(), contact.getWebsite()+":"+contact.getComment());
			mv.setViewName("index");
		}
		return mv;
	}
	
}
