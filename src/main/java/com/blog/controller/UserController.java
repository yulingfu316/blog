package com.blog.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.blog.model.User;
import com.blog.service.UserService;
import com.blog.util.CheckCodeUtil;

@Controller
@RequestMapping("/account")
public class UserController {
	
	@Resource
	private UserService userService;
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String loginForm(@RequestParam(value="ref", required=false) String ref, ModelMap model) {
		if (ref != null && !"".equals(ref)) {
			model.put("ref", ref);
		}else {
			model.put("ref", "index");
		}
		return "user/login_form";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> login(@RequestParam String accountId, @RequestParam String password, 
			@RequestParam String ref) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		User user = userService.findUserByEmail(accountId);
		if (user == null) {
			// 用户不存在
			resultMap.put("error", "null");
			resultMap.put("message", "用户名或者邮箱不存在！");
			return resultMap;
		}
		if (!user.getPassword().equals(password)) {
			// 用户密码错误
			resultMap.put("error", "password");
			resultMap.put("message", "密码错误！");
			return resultMap;
		}
		if (ref != null && !"".equals(ref)) {
			resultMap.put("redirect", ref);
			return resultMap;
		}
		resultMap.put("redirect", "index");
		return resultMap;
	}
	
	@RequestMapping(value="/checkcode", method=RequestMethod.GET)
	public void checkcode(HttpServletResponse response, HttpSession session) throws IOException {
		//禁止缓存
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "No-cache");
		response.setDateHeader("Expires", 0);
		// 指定生成的响应是图片
		response.setContentType("image/jpeg");
		ServletOutputStream out = response.getOutputStream();
		String checkCode = CheckCodeUtil.checkCodeImg(out);
		session.setAttribute("checkCode", checkCode.toLowerCase());
		out.close();
	}
	
}
