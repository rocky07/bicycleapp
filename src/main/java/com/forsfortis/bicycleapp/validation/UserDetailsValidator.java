package com.forsfortis.bicycleapp.validation;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.forsfortis.bicycleapp.vo.BillingDetailsVo;
import com.forsfortis.bicycleapp.vo.UserVO;
@Component
public class UserDetailsValidator implements Validator {

	@Override
	public boolean supports(Class<?> arg0) {
		return BillingDetailsVo.class.equals(arg0);
	}

	@Override
	public void validate(Object arg0, Errors errors) {
		BillingDetailsVo billingDetails=(BillingDetailsVo)arg0;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "first_name","first_name.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "last_name","last_name.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address","address.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "city","city.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "state","state.required");		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "zip","zip.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email","email.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phone","phone.required");		
	}
	

}
