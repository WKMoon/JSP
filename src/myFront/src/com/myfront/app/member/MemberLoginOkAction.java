package com.myfront.app.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.myfront.action.Action;
import com.myfront.action.ActionForward;
import com.myfront.app.member.dao.MemberDAO;
import com.myfront.app.member.vo.MemberVO;

public class MemberLoginOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		HttpSession session =req.getSession();
	      
	      req.setCharacterEncoding("UTF-8");
	      MemberDAO m_dao=new MemberDAO();
	      MemberVO m_vo=new MemberVO();
	      
	      String id=req.getParameter("id");
	      String pw=req.getParameter("pw");

	      ActionForward forward=new ActionForward();
	      resp.setContentType("text/html;charset=utf-8");
//	      PrintWriter out =resp.getWriter();
	      m_vo.setMemberId(id);
	      m_vo.setMemberPw(m_dao.encrypt(pw));
	      
	      if(!m_dao.login(m_vo)) {
	    	  //로그인 실패시 로그인 창으로 다시 되돌아감
		      forward=new ActionForward();

	         forward.setRedirect(false);
	         forward.setPath("/member/MemberLogin.me?login=false");
	      }else {
	    	  //로그인 성공시 alert
	    	 PrintWriter out = resp.getWriter();
	         session.setAttribute("id", id);
	         out.println("<script>alert('로그인 성공');</script>");
//	         forward=new ActionForward();
//	         forward.setRedirect(true);
//	         forward.setPath("/board/BoardList.bo");
	      }
//	         out.close();

	      return forward;

	}

}
 