package com.koreait.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.mybatis.config.SqlMapConfig;
import com.koreait.vo.MemberVO;

public class MemberDAO {
	SqlSessionFactory sqlsession_f = SqlMapConfig.getSqlMapInstance();
	SqlSession sqlsession;
	
	public MemberDAO() {
		sqlsession = sqlsession_f.openSession(true); //default : false ,  자동 커밋 여부
	}
	
	//아이디 중복검사
	public boolean checkId(String id) {
		return (Integer)sqlsession.selectOne("Member.checkId", id) == 0;
	} 
	
	//로그인
	/**
	 * datas{id='id', pw='pw'}
	 * @param 
	 * @return
	 */
	public boolean login(HashMap<String, String> datas) {
		return (Integer)sqlsession.selectOne("Member.login", datas) == 1;
	}
	
	//회원가입
	public boolean join(MemberVO member) {
		return sqlsession.insert("Member.join", member) == 1;
	}
	
	//회원 조회(회원 번호)
	public MemberVO getMember(int num) {
		return sqlsession.selectOne("Member.getMember", num);
	}
	
	//회원 번호 조회(아이디)
	public int getNum(String id) {
		return sqlsession.selectOne("Member.getNum", id);
	}
	
	//비밀번호 조회(아이디)
	public String getPw(String id) {
		return sqlsession.selectOne("Member.getPw", id);
	}
	
	//아이디 조회(회원번호)
	public String getId(int num) {
		return sqlsession.selectOne("Member.getId", num);
	}
	
	//회원번호로 비밀번호 조회 
	public  int searchPw(int num) {
		return sqlsession.selectOne("Member.searchPw",num);
	}
	
	//모든회원조회 
	public List<MemberVO> getMemberList (){
		return sqlsession.selectList("Member.getMemberList");
	}
	
	//회원 이름 수정(회원번호, 새로운이름)
	public boolean modify(int num) {
		return sqlsession.selectOne("Member.modify",num);
		
	}
}















