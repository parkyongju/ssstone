package com.sss.domain;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Data;
import lombok.ToString;

@Data
@ToString

public class BoardCriteria {
   
   private int pageNum;
   private int amount;
   private String type;
   private String keyword;
   
   private int startPage;
   private int endPage;
   
   private int firstPage;
   private int lastPage;
   
   private boolean prev, next;
   
   private int total;
   private Criteria cri;
   
   public BoardCriteria(){
      this(1,30);
   }
   public BoardCriteria(int pageNum, int amount)
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
   
   public BoardCriteria(Criteria cri, int total)
   {
      this.cri = cri;
      this.total= total;
      
      this.endPage=(int)(Math.ceil(cri.getPageNum()/10.0))*10;
      this.startPage = this.endPage-9;

      int realEnd = (int)(Math.ceil((total*1.0)/cri.getAmount()));
      
      this.firstPage=1;
      this.lastPage=realEnd;
      
      if(realEnd < this.endPage)
      {
         this.endPage = realEnd;
      }
      this.prev = this.startPage>1;
      this.next = this.endPage < realEnd;
   }

}