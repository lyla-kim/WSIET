package com.wsiet.manager.domain;

import lombok.Data;

@Data
public class StoreAttachVO {

	private String st_uuid;
	private int st_num;		//매장번호
	private String st_uploadpath;
	private String st_filename;
	
}
