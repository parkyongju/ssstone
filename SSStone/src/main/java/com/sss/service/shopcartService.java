package com.sss.service;

import java.util.List;

import com.sss.domain.Shopping_cartVO;

public interface shopcartService {
	
	public int sumMoney(Long m_no);
	public int countCart(Shopping_cartVO vo);
	public List<Shopping_cartVO> listCart(Long m_no);
	public void insert(Shopping_cartVO vo);
	public boolean delete(Long p_no);
	public boolean deleteAll(Long m_no);
	public long getamount(Shopping_cartVO vo);

}
