package com.blog.service.impl;

import javax.annotation.Resource;

import org.junit.Test;

import com.alibaba.fastjson.JSON;
import com.blog.model.User;
import com.blog.service.UserService;
import com.blog.test.BaseTest;

public class TestUserServiceImpl extends BaseTest {
	@Resource
	private UserService userService;
	
	@Test
	public void testSaveUser() {
		User user = new User();
		user.setEmail("461767928@qq.com");
		user.setEmailVerifyCode("testCode");
		user.setPassword("123456");
		logger.info(userService.saveUser(user));
		logger.info(user.getId());
	}
	
	@Test
	public void testFindUser() {
		User user = userService.findUser(1);
		logger.info(JSON.toJSONString(user));
	}
	
	
}
