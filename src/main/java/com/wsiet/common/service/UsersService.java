package com.wsiet.common.service;


import com.wsiet.common.domain.UserVO;

public interface UsersService {

	//ȸ������
	public void insertUser(UserVO users);
	
	//id�ߺ�üũ
	public int idCheck(String user_id);
	
	//login
	public UserVO read(String user_id);
	
}
