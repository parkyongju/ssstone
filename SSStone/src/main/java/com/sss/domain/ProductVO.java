package com.sss.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class ProductVO {
	private Long p_no;
	private String p_name;
	private String p_content;
	private String p_category1;
	private String p_category2;
	private Long p_price;
	private Long p_stock;
	private String p_option;
	private Date p_regdate;
	private Date p_updatedate;
	
	private List<ProductImgDTO> filelist;
	private String p_filename;
	private String p_uuid;
	private String p_filepath;
	private boolean p_filetype;
}
