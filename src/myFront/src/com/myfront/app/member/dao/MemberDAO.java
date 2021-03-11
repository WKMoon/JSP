package com.myfront.app.member.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.myfront.app.member.vo.MemberVO;
import com.myfront.mybatis.config.SqlMapConfig;

public class MemberDAO {
	private static final int KEY = 3;
	
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession session;
	
	public MemberDAO() {
		//세션 팩토리로 세션을 열어주고 모든 쿼리문은 auto 커밋으로 설정
		session = sessionf.openSession(true);
	}
	
	public boolean checkId(String id) {
		return (int)(session.selectOne("Member.checkId", id)) == 1;
	}
	
	
	
	//암호화
	public String encrypt(String pw) {
		String en_pw = "";
		for (int i = 0; i < pw.length(); i++) {
			en_pw += (char)(pw.charAt(i) * KEY);
		}
		return en_pw;
	}
	
	//복호화
	public String decrypt(String en_pw) {
		String de_pw = "";
		for (int i = 0; i < en_pw.length(); i++) {
			de_pw += (char)(en_pw.charAt(i) / KEY);
		}
		return de_pw;
	}
	
	public boolean join(MemberVO m_vo) {
		m_vo.setMemberPw(encrypt(m_vo.getMemberPw()));
		return (int)(session.insert("Member.join", m_vo)) == 1;
	}
	
	public boolean login(MemberVO m_vo) {
		return (int)(session.selectOne("Member.login", m_vo)) == 1;
	}
	
//	public String findId(MemberVO m_vo) {
//		return session.selectOne("Member.findId", m_vo);
//	}
	
	public List<MemberVO> findId(MemberVO m_vo){
		return session.selectList("Member.findId", m_vo);
	}
	
	public String findPw(MemberVO m_vo) {
		return session.selectOne("Member.findPw", m_vo);
	}
}
