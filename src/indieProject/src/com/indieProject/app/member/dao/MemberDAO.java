package com.indieProject.app.member.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.indieProject.app.amamovie.vo.AmaMovieReviewVO;
import com.indieProject.app.amamovie.vo.AmaMovieVO;
import com.indieProject.app.board.vo.BoardReplyVO;
import com.indieProject.app.board.vo.BoardVO;
import com.indieProject.app.member.vo.MemberVO;
import com.indieProject.app.member.vo.MyPagePopcornVO;
import com.indieProject.mybatis.config.SqlMapConfig;

public class MemberDAO {
	private static final int KEY = 3;
	
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession session;
	
	public MemberDAO() {
		session = sessionf.openSession(true);
	}
	
	// 암호화
	public String encrypt(String pw) {
		String en_pw = "";
		for (int i = 0; i < pw.length(); i++) {
			en_pw += (char)(pw.charAt(i) * KEY);
		}
		return en_pw;
	}
	
	// 로그인
	public boolean login(String memberId, String memberPw) {
		HashMap<String, String> login = new HashMap<>();
		System.out.println(memberId);
		System.out.println(memberPw);
		login.put("memberId", memberId);
		login.put("memberPw", encrypt(memberPw));
		return (Integer) session.selectOne("Member.login", login) == 1;
	}
	
	// 회원가입
	public boolean join(MemberVO member) {
		member.setMemberPw(encrypt(member.getMemberPw()));			
		return session.insert("Member.signUp", member) == 1;
	}
		
	// 아이디 검사
	/**
	 * 
	 * @param memberId
	 * @return
	 * 
	 * true : 중복된 아이디 <br>false : 사용 가능한 아이디
	 */
	public boolean checkId(String memberId) {
		return (Integer) session.selectOne("Member.checkId", memberId) == 1;
	}
	
	// 이메일 검사
	/**
	 * 
	 * @param memberEmail`
	 * @return
	 * 
	 * true : 중복된 이메일 <br>false : 사용 가능한 이메일
	 */
	public boolean checkEmail(String memberEmail) {
		return (Integer) session.selectOne("Member.checkEmail", memberEmail) == 1;
	}
	
	// 아이디 찾기
	public String findId(String memberName, String memberEmail) {
		HashMap<String, String> findId = new HashMap<>();
		findId.put("memberName", memberName);
		findId.put("memberEmail", memberEmail);
		return session.selectOne("Member.findId", findId);
	}
	
	// 비밀번호 찾기
	public boolean findPw(String memberName, String memberId, String memberEmail) {
		HashMap<String, String> findPw = new HashMap<>();
		findPw.put("memberName", memberName);
		findPw.put("memberId", memberId);
		findPw.put("memberEmail", memberEmail);
		return (Integer) session.selectOne("Member.findPw", findPw) == 1;
	}
	
	//내가 올린 영화 개수
	public int myMovieNum(String memberId) {
		return session.selectOne("Member.myMovieNum",memberId);
	}
	//내가 작성한 감상평 개수
	public int myReviewNum(String memberId) {
		return session.selectOne("Member.myReviewNum",memberId);
	}
	
	//내가 작성한 게시글 개수
	public int myBoardNum(String memberId) {
		return session.selectOne("Member.myBoardNum",memberId);
	}
	
	//내가 작성한 댓글 개수
	public int myReplyNum(String memberId) {
		return session.selectOne("Member.myReplyNum",memberId);
	}
	//보유 팝콘 개수
	public int myPopcornNum(String memberId) {
		return session.selectOne("Member.myPopcornNum",memberId);
	}
	//받은 팝콘 개수
	public int myReceivedPopcornNum(String memberId) {
		return session.selectOne("Member.myReceivedPopcornNum",memberId);
	}
	//내가 올린 영화 5개
	public List<AmaMovieVO> myMovieList(String memberId) {
		return session.selectList("Member.myMovieList", memberId);
	}
	
	//내가 작성한 게시글 5개
	public List<BoardVO> myBoardList(String memberId) {
		return session.selectList("Member.myBoardList", memberId);
	}
	//내가 작성한 게시글 전체
	public List<BoardVO> myBoardListAll(String memberId) {
		return session.selectList("Member.myBoardListAll", memberId);
	}
	
	//내가 작성한 댓글 5개
	public List<BoardReplyVO> myBoardReplyList(String memberId) {
		return session.selectList("Member.myBoardReplyList", memberId);
	}
	//내가 작성한 감상평 5개
	public List<AmaMovieReviewVO> myReviewList(String memberId) {
		return session.selectList("Member.myReviewList", memberId);
	}
	//아이디 비밀번호로 해당하는 유저 정보
	public MemberVO checkPwGetData(String memberId, String memberPw) {
		HashMap<String, String> userMap = new HashMap<String, String>();
		userMap.put("memberId", memberId);
		userMap.put("memberPw", encrypt(memberPw));
		return session.selectOne("Member.checkPwGetData", userMap);
	}
	
	// 로그인 되어있는 유저 이름
	public String getMemberName(String memberId) {
		return session.selectOne("Member.getMemberName", memberId);
	}
	
	//댓글 리스트 가져오기
	public List<AmaMovieReviewVO>getReview(int startRow, int endRow){
		HashMap<String, Integer>pageMap=new HashMap<>();
		
		pageMap.put("startRow", startRow);
		pageMap.put("endRow", endRow);
		
		return session.selectList("Member.myReviewListAll",pageMap);
	}
	//팝콘 사용내역 리스트 가져오기
	public List<MyPagePopcornVO>myPopcornList(String memberId, String date1, String date2){
		HashMap<String, String> map = new HashMap<>();
		map.put("memberId", memberId);
		map.put("date1", date1);
		map.put("date2", date2);
		return session.selectList("Member.myPopcornList", map);
	}
	//이메일 변경
	public boolean changeEmail(String memberId, String memberEmail) {
		HashMap<String, String> userMap = new HashMap<String, String>();
		userMap.put("memberId", memberId);
		userMap.put("memberEmail", memberEmail);
		return session.update("Member.changeEmail", userMap) == 1;
	}
	//비밀번호&이메일 변경
	public boolean changePwEmail(String memberId, String memberPw, String memberEmail) {
		HashMap<String, String> userMap = new HashMap<String, String>();
		userMap.put("memberId", memberId);
		userMap.put("memberPw", memberPw);
		userMap.put("memberEmail", memberEmail);
		return session.update("Member.changePwEmail", userMap) == 1;
	}
	
}
