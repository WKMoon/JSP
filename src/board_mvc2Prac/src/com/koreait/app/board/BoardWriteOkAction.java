package com.koreait.app.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.board.dao.BoardDAO;
import com.koreait.app.board.vo.BoardVO;

public class BoardWriteOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ActionForward forward = null;
		BoardVO b_vo = new BoardVO();
		BoardDAO b_dao = new BoardDAO();
		FilesDAO f_dao = new FilesDAO();
		
		
		return forward;
	}

}
