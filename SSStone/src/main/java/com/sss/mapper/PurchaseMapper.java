package com.sss.mapper;

import java.util.List;

import com.sss.domain.PurchaseVO;

public interface PurchaseMapper {
   public void insert(long m_no);
   public int delete(Long pc_no);
   public List<PurchaseVO> getList();
   public int updateTrue(long pc_no);
   public int updateFalse(long pc_no);
   public PurchaseVO read(Long pc_no);
   public long readByM_no(Long m_no);
   public long getPurchaseMoney(Long pc_no);
   public int countNotDelivery(); //배송 false
   public int countSalesToday(); //오늘 판매 건수
   public Long priceSalesToday();  //오늘 판매 금액
   public Long priceSalesTotal(); //총 판매 금액
//   public List<PurchaseVO> serchTheDay(String string); //특정 날짜 조회
   public PurchaseVO purchaseMember(Long pc_no);
   
}