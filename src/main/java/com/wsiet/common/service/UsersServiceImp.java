package com.wsiet.common.service;


import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.wsiet.common.domain.AuthVO;
import com.wsiet.common.domain.UserVO;
import com.wsiet.common.mapper.UsersMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class UsersServiceImp implements UsersService {

	private UsersMapper mapper;
	private PasswordEncoder password;
	
	@Override
	public void insertUser(UserVO users) {
		users.setPw(password.encode(users.getPw()));
		mapper.insertUser(users);
		AuthVO auth = new AuthVO();
		auth.setCode_id("C1001");
		auth.setUser_id(users.getUser_id());
		log.info("insert...."+users);
		mapper.insertAuth(auth);
	}

	@Override
	public int idCheck(String user_id) {
		
		return mapper.idCheck(user_id);
	}

	@Override
	public boolean deleteAuth(AuthVO auth) {
		return mapper.deleteAuth(auth.getUser_id()) > 0;
	}

	@Override
	public AuthVO getAuth(String user_id) {
		return mapper.readAuth(user_id);
	}

	@Override
	public UserVO read(String user_id) {
		return mapper.read(user_id);
	}

	@Override
	public UserVO get(String user_id) {
		return mapper.read(user_id);
	}

	

}
