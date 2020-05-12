package com.sss.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {
	private Long b_no;
	private String b_title;
	private String b_content;
	private Date b_regdate;
	private Date b_updatedate;
	private Long m_no;
	private int r_replyCnt;
	private String b_info;
	
	private String m_email;
}
