package com.sss.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sss.domain.BoardVO;
import com.sss.domain.Criteria;
import com.sss.domain.PageDTO;
import com.sss.service.BoardService;
import com.sss.service.ProductService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/shop/*")
@Log4j
@AllArgsConstructor
public class MainController {
   
   private BoardService boardservice;
   
   private ProductService productservice;
   @GetMapping("/main")
   public void main(Model model) {
         model.addAttribute("read",productservice.readSoldout());
         model.addAttribute("readHot", productservice.readHot());
         model.addAttribute("readNew", productservice.readNew());
   }

   @GetMapping("/faq")
   public void faq() {

   }

   @GetMapping("/about")
   public void about() {

   }

   @GetMapping("/comingsoon")
   public void commingsoon(Model model) {

   }

   @GetMapping("/blogPost")
   public void blogPost() {

   }
   //게시판 목록
   @GetMapping("/boardList")
   public void BoardList(Model model, Criteria cri) {
      model.addAttribute("list", boardservice.getListWithPaging(cri));
      int total = boardservice.getTotalCount(cri);
      model.addAttribute("pageMaker", new PageDTO(cri, total));
   }
   
   //게시판 등록 - 로그인 해야 함
   @PreAuthorize("isAuthenticated()")
   @PostMapping("/registerBoardList")
   public String RegisterBoardList(BoardVO board, RedirectAttributes rttr){
   log.info("RegisterBoardList: " + board);
   boardservice.insert(board);
   rttr.addFlashAttribute("registerBoardList", board.getB_no());
      return "redirect:/shop/boardList";
   }
   //게시판 등록 페이지
   @PreAuthorize("isAuthenticated()")
   @GetMapping("/registerBoardList")
   public void RegisterBoardList(){
      
   }
   //게시판 상세
   @GetMapping({"/getBoardList", "/modifyBoardList"})
   public void get(@RequestParam("b_no") Long b_no, @ModelAttribute("cri") Criteria cri, Model model){
      
      log.info("/getBoardList or modifyBoardList");
      model.addAttribute("board", boardservice.read(b_no));
   }
   
   //게시판 수정 - 등록자만 수정 가능
//   @PreAuthorize("isAuthenticated() and (principal.username == #board.m_email or hasRole('ROLE_MANAGER') )")
   @PostMapping("/modifyBoardList")
   public String modify(BoardVO board, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr){
      log.info("modifyBoardList :" + board);
      
      if(boardservice.update(board)) {
         rttr.addFlashAttribute("result", "success");
      }
      
      rttr.addAttribute("pageNum", cri.getPageNum());
      rttr.addAttribute("amount", cri.getAmount());
      rttr.addAttribute("type", cri.getType());
      rttr.addAttribute("keyword", cri.getKeyword());
      
      return "redirect:/shop/boardList" + cri.getListLink();
   }
   
   @PostMapping("/removeBoardList")
   public String RemoveBoardList(@RequestParam("b_no") Long b_no, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr){
      
      log.info("removeBoardList..." + b_no);;
      if(boardservice.delete(b_no)){
      rttr.addFlashAttribute("result", "success");
      }
      
      rttr.addAttribute("pageNum", cri.getPageNum());
      rttr.addAttribute("amount", cri.getAmount());
      rttr.addAttribute("type", cri.getType());
      rttr.addAttribute("keyword", cri.getKeyword());
      
      return "redirect:/shop/boardList" + cri.getListLink();
   }
   
   @PostMapping("/infoRegister")
   public String infoRegister(BoardVO vo)
   {
	   boardservice.insertInfo(vo);
	   
	   return "redirect:/shop/boardList";
   }
   
   @GetMapping("/storelocator")
   public void storelocator()
   {
      
   }

}