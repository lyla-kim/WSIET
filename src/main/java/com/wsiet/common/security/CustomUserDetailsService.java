package com.wsiet.common.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.wsiet.common.domain.CustomUser;
import com.wsiet.common.domain.UserVO;
import com.wsiet.common.mapper.UsersMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired @Setter
	private UsersMapper mapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		log.warn("user By user_id: "+username);
		
		UserVO vo = mapper.read(username);
		
		log.warn("queried by admin mapper: "+vo);
		
		return vo == null ? null : new CustomUser(vo);
	}

}
