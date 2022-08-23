package com.wsiet.common.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.wsiet.common.domain.UserVO;
import com.wsiet.common.mapper.MyPageMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class MyPageServiceImpl implements MyPageService {

	private MyPageMapper mapper;
	
	@Override
	public UserVO get(String user_id) {
		return mapper.read(user_id);
	}

	@Override
	public boolean modify(UserVO vo) {
		return mapper.update(vo) == 1;
	}

	@Override
	public boolean remove(UserVO vo) {
		return mapper.delete(vo) == 1;
	}

}
