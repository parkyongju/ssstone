package com.sss.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sss.domain.Shopping_cartVO;
import com.sss.service.MemberService;
import com.sss.service.PurchaseService;
import com.sss.service.shopcartService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/payment/*")
@AllArgsConstructor
@Log4j
public class PaymentController {
   private shopcartService cartService;
   private MemberService memberService;
   private PurchaseService purchseservice;
   
   @GetMapping("/checkout")
   public void checkout(@RequestParam Long m_no, Model model) {
      log.info("checkout");
      model.addAttribute("cartlist",cartService.listCart(m_no));
      model.addAttribute("read",memberService.read(m_no));
      model.addAttribute("sumMoney", cartService.sumMoney(m_no));
   }
   
   @PostMapping("/checkout")
   public String checkregister(Long m_no){
      log.info("추가됨");
      purchseservice.register(m_no);
      return "redirect:/shop/main";
   }

   @GetMapping("/ordercompleted")
   public void ordercompleted() 
   {
	  
   }

   @GetMapping("/shopcart")//페이지 들어가기
   public void shopcart(@RequestParam("m_no") Long m_no) {
   }
   
   @GetMapping("/getshopcart/{m_no}")		//쇼핑카트 항목 가져오기
   public ResponseEntity<List<Shopping_cartVO>> getshopcart(@PathVariable("m_no") Long m_no, Model model) {
      return new ResponseEntity<> (cartService.listCart(m_no), HttpStatus.OK);
   }
   
   @ResponseBody
   @PostMapping("/shopcart")
   public void postshopcart(String p_no, String m_no, String s_count ) throws Exception
   {
      Shopping_cartVO cart = new Shopping_cartVO();
      cart.setP_no(Long.parseLong(p_no));
      cart.setM_no(Long.parseLong(m_no));
      cart.setS_amount(Long.parseLong(s_count));
      cartService.insert(cart);
      
//      log.info(cartvo.getP_no());
//      log.info(cartvo.getM_no());
//      log.info(cartvo.getS_amount());
   }
   
   @ResponseBody
   @RequestMapping(value="/deleteCart", method = {RequestMethod.GET, RequestMethod.POST})
    public int delete(@RequestParam Long s_no, Model model) throws Exception  {
      
	   if(cartService.delete(s_no) == true)
	   {
		   return 1;
	   }
	   else
	   {
		   return 0;
	   }
      
    }
}