package com.sss.mapper;

import java.util.List;

import com.sss.domain.MemberCriteria;
import com.sss.domain.MemberVO;


public interface MemberMapper /* 데이터베이스에 들어가는 틀을 만들어준다*/
{
   public void insert(MemberVO vo); /* 데이터를 추가하는 인터페이스*/
   public List<MemberVO> getList(MemberCriteria cri);  /* 데이터 전체를 불러오는 인터페이스*/
   public MemberVO read(Long m_no); /* 데이터를 읽어오는 인터페이스*/
   public MemberVO readByEmail(String m_email);
   public int delete(long p_no); /* 데이터를 지우는 인터페이스*/
   public int update(MemberVO vo); /* 데이터 수정하는 인터페이스 */
   public Integer getMemberTotal();
   public List<MemberVO> countTodayAccountMember();
   public List<MemberVO> countTodayWithdrawalMember();
   public Integer memberTotalPurchaseAmount(Long m_no);
   public List<MemberVO> memberPurchaseAmount(Long m_no);
   public int checkID(String m_email);
   public List<MemberVO> readManager(MemberCriteria cri);
   public List<MemberVO> mypage(Long m_no);
   public List<MemberVO> mypageDetail(Long pc_no);
   public List<MemberVO> order(Long m_no);
   public List<MemberVO> orderDetail(Long pc_no);
   public Long total(Long pc_no);
}