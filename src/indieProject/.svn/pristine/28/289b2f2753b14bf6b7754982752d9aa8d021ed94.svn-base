package com.indieProject.app.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indieProject.action.Action;
import com.indieProject.action.ActionForward;

public class MemberCheckMyMovieAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		ActionForward forward = new ActionForward();
		
		forward.setPath("/app/member/myPageMovie.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
