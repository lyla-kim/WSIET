package com.wsiet.common.service;

import java.util.List;

import com.wsiet.common.domain.UserVO;

public interface MyPageService {

	public UserVO get(String user_id);
	
	public boolean modify(UserVO vo);
	
	//Ż�� > status�� 1�� �ٲ���
	public boolean remove(UserVO vo);
}
