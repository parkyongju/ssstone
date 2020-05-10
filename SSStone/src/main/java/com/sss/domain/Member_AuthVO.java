package com.sss.domain;

import java.io.Serializable;
import java.util.List;

import lombok.Data;

@Data
public class Member_AuthVO implements Serializable{
	private Long m_no;
	private String m_auth;
}
