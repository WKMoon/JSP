package com.koreait.app.member.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.app.member.vo.MemberVO;
import com.koreait.mybatis.config.SqlMapConfig;

public class MemberDAO {
	private static final int KEY = 3;
	
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession session;
	
	public MemberDAO() {
		session = sessionf.openSession(true);
	}
	
	public boolean checkId(String id) {
		return (int)session.selectOne("Member.checkId", id) == 1;
	}
	
	public boolean join(MemberVO m_vo) {
		return session.insert("Member.join", m_vo) == 1;
	}
	
	public boolean login(String id, String pw) {
		HashMap map = new HashMap();
		map.put("id", id);
		map.put("pw", pw);
		
		return (int)session.selectOne("Member.login", map) == 1;
	}
}
