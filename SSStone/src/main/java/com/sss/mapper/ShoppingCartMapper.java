package com.sss.mapper;

import java.util.List;

import com.sss.domain.Shopping_cartVO;

public interface ShoppingCartMapper {
   public List<Integer> cartMoney(Long m_no);
   
   public int sumMoney(Long m_no);
   public int countCart(Shopping_cartVO vo);
   public List<Shopping_cartVO> listCart(Long s_no);
   public void insert(Shopping_cartVO vo);
   public int delete(Long s_no);
   public int deleteAll(Long m_no);
   public long getamount(Shopping_cartVO vo);
   public List<Shopping_cartVO> readByM_no(Long m_no);
   public void update (Shopping_cartVO vo);
}