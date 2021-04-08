package com.myfront.app.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myfront.action.Action;
import com.myfront.action.ActionForward;
import com.myfront.app.member.dao.MemberDAO;
import com.myfront.app.member.vo.MemberVO;

public class MemberJoinOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ActionForward forward = null;
		
		MemberVO m_vo = new MemberVO();
		MemberDAO m_dao = new MemberDAO();
		req.setCharacterEncoding("UTF-8");
		
		m_vo.setMemberName(req.getParameter("name"));
		m_vo.setMemberId(req.getParameter("id"));
		m_vo.setMemberPw(req.getParameter("pw"));
		m_vo.setMemberAddress(req.getParameter("addr"));
		m_vo.setMemberEmail(req.getParameter("email"));
		m_vo.setMemberPhone(req.getParameter("pn"));
		m_vo.setMemberGender(req.getParameter("gender"));

		if(m_dao.join(m_vo)) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/member/MemberLogin.me");
		}else {
			PrintWriter out = resp.getWriter();
			resp.setContentType("text/html;charset=utf-8");
			out.println("<script>alert('서버가 불안정합니다. 잠시 후 다시 시도해주세요.');</script>");
			out.close();
		}
		
		return forward;
	}

}
