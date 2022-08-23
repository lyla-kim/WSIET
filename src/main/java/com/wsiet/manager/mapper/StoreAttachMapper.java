package com.wsiet.manager.mapper;

import java.util.List;

import com.wsiet.manager.domain.StoreAttachVO;

public interface StoreAttachMapper {

	public void insert(StoreAttachVO vo);
	
	public List<StoreAttachVO> findByNum(int st_num);
	
	public List<StoreAttachVO> getOldFiles(int st_num);
	
	public void delete(String st_uuid);
	
	public void deleteAll(int st_num);
}
