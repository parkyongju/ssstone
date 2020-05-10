package com.sss.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class ReplyVO {
   private Long r_no;
   private int r_dept;
   private String r_content;
   private Date r_regdate;
   private Date r_updatedate;
   private Long m_no;
   private Long b_no;
   private String m_email;
   
   private String r_parent;
   private String r_depth;
   private Integer r_order;
   
   private List<ReplyVO> list;

}