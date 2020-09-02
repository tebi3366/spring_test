package com.kubg.service;


import com.kubg.domain.MemberVO;

public interface MemberService {

	// 회원 가입
	public void signup(MemberVO vo) throws Exception;

	
}