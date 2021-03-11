package com.koreait.app.member.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.app.member.vo.MemberVO;
import com.koreait.mybatis.config.SqlMapConfig;

public class MemberDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession session = null;
	
	
	public MemberDAO() {
		session = sessionf.openSession(true);
	}
	
	public boolean join(MemberVO m_vo) {
		return (int)session.insert("Member.join", m_vo) == 1;
	}
	
	public boolean checkId(String id) {
		return (int)session.selectOne("Member.checkId", id) == 1;
	}
	
	public boolean login(MemberVO m_vo) {
		return (int)session.selectOne("Member.join", m_vo) == 1;
	}
}
