package com.wsiet.common.service;


import com.wsiet.common.domain.AuthVO;
import com.wsiet.common.domain.UserVO;

public interface UsersService {

	//회원가입
	public void insertUser(UserVO users);
	
	//id중복체크
	public int idCheck(String user_id);
	
	boolean deleteAuth(AuthVO auth);
	
	AuthVO getAuth(String user_id);
	
	UserVO read(String user_id);
	
	UserVO get(String user_id);
}
