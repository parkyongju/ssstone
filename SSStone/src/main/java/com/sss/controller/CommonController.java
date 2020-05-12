package com.sss.controller;
//로그인
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class CommonController {
	@GetMapping("/shop/error404")
	public void accessDenied(Authentication auth, Model model){
		log.info("Access Denied : " + auth);
		model.addAttribute("msg","Access Denied");
	}
	@GetMapping("/member/login")
	public void loginInput(String error, String logout, Model model){
		log.info("error : " + error);
		log.info("logout : " + logout);
		
		if(error != null){
			model.addAttribute("error", "아이디 혹은 비밀번호가 틀렸습니다.");
		}
		
		if(logout != null){
			model.addAttribute("logout", "Logout!!!!!!!!!!!!!!");
		}
	}
	@GetMapping("/customLogout")
	public void logoutGET(){
		log.info("custom logout");
	}
}
