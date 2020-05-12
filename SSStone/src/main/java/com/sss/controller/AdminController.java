package com.sss.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sss.domain.MemberCriteria;
import com.sss.domain.MemberVO;
import com.sss.domain.PageDTO;
import com.sss.domain.ProductVO;
import com.sss.domain.PurchaseMemberVO;
import com.sss.domain.PurchaseVO;
import com.sss.service.MemberService;
import com.sss.service.ProductService;
import com.sss.service.PurchaseService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/admin/*")
@AllArgsConstructor
@Log4j
public class AdminController {
	private MemberService memberservice;
	private ProductService productservice;
	private PurchaseService purchaseservice;
	private PasswordEncoder pwencoder;
	
	@GetMapping("/member") // list 창 들어 갈때
	public void member(MemberCriteria cri, Model model) {
		model.addAttribute("list", memberservice.getList(cri));
		int total = memberservice.getMemberTotal();
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}

	@GetMapping("/getMemberList")
	public void memberList(@RequestParam("m_no") Long m_no, @ModelAttribute("cri") MemberCriteria cri, Model model) {
		model.addAttribute("member", memberservice.read(m_no));
		model.addAttribute("memberTotalPurchaseAmount",memberservice.memberTotalPurchaseAmount(m_no));
	    model.addAttribute("memberPurchaseAmount",memberservice.memberPurchaseAmount(m_no));
	}

	@GetMapping("/index")
	public void index(Locale locale, Model model) {
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);
		log.info("purchaseservice.priceSalesTotal()" + purchaseservice.priceSalesTotal());

		model.addAttribute("serverTime", formattedDate);
		model.addAttribute("totalPrice", purchaseservice.priceSalesTotal());
		model.addAttribute("countNotDelivery", purchaseservice.countNotDelivery());
		model.addAttribute("countSalesToday", purchaseservice.countSalesToday());
		model.addAttribute("countStockShartage", productservice.countStockShartage());
		model.addAttribute("priceSalesToday", purchaseservice.priceSalesToday());
		model.addAttribute("countTodayAccountMember", memberservice.countTodayAccountMember());
		model.addAttribute("countTodayWithdrawalMember", memberservice.countTodayWithdrawalMember());
	}

	@GetMapping("/productList")
	public void ProductList(Model model) {
		log.info("index : Read");
		model.addAttribute("Read", productservice.getList());
	}

	@GetMapping("/productRegister") // 등록 페이지 겟
	public void GetproductRegister() {
		log.info("-----------get Product register------------");
	}

	@PostMapping("/productRegister") // 등록 페이지 포스트
	public String PostproductRegister(ProductVO product, RedirectAttributes rttr) {
		if (product.getFilelist() != null) {
			product.getFilelist().forEach(file -> log.info(file));
		}
		productservice.register(product);
		rttr.addFlashAttribute("result", product.getP_no());
		return "redirect:/admin/productList";
	}

	@GetMapping("/morris")
	public void morris() {
	}

	@GetMapping("/manager")
	   public void manager(MemberCriteria cri, Model model) {
	      model.addAttribute("readManager", memberservice.readManager(cri));
	   }

	@GetMapping("/productModify")
	public void getProductModify(@RequestParam("p_no") Long p_no, Model model) {
		model.addAttribute("product", productservice.read(p_no));
		model.addAttribute("mainImg", productservice.readMainImg(p_no));
		model.addAttribute("subimg", productservice.readSubImg(p_no));
	}

	// 상품수정 업데이트
	@PostMapping("/productModify")
	public String postProductModify(ProductVO product, RedirectAttributes rttr) {
		if (productservice.modify(product)) {
			rttr.addFlashAttribute("result", "success");
		} else {
			log.info("update fail");
		}
		return "redirect:/admin/productList";
	}

	@GetMapping(value = "/deliveryStatus", produces = { MediaType.APPLICATION_XML_VALUE,
			MediaType.APPLICATION_JSON_UTF8_VALUE })
	public void DeliveryStatus() {

	}

	@GetMapping(value = "/getdeliveryStatus", produces = { MediaType.APPLICATION_XML_VALUE,
			MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<List<PurchaseVO>> getDeliveryStatus() {
		return new ResponseEntity<>(purchaseservice.getList(), HttpStatus.OK);
	}

	@PostMapping("/deliveryStatusTrue") // 트루로 바꾸기
	public void postDeliveryStatus1(@RequestParam("pc_no") Long pc_no, Model model) {
		purchaseservice.updateTrue(pc_no);
	}

	@PostMapping("/deliveryStatusFalse") // false로 바꾸기
	public void postDeliveryStatus2(@RequestParam("pc_no") Long pc_no, Model model) {
		purchaseservice.updateFalse(pc_no);
	}

	@GetMapping("/purchaseOfMember/{pc_no}")
	public ResponseEntity<PurchaseVO> purchaseOfMember(@PathVariable("pc_no") Long pc_no, Model model) {

		return new ResponseEntity<>(purchaseservice.purchaseMember(pc_no), HttpStatus.OK);
	}

	@GetMapping("/purchaseOfProduct/{pc_no}")
	public ResponseEntity<List<PurchaseMemberVO>> purchaseOfProduct(@PathVariable("pc_no") Long pc_no, Model model) {

		return new ResponseEntity<>(purchaseservice.purchaseProduct(pc_no), HttpStatus.OK);
	}

	@GetMapping("/purchaseManagement")
	public void purchaseManagement(@RequestParam("pc_no") Long pc_no, Model model) {
		model.addAttribute("purchaseMember", purchaseservice.purchaseMember(pc_no));
		model.addAttribute("purchaseProduct", purchaseservice.purchaseProduct(pc_no));
	}

	@GetMapping("/adminSignUp")
	public void adminSignUp() {
		log.info("get adminSignUp");
	}

	@PostMapping("/adminSignUp")
	public String adminSignUp(MemberVO member) {
		MemberVO vo = new MemberVO();
		vo = member;
		vo.setM_password(pwencoder.encode(member.getM_password()));
		log.info("=========================");
		log.info("register : " + vo);
		log.info("=========================");
		memberservice.insertManager(vo);
		return "redirect:/admin/index";
	}
}