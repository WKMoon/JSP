package com.indieProject.app.board.dao;

import java.util.Enumeration;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.indieProject.app.board.vo.BoardImageVO;
import com.indieProject.app.board.vo.BoardReplyVO;
import com.indieProject.app.board.vo.BoardVO;
import com.indieProject.mybatis.config.SqlMapConfig;
import com.oreilly.servlet.MultipartRequest;

public class BoardDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession session;
	
	public BoardDAO() {
		session = sessionf.openSession(true);
	}
	
	// 게시글 상세보기
	// 게시글
	public BoardVO getBoard(int boardNum) {
		return session.selectOne("Board.getBoard", boardNum);
	}
	
	// 게시글 이미지
	public List<BoardImageVO> getBoardImages(int boardNum) {
		return session.selectList("Board.getBoardImages", boardNum);
	}
	
	// 게시글 댓글
	public List<BoardReplyVO> getBoardReplies(int boardNum) {
		return session.selectList("Board.getBoardReplies", boardNum);
	}
	
	// 게시글 등록
	public boolean insertBoard(BoardVO b_vo) {
		return session.insert("Board.insertBoard", b_vo) == 1;
	}
	
	// 게시글 이미지 저장
	public boolean insertBoardImages(int boardNum, MultipartRequest multi) {
		boolean check = true;
		BoardImageVO bi_vo = new BoardImageVO();
		
		Enumeration<String> images = multi.getFileNames();
		
		while(images.hasMoreElements()) {
			String data = images.nextElement();
			System.out.println("data: "+data);
			String systemName = multi.getFilesystemName(data);
			System.out.println("systemName: "+systemName);
			if(systemName == null) {continue;}
			
			bi_vo.setBoardNum(boardNum);
			bi_vo.setImageName(systemName);
			if(session.insert("Board.insertBoardImages", bi_vo) != 1) {
				check = false;
				break;
			}
		}
		return check;
	}
	// 등록하는 게시글 번호 가져오기
	public int getBoardNum() {
		return session.selectOne("Board.getBoardNum");
	}
}
