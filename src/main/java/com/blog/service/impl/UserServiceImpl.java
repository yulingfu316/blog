package com.blog.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.blog.dao.IUserDao;
import com.blog.model.User;
import com.blog.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Resource
	private IUserDao userDao;
	
	@Override
	public User findUser(int id) {
		return userDao.find(id);
	}

	@Override
	public int saveUser(User user) {
		int row = userDao.insertOne(user);
		return row;
	}
	
	

}
