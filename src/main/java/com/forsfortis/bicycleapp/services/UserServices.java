package com.forsfortis.bicycleapp.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forsfortis.bicycleapp.dao.UserDao;
import com.forsfortis.bicycleapp.model.User;
import com.forsfortis.bicycleapp.vo.UserVO;

@Service
public class UserServices {
	@Autowired
	UserDao userDao;
	public boolean saveUser(User user){
		userDao.saveUser(user);
		return false;
	}
	
	public UserVO userLogin(String userName,String password){
		return userDao.userLogin(userName,password);
	}
	
}
