package com.sss.mapper;

import java.util.List;

import com.sss.domain.PurchaseMemberVO;

public interface PurchaseMemberMapper {
	   public void insert(PurchaseMemberVO purchasemember);
	   public  int delete(Long pc_no);
	   public List<PurchaseMemberVO> getList();
	   public PurchaseMemberVO read(Long pc_no);
	   public int purchaseMoney(Long pc_no);
	   public List<PurchaseMemberVO> highSoldProduct();
	   public List<PurchaseMemberVO> purchaseProduct(Long pc_no);
}
