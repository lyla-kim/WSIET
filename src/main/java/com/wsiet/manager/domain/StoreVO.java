package com.wsiet.manager.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class StoreVO {

	private String code_id;	//카테고리
	private int st_num;	//시퀀스, 매장번호
	private String user_id; //작성자
	private String st_name;
	private String st_biznum;
	private String st_address1;
	private String st_address2;
	private String st_address3;
	private String st_phone;
	private String startTime1;
	private String startTime2;
	private String endTime1;
	private String endTime2;
	private String st_content;
	private int st_reviewAvg;
	private Date regdate;
	private Date upddate;
	
	private List<StoreAttachVO> attachList;
	
	
	
	
}
