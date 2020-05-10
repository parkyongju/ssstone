package com.sss.mapper;

import com.sss.domain.Member_AuthVO;

public interface Member_AuthMapper {
	public void insert(Member_AuthVO auth); /* 데이터를 추가하는 인터페이스*/
	public void insertManager(Member_AuthVO auth);/* 매니저 회원가입 */
}
