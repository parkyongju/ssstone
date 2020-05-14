package com.sss.service;

import java.util.List;

import org.omg.CORBA.BAD_INV_ORDER;
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
public class BoardServiceImpl implements BoardService {
	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper;

	@Transactional
	@Override
	public void insert(BoardVO board) {
		log.info("insert.............." + board);
		mapper.insertSelectKey(board);
	}

	@Override
	public BoardVO read(Long b_no) {
		log.info("get.............." + b_no);
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

	@Override
	public boolean delete(Long b_no) {
		log.info("remove......." + b_no);
		BoardVO vo = mapper.read(b_no);
		vo.setB_title("삭제된 글 입니다");
		vo.setB_content("삭제된 글입니다.");
		vo.setM_no(1L);
		return mapper.update(vo) == 1;
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

	@Override
	public void insertInfo(BoardVO board) {
		mapper.insertInfo(board);
	}

	@Override
	public List<BoardVO> readByM_no(Long m_no) {
		mapper.readByM_no(m_no);
		return null;
	}

}