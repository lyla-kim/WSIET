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

	private int status; //���Ի���(0:Ȱ��, 1:��Ȱ��)
	private int noShow; //���ī����
	private Date regdate; //��������
	private Date upddate; //������Ʈ����
	
	private List<AuthVO> authList;
	
}
