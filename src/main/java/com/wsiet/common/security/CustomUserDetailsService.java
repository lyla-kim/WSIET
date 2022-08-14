package com.wsiet.common.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.wsiet.common.domain.UserVO;
import com.wsiet.common.mapper.UsersMapper;
import com.wsiet.common.security.domain.CustomAdmin;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailsService implements UserDetailsService {

	@Setter(onMethod_ = @Autowired)
	private UsersMapper mapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		String user_id = username;
		// TODO Auto-generated method stub
		log.warn("user By user_id: "+user_id);
		
		UserVO vo = mapper.read(user_id);
		
		log.warn("queried by admin mapper: "+vo);
		
		return vo == null ? null : new CustomAdmin(vo);
	}

}
