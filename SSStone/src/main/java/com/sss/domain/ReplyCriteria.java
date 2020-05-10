package com.sss.domain;

import java.util.List;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;

@Data
@AllArgsConstructor
@Getter
public class ReplyCriteria {
	private int pageNum;
	private int amount;
	private String type;
	private String keyword;
	
	public ReplyCriteria(){
		this(1,15);
	}
	public ReplyCriteria(int pageNum, int amount)
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
