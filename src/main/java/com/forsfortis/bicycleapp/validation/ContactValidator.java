package com.forsfortis.bicycleapp.validation;

import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.forsfortis.bicycleapp.vo.ContactVo;
import com.forsfortis.bicycleapp.vo.UserVO;
@Controller
public class ContactValidator implements Validator {

	@Override
	public boolean supports(Class<?> arg0) {
		return ContactVo.class.equals(arg0);
	}

	@Override
	public void validate(Object arg0, Errors errors) {
		// TODO Auto-generated method stub
		ContactVo vo=(ContactVo)arg0;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name","name.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email","email.required");		
	}

}
