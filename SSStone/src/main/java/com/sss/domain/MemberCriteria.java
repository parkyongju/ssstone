package com.sss.domain;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Data;

@Data
public class MemberCriteria {
	private int pageNum;
	private int amount;
	private String type;
	private String keyword;
	
	public MemberCriteria(){
		this(1,25);
	}
	public MemberCriteria(int pageNum, int amount)
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
				.queryParam("keyword", this.getKeyword());
		return builder.toUriString();
				
	}
}
