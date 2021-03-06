package com.koreait.app.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.member.dao.MemberDAO;
import com.koreait.app.member.vo.MemberVO;

//ì»¨íŠ¸ë¡¤ëŸ¬
public class MemberJoinOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		req.setCharacterEncoding("UTF-8");
		
		MemberVO m_vo = new MemberVO();
		
		MemberDAO m_dao = new MemberDAO();
	
		ActionForward forward = null;
	
		//사용자가 입력한 정보들
	      m_vo.setMemberId(req.getParameter("memberId"));
	      m_vo.setMemberPw(req.getParameter("memberPw"));
	      m_vo.setMemberName(req.getParameter("memberName"));
	      m_vo.setMemberAge(Integer.parseInt(req.getParameter("memberAge")));
	      m_vo.setMemberGender(req.getParameter("memberGender"));
	      m_vo.setMemberEmail(req.getParameter("memberEmail"));
	      m_vo.setMemberZipcode(req.getParameter("memberZipcode"));
	      m_vo.setMemberAddress(req.getParameter("memberAddress"));
	      m_vo.setMemberAddressDetail(req.getParameter("memberAddressDetail"));
	      m_vo.setMemberAddressEtc(req.getParameter("memberAddressEtc"));

	      //DB에서 INSERT 실패시
		if(!m_dao.join(m_vo)) {
			//직접 HTML문서로 응답
			PrintWriter out  = resp.getWriter();
			resp.setContentType("text/html;charset=utf-8");
			out.println("<script>alert('서버가 불안정합니다. 잠시 후에 다시 시도해주세요.')</script>");
			out.close();
		}else {
			//DB에서 INSERT 성공 시
			forward = new ActionForward();
			//이동할 페이지 정보를 담아서 리턴
			forward.setRedirect(false);
			forward.setPath("/member/MemberLogin.me");
		}
		//ì»¨íŠ¸ë¡¤ëŸ¬ì—�ì„œ ì�‘ë‹µì�€ ë°˜ë“œì‹œ í•œë²ˆë§Œ ê°€ëŠ¥í•˜ë‹¤.
		
		return forward;
	}

}
