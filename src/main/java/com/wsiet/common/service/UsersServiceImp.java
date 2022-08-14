package com.wsiet.common.service;


import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.wsiet.common.domain.UserVO;
import com.wsiet.common.mapper.UsersMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class UsersServiceImp implements UsersService {

	private UsersMapper mapper;
	
	@Override
	public void insertUser(UserVO users) {

		log.info("insert...."+users);
		mapper.insertUser(users);
	}

	@Override
	public int idCheck(String user_id) {
		
		return mapper.idCheck(user_id);
	}

	@Override
	public UserVO read(String user_id) {

		return mapper.read(user_id);
	}

}
