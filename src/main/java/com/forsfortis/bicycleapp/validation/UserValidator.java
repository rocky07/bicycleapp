package com.forsfortis.bicycleapp.validation;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.forsfortis.bicycleapp.vo.UserVO;
@Component
public class UserValidator implements Validator {

	@Override
	public boolean supports(Class<?> arg0) {
		return UserVO.class.equals(arg0);
	}

	@Override
	public void validate(Object arg0, Errors errors) {
		UserVO user=(UserVO)arg0;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name","name.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email","email.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password","password.required");		
	
		if(!user.getPassword().equals(user.getCpassword())){
			errors.rejectValue("cpassword", "password.mismatches");
		}
	}
	

}
