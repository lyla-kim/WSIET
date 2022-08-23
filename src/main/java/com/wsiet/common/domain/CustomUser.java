package com.wsiet.common.domain;

import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.password.PasswordEncoder;

import lombok.Getter;
import lombok.extern.log4j.Log4j;

@Getter
@Log4j
public class CustomUser extends User{

	private static final long serialVersionUID = 1L;
	
	private UserVO user;
	
	public CustomUser(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
	}
	
	public CustomUser(UserVO vo) {
		
		super(vo.getUser_id(), vo.getPw(), vo.getAuthList().stream().
				map(auth -> new SimpleGrantedAuthority(auth.getCode_id())).collect(Collectors.toList()));
		
		log.info(vo);
		
		this.user = vo;
	}
}
