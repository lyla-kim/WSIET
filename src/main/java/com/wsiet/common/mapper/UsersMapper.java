package com.wsiet.common.mapper;


import org.springframework.security.core.userdetails.User;

import com.wsiet.common.domain.AuthVO;
import com.wsiet.common.domain.UserVO;

public interface UsersMapper {

	//ȸ������
	public void insertUser(UserVO users);
	
	//id�ߺ�üũ
	public int idCheck(String user_id);
	
	UserVO read(String user_id);
	
	int insertAuth(AuthVO auth);
	
	int updateAuth(AuthVO auth);
	
	int deleteAuth(String id);
	
	AuthVO readAuth(String id);
}
