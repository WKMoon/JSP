package com.koreait.app.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.member.dao.MemberDAO;
import com.koreait.app.member.vo.MemberVO;

public class MemberLoginOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		
		ActionForward forward = null;
		HttpSession session = null;
		
		MemberDAO m_dao = new MemberDAO();
		PrintWriter out = resp.getWriter();
		
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		
		MemberVO m_vo = new MemberVO();
		m_vo.setMemberId(id);
		m_vo.setMemberPw(m_dao.encrypt(pw));
		
		resp.setContentType("text/html;charset=utf-8");
		
		if(!m_dao.login(m_vo)) {
			out.println("not-ok");
		}else {
			session = req.getSession();
			session.setAttribute("id", id);
			
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/member/BoardChart.me");
		}
		out.close();
		return forward;
	}

}
