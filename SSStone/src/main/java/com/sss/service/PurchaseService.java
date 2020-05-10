package com.sss.service;

import java.util.List;

import com.sss.domain.PurchaseMemberVO;
import com.sss.domain.PurchaseVO;

public interface PurchaseService {
	public void register(long m_no);

	public PurchaseVO read(Long pc_no);

	public PurchaseVO readByM_no(Long m_no);

	public boolean delete(Long pc_no);

	public List<PurchaseVO> getList();

	public long getPurchaseMoney(long pc_no);

	public int countNotDelivery(); // 배송이 false

	public int countSalesToday(); // 오늘 판매 건수

	public Long priceSalesToday(); // 오늘 판매 금액

	public Long priceSalesTotal(); // 총 판매 금액

	public int updateTrue(long pc_no);
	public int updateFalse(long pc_no);
	public PurchaseVO purchaseMember(Long pc_no);
	public List<PurchaseMemberVO> purchaseProduct(Long pc_no);

}
