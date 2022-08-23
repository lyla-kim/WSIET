package com.wsiet.manager.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wsiet.manager.domain.StoreAttachVO;
import com.wsiet.manager.domain.StoreVO;
import com.wsiet.manager.mapper.StoreAttachMapper;
import com.wsiet.manager.mapper.StoreMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class StoreServiceImple implements StoreService {

	private StoreMapper stMapper;
	private StoreAttachMapper attachMapper;
	
	@Override
	@Transactional
	public void register(StoreVO stvo) {
		log.info("register....."+stvo);
		stMapper.insertStore(stvo);
		log.info("stvo :: " + stvo);
		if(stvo.getAttachList() == null || stvo.getAttachList().size()<0) {
			return;
		}
		
		stvo.getAttachList().forEach(attach -> {
			attach.setSt_num(stvo.getSt_num());
			
			attachMapper.insert(attach);
		});
	}

	@Override
	public StoreVO getStore(int st_num) {
		log.info("store info..."+st_num);
		return stMapper.selectStoreByNum(st_num);
	}

	@Override
	public List<StoreAttachVO> getAttachList(int st_num) {
		log.info("get attach list by st_num=====");
		return attachMapper.findByNum(st_num);
	}

	@Override
	@Transactional
	public boolean modify(StoreVO stvo) {
		log.info("modify:::"+stvo);
		
		boolean modifyResult = stMapper.updateStore(stvo) == 1;
		
		if(stvo.getAttachList() != null) {
			attachMapper.deleteAll(stvo.getSt_num());
			if(modifyResult && stvo.getAttachList().size() > 0) {
				stvo.getAttachList().forEach(attach -> {
					attach.setSt_num(stvo.getSt_num());
					attachMapper.insert(attach);
				});
			}
		}
		return modifyResult;
	}

	@Override
	@Transactional
	public boolean remove(int st_num) {
		log.info("delete store....."+st_num);
		
		attachMapper.deleteAll(st_num);
		
		return stMapper.deleteStroe(st_num) == 1;
	}

	@Override
	public List<StoreVO> getList() {
		log.info("storeList");
		return stMapper.selectAllStore();
	}

	@Override
	public int bizNumCheck(String bizNum) {
		
		return stMapper.bizNumCheck(bizNum);
	}

}
