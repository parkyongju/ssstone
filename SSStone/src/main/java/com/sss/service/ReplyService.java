package com.sss.service;

import java.util.List;

import com.sss.domain.Criteria;
import com.sss.domain.ReplyPageDTO;
import com.sss.domain.ReplyVO;

public interface ReplyService {
   public int register(ReplyVO vo);
   public ReplyVO get(Long r_no);
   public int modify(ReplyVO vo);
   public int remove(Long r_no);
   public ReplyPageDTO getListPage(Criteria cri, Long b_no);
}