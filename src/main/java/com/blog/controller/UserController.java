package com.blog.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.blog.model.User;
import com.blog.service.UserService;

@Controller
public class UserController {
	
	@Resource
	private UserService userService;
	
	@RequestMapping(value="/login_form", method=RequestMethod.GET)
	public String loginForm(@RequestParam(value="email", required=false) String email, ModelMap model) {
		if (email != null && !"".equals(email)) {
			model.addAttribute("email", email);
		}
		return "user/login_form";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(@RequestParam String email, @RequestParam String password, 
			@RequestParam String uri, ModelMap model) {
		User user = userService.findUserByEmailAndPassword(email, password);
		if (user != null) {
			return uri;
		} else {
			return "redirect:/login_form/"+email;
		}
	}
	
}
