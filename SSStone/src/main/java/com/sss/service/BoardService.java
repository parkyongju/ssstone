package com.sss.service;

import java.util.List; 

import com.sss.domain.BoardVO;
import com.sss.domain.Criteria;



public interface BoardService {
   public void insert(BoardVO board);
   public BoardVO read(Long b_no);
   public boolean update(BoardVO board);
   public boolean delete(Long b_no);
   public List<BoardVO> getList(Criteria cri);
   public List<BoardVO> getListWithPaging(Criteria cri);
   public int getTotalCount(Criteria cri);
}