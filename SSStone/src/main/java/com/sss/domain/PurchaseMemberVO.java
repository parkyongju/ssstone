package com.sss.domain;


import lombok.Data;

@Data
public class PurchaseMemberVO {
   private Long pc_no;
   private Long p_no;
   private Long s_amount;
      
   private String p_name;
   private String p_category1;
   private String p_category2;
   private String p_option;
   private Long p_price;
   private Long p_stock;
   
}