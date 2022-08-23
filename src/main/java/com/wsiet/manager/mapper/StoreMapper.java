package com.wsiet.manager.mapper;

import java.util.List;

import com.wsiet.manager.domain.StoreVO;

public interface StoreMapper {

	public List<StoreVO> selectAllStore();
	
	public void insertStore(StoreVO stvo);
	
	public int updateStore(StoreVO stvo);
	
	public int deleteStroe(int st_num);
	
	public StoreVO selectStoreByNum(int st_num);
	
	//사업자번호 중복체크
	public int bizNumCheck(String bizNum);
}
