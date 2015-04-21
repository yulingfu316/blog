package com.blog.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.blog.dao.IUserDao;
import com.blog.model.User;
import com.blog.util.CookieTool;
/**
 * 通过cookie检查用户是否登录，已登录则将用户名设置到request中
 * @author ylfu
 */
public class CheckLoginStatusInterceptor implements HandlerInterceptor {
	@Autowired
	private IUserDao userDao;
	
	/**
	 * 该方法也是需要当前对应的Interceptor的preHandle方法的返回值为true时才会执行。该方法将在整个请求完成之后，
	 * 也就是DispatcherServlet渲染了视图执行，这个方法的主要作用是用于清理资源的，当然这个方法也只能在当前
	 * 这个Interceptor的preHandle方法的返回值为true时才会执行。
	 */
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, 
			Object arg2, Exception arg3) throws Exception {
	}

	/**
	 * 这个方法只会在当前这个Interceptor的preHandle方法返回值为true的时候才会执行。postHandle是进行处理器拦截用的，
	 * 它的执行时间是在处理器进行处理之后，也就是在Controller的方法调用之后执行，但是它会在DispatcherServlet进行视图的
	 * 渲染之前执行，也就是说在这个方法中你可以对ModelAndView进行操
	 * 作。这个方法的链式结构跟正常访问的方向是相反的，也就是说先声明的Interceptor拦截器该方法反而会后调用
	 * ，这跟Struts2里面的拦截器的执行过程有点像，
	 * 只是Struts2里面的intercept方法中要手动的调用ActionInvocation的invoke方法
	 * ，Struts2中调用ActionInvocation的invoke方法就是调用下一个Interceptor
	 * 或者是调用action，然后要在Interceptor之前调用的内容都写在调用invoke之前
	 * ，要在Interceptor之后调用的内容都写在调用invoke方法之后。
	 */
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
	}

	/**
	 * preHandle方法是进行处理器拦截用的，顾名思义，该方法将在Controller处理之前进行调用，
	 * SpringMVC中的Interceptor拦截器是链式的，可以同时存在
	 * 多个Interceptor，然后SpringMVC会根据声明的前后顺序一个接一个的执行
	 * ，而且所有的Interceptor中的preHandle方法都会在
	 * Controller方法调用之前调用。SpringMVC的这种Interceptor链式结构也是可以进行中断的
	 * ，这种中断方式是令preHandle的返 回值为false，当preHandle的返回值为false的时候整个请求就结束了。
	 */
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		String uri = request.getRequestURI();
		// 设置不拦截的对象
		String[] noFilters = new String[]{"login_form", "register_form", "login", "register"};
		for (String s : noFilters) {
			if (uri.indexOf(s) != -1) {
				return true;
			}
		}
/*		String basePath = request.getScheme() + "://" + request.getServerName() 
				+ ":" + request.getServerPort() + request.getContextPath() + "/";*/
		Cookie emailCookie = CookieTool.getCookieByName(request, "email");
		Cookie passwordCookie = CookieTool.getCookieByName(request, "password");
		if (emailCookie != null && passwordCookie != null) {
			String email = emailCookie.getValue();
			String password = passwordCookie.getValue();
			if (email != null && null != password) {
				// 检查到客户端保存了用户的密码，进行该账户的验证
				User user = userDao.selectByEmail(email);
				if (user == null || !user.getPassword().equals(password)) {
					CookieTool.addCookie(response, "email", null, 0); // 清除Cookie
					CookieTool.addCookie(response, "password", null, 0); // 清除Cookie
				}else{
					request.setAttribute("user.email", user.getEmail());
				}
			}
		}
		return true;
	}
}
