package com.forsfortis.bicycleapp.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.forsfortis.bicycleapp.dao.UserDao;
import com.forsfortis.bicycleapp.model.User;
import com.forsfortis.bicycleapp.model.UserDetails;
import com.forsfortis.bicycleapp.vo.UserVO;
@Transactional
@Repository("userDao")
public class UserDaoImpl extends AbstractDao implements UserDao {

	@Override
	public int saveUser(User user) {
		return (Integer)getSession().save(user);
	}

	@Override
	public UserVO userLogin(String userName, String password) {
		UserVO userVo=null;
		final Criteria createCriteria = getSession().createCriteria(User.class);
		createCriteria.add(Restrictions.eq("email",userName));
		createCriteria.add(Restrictions.eq("password",password));
		final List<User> list = createCriteria.list();
		if(!list.isEmpty()){			
			User user=list.get(0);
			userVo=new UserVO();
			BeanUtils.copyProperties(user, userVo);
		}
		
		return userVo;
	}

	@Override
	public int saveUserDetails(UserDetails userDetails) {
		return (Integer)getSession().save(userDetails);
	}

}
