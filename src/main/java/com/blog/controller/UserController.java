package com.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {
	
	@RequestMapping(value="/login_form", method=RequestMethod.GET)
	public String loginForm() {
		return "user/login_form";
	}
	
}
