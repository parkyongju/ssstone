package com.sss.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.sss.domain.BoardVO;
import com.sss.domain.Criteria;

public interface BoardMapper {
  public List<BoardVO> getList();
  public List<BoardVO> getListWithPaging(Criteria cri);
  public void insert(BoardVO board);
  public void insertInfo(BoardVO board);
  public void insertSelectKey(BoardVO board);
  public BoardVO read(Long b_no);
  public int delete(Long b_no);
  public int update(BoardVO board);
  public int getTotalCount(Criteria cri);
  public List<BoardVO> readByM_no(Long m_no);
  
  public void updateReplyCnt(@Param("b_no") Long b_no, @Param("amount") int amount);
}
