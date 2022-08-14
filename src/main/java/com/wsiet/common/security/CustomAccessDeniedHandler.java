package com.wsiet.common.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;

import lombok.extern.log4j.Log4j;

/*
 * 접근 제한이 된 경우 다양한 처리를 하고 싶다면 직접 AccessDeniedHandeler 인터페이스를 구현하는 편이 좋음
 * CustomeAccessDeniedHandeler 클래스는 AccessDeniedHandler 인터페이스를 직접 구현
 * 인터페이스의 매서드는 handle() 뿐이고 HttpServletRequest/Response를 파라미터로 사용하기 때문에 직접적으로 서블릿 api 이용 처리 가능
 */

@Log4j
public class CustomAccessDeniedHandler implements AccessDeniedHandler{
	
	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response,
			AccessDeniedException accessDeniedException) throws IOException, ServletException {

		log.error("access Denied Handler");
		log.error("Redirect...");
		
		response.sendRedirect("/accessError");
	}
}