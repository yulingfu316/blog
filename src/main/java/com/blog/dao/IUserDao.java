package com.blog.dao;

import com.blog.model.User;

public interface IUserDao {
	User find(Integer id);
	void delete(Integer id);
	int insertOne(User user);
}
