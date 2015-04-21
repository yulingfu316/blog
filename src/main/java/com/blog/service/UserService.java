package com.blog.service;

import com.blog.model.User;

public interface UserService {
	User findUser(int id);
	int saveUser(User user);
	User findUserByEmail(String email);
}
