package com.sss.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.sss.domain.MemberVO;
import com.sss.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/member/*")
@AllArgsConstructor
@Log4j
public class MemberController {
	private MemberService memberservice;
	private PasswordEncoder pwencoder;
	JavaMailSender mailSender; // 메일 서비스를 사용하기 위해 의존성을 주입함.

	@GetMapping("/account")
	public void getRegister(Model model) {
		int ran = new Random().nextInt(900000) + 100000;
		model.addAttribute("random", ran);
	}

	@PostMapping("/account")
	public String account(MemberVO member) {
		MemberVO vo = new MemberVO();
		vo = member;
		vo.setM_password(pwencoder.encode(member.getM_password()));
		log.info("=========================");
		log.info("register : " + vo);
		log.info("=========================");
		memberservice.insert(vo);
		return "redirect:/member/accountCompleted";
	}

	@GetMapping("/accountCompleted")
	public void accountCompleted() {

	}

	@GetMapping("/mypage")
	public void mypage(@RequestParam("m_no") Long m_no, Model model) {
		List<MemberVO> vo = memberservice.mypage(52L);
		model.addAttribute("mypage", memberservice.mypage(m_no));
		model.addAttribute("member", memberservice.read(m_no));
	}

	@GetMapping("/mypageDetail")
	public void mypageDetail(@RequestParam("pc_no") Long pc_no, Model model) {
		List<MemberVO> vo = memberservice.mypageDetail(1L);
		model.addAttribute("mypageDetail", memberservice.mypageDetail(pc_no));
		model.addAttribute("total", memberservice.total(pc_no));

	}

	@GetMapping("/order")
	public void order(@RequestParam("m_no") Long m_no, Model model) {
		List<MemberVO> vo = memberservice.order(52L);
		model.addAttribute("order", memberservice.order(m_no));
		model.addAttribute("member", memberservice.read(m_no));

	}

	@GetMapping("/orderDetail")
	public void orderDetail(@RequestParam("pc_no") Long pc_no, Model model) {
		List<MemberVO> vo = memberservice.orderDetail(1L);
		model.addAttribute("orderDetail", memberservice.orderDetail(pc_no));
		model.addAttribute("total", memberservice.total(pc_no));

	}

	@GetMapping("/agreement")
	public void agreement() {

	}

	@GetMapping("/modifyMemberInfo")
	public void modifyMemberInfo(@RequestParam("m_no") Long m_no, Model model) {
		log.info("update...");
		model.addAttribute("member", memberservice.read(m_no));

	}

	/*
	 * @RequestMapping(method = {RequestMethod.PUT,
	 * RequestMethod.PATCH},value="/{m_no}", consumes="application/json",
	 * produces={MediaType.TEXT_PLAIN_VALUE}) public
	 * ResponseEntity<String>update(@RequestBody MemberVO
	 * member, @PathVariable("m_no")Long m_no) { member.setM_no(m_no); log.info(
	 * "m_no : " + m_no); log.info("update : " + member); return
	 * memberservice.update(member)==false ? new
	 * ResponseEntity<>("success",HttpStatus.OK): new
	 * ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR); }
	 */

	@PostMapping("/modifyMemberInfo")
	public String modifyMemberInfo(MemberVO member) {
		MemberVO vo = new MemberVO();
		vo = member;
		vo.setM_password(pwencoder.encode(member.getM_password()));
		log.info("=========================");
		log.info("update : " + vo);
		log.info("=========================");
		memberservice.update(vo);
		return "redirect:/shop/main";

	}

	// 회원 가입 아이디 중복 체크
	@RequestMapping("/checkID")
	@ResponseBody
	public Map<Object, Object> checkID(@RequestBody String m_email) {
		int count = 0;
		Map<Object, Object> map = new HashMap<>();

		count = memberservice.checkID(m_email);
		map.put("count", count);

		return map;
	}

	@GetMapping("/logout")
	public void logoutGET() {
		log.info("로그아웃");
	}

	@GetMapping("/passwordReset")
	public String passwordReset(@RequestParam("m_email") String m_email,
			@RequestParam("m_password") String m_password) {
		MemberVO vo = memberservice.readByEmail(m_email);
		vo.setM_password(pwencoder.encode(m_password));
		log.info("=========================");
		log.info("update : " + vo);
		log.info("=========================");
		memberservice.update(vo);
		return "redirect:/member/login";
	}

	@GetMapping("/withdrawal")
	public void withdrawal(@RequestParam("m_no") Long m_no, Model model) {
		model.addAttribute("member", memberservice.read(m_no));
	}

	@PostMapping("/withdrawal")
	public String updateWithdrawal(Long m_no) {

		MemberVO vo = memberservice.read(m_no);

		vo.setM_email("탈퇴한 회원" + (vo.getM_email()));
		vo.setM_password(pwencoder.encode("1"));
		memberservice.update(vo);

		return "redirect:/shop/main";

	}
}