package com.wsiet.common.mapper;

import java.util.List;

import com.wsiet.common.domain.UserVO;

public interface MyPageMapper {

	public UserVO read(String user_id);
	
	public int update(UserVO vo);
	
	//≈ª≈ > status∏¶ 1∑Œ πŸ≤„¡‹
	public int delete(UserVO vo);
}
