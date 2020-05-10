package com.sss.security.domain;

import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import com.sss.domain.MemberVO;

import lombok.Getter;
import lombok.extern.log4j.Log4j;

@Getter
@Log4j
public class CustomUser extends User{
	private static final long serialVersionUID = 1L;
	private MemberVO member;
	public CustomUser(String m_email, String m_password, Collection<? extends GrantedAuthority> m_auth){
		super(m_email, m_password, m_auth);
	}
	public CustomUser(MemberVO vo){
		super(vo.getM_email(), vo.getM_password(), vo.getAuthList().stream().map(auth -> new SimpleGrantedAuthority(auth.getM_auth())).collect(Collectors.toList()));
		this.member = vo;
	}
	
	
	
}
