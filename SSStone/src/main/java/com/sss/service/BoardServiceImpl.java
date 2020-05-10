package com.sss.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sss.domain.BoardVO;
import com.sss.domain.Criteria;
import com.sss.mapper.BoardMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@AllArgsConstructor
@Log4j
@Service
public class BoardServiceImpl implements BoardService{
   @Setter(onMethod_ = @Autowired)
   private BoardMapper mapper;
   
   @Transactional
   @Override
   public void insert(BoardVO board) {
      log.info("insert.............."+board);
      mapper.insertSelectKey(board);
   }

   @Override
   public BoardVO read(Long b_no) {
      log.info("get.............."+b_no);
      return mapper.read(b_no);
   }

   @Transactional
   @Override
   public boolean update(BoardVO board) {
      log.info("update..........." + board);
      boolean updateResult = mapper.update(board) == 1;
      log.info("=====================================================");
      log.info(updateResult);
      return updateResult;
   }

   @Transactional
   @Override
   public boolean delete(Long b_no) {
      log.info("remove......."+b_no);
      return mapper.delete(b_no)==1;
   }
   
   @Override
   public List<BoardVO> getListWithPaging(Criteria cri) {
      log.info("get List with criteria : " + cri);
      return mapper.getListWithPaging(cri);
   }

   @Override
   public int getTotalCount(Criteria cri) {
      log.info("get total count");
      return mapper.getTotalCount(cri);
   }
   
   @Override
   public List<BoardVO> getList(Criteria cri) {
      log.info("get List with criteria: " + cri);
      return mapper.getListWithPaging(cri);
   }

}