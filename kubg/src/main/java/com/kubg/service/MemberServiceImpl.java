package com.kubg.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kubg.domain.MemberVO;
import com.kubg.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;

	// 회원 가입
	@Override 
	public void signup(MemberVO vo) throws Exception {
		dao.signup(vo);		
	}
	

} 