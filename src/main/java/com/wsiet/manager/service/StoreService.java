package com.wsiet.manager.service;

import java.util.List;

import com.wsiet.manager.domain.StoreAttachVO;
import com.wsiet.manager.domain.StoreVO;

public interface StoreService {
	
	public List<StoreVO> getList();

	public void register(StoreVO stvo);
	
	public StoreVO getStore(int st_num);
	
	public List<StoreAttachVO> getAttachList(int st_num);
	
	public boolean modify(StoreVO stvo);
	
	public boolean remove(int st_num);
	
	//사업자번호 중복체크
	public int bizNumCheck(String bizNum);
}
