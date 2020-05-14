package com.sss.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.sss.domain.Criteria;
import com.sss.domain.ReplyVO;

public interface ReplyMapper {
   public int insert(ReplyVO vo);
   public ReplyVO read(Long r_no);
   public int delete(Long r_no);
   public int update(ReplyVO r_content);
   
   public List<ReplyVO> getList(Criteria cri,Long b_no);
   
   public List<ReplyVO> getListWithPaging
   (@Param("cri")Criteria cri, @Param("b_no") Long b_no);
   public int getCountByb_no(Long b_no);
   
   public ReplyVO selectParent(Long r_no);
   
   public int selectMaxOrder(Long b_no);
   
   public int updateOrder(ReplyVO vo);
   
}