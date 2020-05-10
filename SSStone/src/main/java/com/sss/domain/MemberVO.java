package com.sss.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.List;


import lombok.Data;

@Data
public class MemberVO implements Serializable{
   private Long m_no;
   private String m_email;
   private String m_name;
   private String m_password;
   private String m_address1;
   private String m_address2;
   private String m_address3;
   private String m_birth1;
   private String m_birth2;
   private String m_birth3;
   private String m_phone1;
   private String m_phone2;
   private String m_phone3;
   private Date m_regdate;
   private Date m_updatedate;
   
   private List<Member_AuthVO> authList;
   
   private String p_name;
   private Long p_price;
   private Long totalpay;
   private int memberTotalPurchaseAmount;
   
   private Long pc_no;
   private Date pc_date;
   private Long purchaseAmount;
   private String userid;
   private String userpw;
   private String userName;
   private boolean enabled;
   private Long p_no;
   private Long s_amount;
   private String p_option;
}