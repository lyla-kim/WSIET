package com.wsiet.common.service;


import com.wsiet.common.domain.AuthVO;
import com.wsiet.common.domain.UserVO;

public interface UsersService {

	//ȸ������
	public void insertUser(UserVO users);
	
	//id�ߺ�üũ
	public int idCheck(String user_id);
	
	boolean deleteAuth(AuthVO auth);
	
	AuthVO getAuth(String user_id);
	
	UserVO read(String user_id);
	
	UserVO get(String user_id);
}
