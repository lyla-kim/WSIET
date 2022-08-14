package com.wsiet.common.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;

import lombok.extern.log4j.Log4j;

/*
 * ���� ������ �� ��� �پ��� ó���� �ϰ� �ʹٸ� ���� AccessDeniedHandeler �������̽��� �����ϴ� ���� ����
 * CustomeAccessDeniedHandeler Ŭ������ AccessDeniedHandler �������̽��� ���� ����
 * �������̽��� �ż���� handle() ���̰� HttpServletRequest/Response�� �Ķ���ͷ� ����ϱ� ������ ���������� ���� api �̿� ó�� ����
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