package com.koreait.app.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.ActionForward;

public class MemberFrontController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req,resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req,resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		
		ActionForward forward = null;
		
		if(command.equals("/member/MemberJoinOk.me")) {
			try {
				//사용자의 요청에 맞는 응답을 하기 위해서
				//컨트롤러를 메모리에 할당하고, 그 안에 있는 execute메소드를 사용해준다.
				forward = new MemberJoinOkAction().execute(req, resp);
			} catch (Exception e) {System.out.println(e);}
		}else if(command.equals("/member/MemberJoin.me")) {
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath("/aoo/member/joinForm.jsp");
		}else if(command.equals("/member/MemberCheckIdOk.me")) {
			try {
				forward = new MemberCheckIdOkAction().execute(req, resp);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(command.equals("/member/MemberLogin.me")) {
			String login = req.getParameter("login");
			
			
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/app/member/loginForm.jsp" + (login != null ? "?login=false" : "" ));
		}else if(command.equals("/member/MemberLoginOk.me")) {
			try {
				forward = new MemberLoginOkAction().execute(req, resp);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(command.equals("/member/MemberLogout.me")) {
			try {
				forward = new MemberLogoutAction().execute(req, resp);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(forward != null) {
			if(forward.isRedirect()) {
				resp.sendRedirect(forward.getPath());
			}else {
				RequestDispatcher dispatcher = req.getRequestDispatcher(forward.getPath());
				dispatcher.forward(req, resp);
			}
		}
		
		
		
		
	}
}
