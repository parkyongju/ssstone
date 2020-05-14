package com.sss.service;

import java.util.List; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sss.domain.Criteria;
import com.sss.domain.ReplyPageDTO;
import com.sss.domain.ReplyVO;
import com.sss.mapper.BoardMapper;
import com.sss.mapper.ReplyMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;


@Service
@Log4j
@AllArgsConstructor
public class ReplyServiceImpl implements ReplyService {
   @Setter(onMethod_ = @Autowired)
   private ReplyMapper mapper;
   
   @Setter(onMethod_ = @Autowired)
   private BoardMapper boardMapper;

   @Transactional
   @Override
   public int register(ReplyVO vo) {
	   if (vo.getR_no() != null || !"".equals(vo.getR_no())) 			//r_no가 있으면 실행
	   { 		
           if (vo.getR_parent() != null) {								//리리플이면		
               ReplyVO replyInfo = mapper.selectParent(vo.getR_no());
               vo.setR_depth(replyInfo.getR_depth());
               vo.setR_order(replyInfo.getR_order()+1);
               mapper.updateOrder(replyInfo);
           } 
           else 
           {
               Integer reorder = mapper.selectMaxOrder(vo.getB_no());		//그냥 댓글
               vo.setR_order(reorder);
           }
           return   mapper.insert(vo);
       } 
	   else 							//r_no가 있으면 실행
	   {
    	   return mapper.insert(vo);
       }
//      log.info("register...." + vo);
//      boardMapper.updateReplyCnt(vo.getB_no(), 60);
//      return mapper.insert(vo);
	   
   }

   @Override
   public ReplyVO get(Long r_no) {
      log.info("get......" + r_no);
      return mapper.read(r_no);
   }

   @Override
   public int modify(ReplyVO vo) {
	   ReplyVO origin = new ReplyVO();
	   origin = mapper.read(vo.getR_no());
	   ReplyVO change = vo;
	   change.setM_no(origin.getM_no());
      log.info("modify........" + vo);
      return mapper.update(vo);
   }

//   @Transactional
   @Override
   public int remove(Long r_no) {
      log.info("remove....." + r_no);
      ReplyVO vo = mapper.read(r_no);
      vo.setR_content("삭제된 내용 입니다.");
      vo.setM_no(1L);
//      boardMapper.updateReplyCnt(vo.getB_no(), -1);
      return mapper.update(vo);
   }


   @Override
   public ReplyPageDTO getListPage(Criteria cri, Long b_no) {
      
      return new ReplyPageDTO(mapper.getCountByb_no(b_no), 
            mapper.getListWithPaging(cri, b_no));
   }
   
}