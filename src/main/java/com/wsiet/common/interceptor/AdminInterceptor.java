package com.wsiet.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.wsiet.common.domain.UserVO;

public class AdminInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object obj) throws Exception{
		HttpSession session = req.getSession();
		
		UserVO user = (UserVO)session.getAttribute("user");
		
		if(user == null || user.getStatus() !='0') {
			res.sendRedirect("/common/login");
			
			return false;
		}
		
		return true;
	}
}
