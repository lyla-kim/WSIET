package com.wsiet.common.mapper;


import org.springframework.security.core.userdetails.User;

import com.wsiet.common.domain.UserVO;

public interface UsersMapper {

	//ȸ������
	public void insertUser(UserVO users);
	
	//id�ߺ�üũ
	public int idCheck(String user_id);
	
	//�α���
	public UserVO read(String user_id);
	
	
}
