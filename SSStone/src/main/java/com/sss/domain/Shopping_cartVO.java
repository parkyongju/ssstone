package com.sss.domain;

import java.util.List;

import lombok.Data;

@Data
public class Shopping_cartVO {
	private Long s_no;
	private Long p_no;
	private Long m_no;
	private Long s_amount;
	
	private List<Shopping_cartVO> cartlist;
	
	private String p_name;
	private String p_category1;
	private String p_category2;
	private Long p_price;
	private String p_option;
	
	private String p_filename;
	private String p_uuid;
	private String p_filepath;
	private boolean p_filetype;
	
	
}
