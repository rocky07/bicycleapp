package com.forsfortis.bicycleapp.dao;

import com.forsfortis.bicycleapp.model.User;
import com.forsfortis.bicycleapp.model.UserDetails;
import com.forsfortis.bicycleapp.vo.UserVO;

public interface UserDao {
	public int saveUser(User user);
	public UserVO userLogin(String userName,String password);
	public int saveUserDetails(UserDetails userDetails);
}
