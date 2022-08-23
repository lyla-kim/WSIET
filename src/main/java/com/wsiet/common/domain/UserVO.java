package com.wsiet.common.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class UserVO {

	private String user_id;
	private String pw;
	private String user_name;
	private String user_phone;
	private String email;
	private String address1;
	private String address2;
	private String address3;

	private int status; //가입상태(0:활성, 1:비활성)
	private int noShow; //노쇼카운팅
	private Date regdate; //가입일자
	private Date upddate; //업데이트일자
	
	private List<AuthVO> authList;
	
}
