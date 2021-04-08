package com.koreait.app.board.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.app.board.vo.BoardVO;
import com.koreait.mybatis.config.SqlMapConfig;

public class BoardDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession session;
	
	public BoardDAO() {
		session = sessionf.openSession(true);
	}
	
	
	public List<BoardVO> getBoardList(int startRow, int endRow){
		HashMap<String,Integer> map = new HashMap<String, Integer>();
		
		map.put("startRow",startRow);
		map.put("endRow", endRow);
		
		return session.selectList("Board.listAll", map);
	}
	
	public int getBoardCnt() {
		return session.selectOne("Board.getBoardCnt");
	}
}