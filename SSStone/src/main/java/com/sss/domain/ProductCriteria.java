package com.sss.domain;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Data;

@Data
public class ProductCriteria {
	private int pageNum;
	private int amount;
	private String type;
	private String keyword;
	private String p_category1;
	private String p_category2;
	
	public ProductCriteria(){
		this(1,16);
	}
	public ProductCriteria(int pageNum, int amount)
	{
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	public String[] getTypeArr()
	{
		return type == null? new String[] {} : type.split("");
	}
	public String getListLink()
	{
		UriComponentsBuilder builder = UriComponentsBuilder.fromPath("")
				.queryParam("pageNum", this.pageNum)
				.queryParam("amount", this.getAmount())
				.queryParam("type", this.getType())
				.queryParam("p_category1", this.getP_category1())
				.queryParam("p_category2", this.getP_category2())
				.queryParam("keyword", this.getKeyword());
		return builder.toUriString();
	}
}
