package com.sss.domain;


import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageDTO {
	private int startPage;
	private int endPage;
	private boolean prev, next;
	private int realEnd;
	private int total;
	private MemberCriteria cri;
	private Criteria boardcri;
	private ProductCriteria productcriteria;
	
	public PageDTO(MemberCriteria cri2, int total)
	{
		this.cri = cri2;
		this.total= total;
		this.endPage=(int)(Math.ceil(cri2.getPageNum()/10.0))*10;
		this.startPage = this.endPage-9;
		realEnd = (int)(Math.ceil((total*1.0)/cri2.getAmount()));
		if(realEnd < this.endPage)
		{
			this.endPage = realEnd;
		}
		this.prev = this.startPage>1;
		this.next = this.endPage < realEnd;
	}
	public PageDTO(Criteria cri, int total)
	{
		this.boardcri = cri;
		this.total= total;
		this.endPage=(int)(Math.ceil(boardcri.getPageNum()/10.0))*10;
		this.startPage = this.endPage-9;
		realEnd = (int)(Math.ceil((total*1.0)/boardcri.getAmount()));
		if(realEnd < this.endPage)
		{
			this.endPage = realEnd;
		}
		this.prev = this.startPage>1;
		this.next = this.endPage < realEnd;
	}
	
	public PageDTO(ProductCriteria cri, int total)
	{
		this.productcriteria = cri;
		this.total= total;
		this.endPage=(int)(Math.ceil(productcriteria.getPageNum()/10.0))*10;
		this.startPage = this.endPage-9;
		realEnd = (int)(Math.ceil((total*1.0)/productcriteria.getAmount()));
		if(realEnd < this.endPage)
		{
			this.endPage = realEnd;
		}
		this.prev = this.startPage>1;
		this.next = this.endPage < realEnd;
	}
}
