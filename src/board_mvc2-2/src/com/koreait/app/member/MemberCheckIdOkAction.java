package com.koreait.app.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.member.dao.MemberDAO;

//컨트롤러
public class MemberCheckIdOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset-8");
		String id = req.getParameter("id");
		MemberDAO m_dao = new MemberDAO();
		PrintWriter out = resp.getWriter();
		if(m_dao.checkId(id)) {
			out.println("not-ok");
		}else {
			out.println("ok");
		}
		out.close();
		
		
		return null;
	}

}
