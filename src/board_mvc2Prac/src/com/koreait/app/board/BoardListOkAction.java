package com.koreait.app.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.board.dao.BoardDAO;

public class BoardListOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		BoardDAO b_dao = new BoardDAO();
		ActionForward forward = new ActionForward();
		
		String temp = req.getParameter("page");
		
		int page = temp == null ? 1 : Integer.parseInt(temp);
		
		int boardSize = 10;
		int pageSize = 10;
		
		int endRow = page * boardSize;
		
		int startRow = endRow - (boardSize - 1);
		
		int startPage = ((page - 1) / pageSize) * pageSize  + 1;
		int endPage = startPage + (pageSize - 1);
		
		int totalCnt = b_dao.getBoardCnt();
		
		int realEndPage = (totalCnt - 1) / pageSize + 1;
		
		endPage = endPage > realEndPage ? realEndPage : endPage;
		
		//requestScope
		req.setAttribute("totalCnt", totalCnt);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("nowPage", page);
		req.setAttribute("realEndPage", realEndPage);
		req.setAttribute("boardList", b_dao.getBoardList(startRow, endRow));
		
		//forward를 사용해야 할 때 : req객체에 데이터를 담아서 전달해야 할 때
		//redirect를 사용해야 할 때 : 전달할 req 데이터가 없고 값을 초기화 하고 싶을 때
		forward.setRedirect(false);
		forward.setPath("/app/board/boardList.jsp");
		
		return forward;
	}

}
