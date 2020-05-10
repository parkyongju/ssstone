package com.sss.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class PurchaseVO {
	private Long pc_no;
	private Long m_no;
	private Date pc_date;
	private String pc_deliverystatus;
	private List<PurchaseVO> purchaseList;
	private List<PurchaseMemberVO> purchasememberList;

	private String m_email;
	private String m_name;
	private String m_phone1;
	private String m_phone2;
	private String m_phone3;
	private String m_address1;
	private String m_address2;
	private String m_address3;
}
