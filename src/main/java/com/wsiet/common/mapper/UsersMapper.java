package com.wsiet.common.mapper;


import org.springframework.security.core.userdetails.User;

import com.wsiet.common.domain.AuthVO;
import com.wsiet.common.domain.UserVO;

public interface UsersMapper {

	//회원가입
	public void insertUser(UserVO users);
	
	//id중복체크
	public int idCheck(String user_id);
	
	UserVO read(String user_id);
	
	int insertAuth(AuthVO auth);
	
	int updateAuth(AuthVO auth);
	
	int deleteAuth(String id);
	
	AuthVO readAuth(String id);
}
