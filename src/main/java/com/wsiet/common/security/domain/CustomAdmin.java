package com.wsiet.common.security.domain;

import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import com.wsiet.common.domain.UserVO;

import lombok.Getter;

@Getter
public class CustomAdmin extends User {

private static final long serialVersionUID = 1L;
	
	private UserVO admin;
	
	public CustomAdmin(String username, String password, Collection<? extends GrantedAuthority> authorities ) {
		super(username, password, authorities);
	}
	
	public CustomAdmin(UserVO vo) {
		super(vo.getUser_id(), vo.getPw(), vo.getAuthList().stream()
				.map(auth -> new SimpleGrantedAuthority(auth.getCode_id())).collect(Collectors.toList()));
		
		this.admin = vo;
	}
}
