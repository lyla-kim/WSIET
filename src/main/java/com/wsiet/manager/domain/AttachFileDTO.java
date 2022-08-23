package com.wsiet.manager.domain;

import lombok.Data;

@Data
public class AttachFileDTO {
	private String st_filename;
	private String st_uploadpath;
	private String st_uuid;
	private boolean image;
	
}
