package com.koreait.app.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.ActionForward;

//만약 요청한 응답 페이지가 흰 색 화면이 나온다면 문법 오류 혹은 페이지 이동 오류일 가능성이 높다.

public class MemberFrontController extends HttpServlet {
	/**
	 * JVM의 메모리에서만 머물러 있던 객체를 시스템이 종료되거나 네트워크로 통신을 할 때에도 그대로 사용할수 있도록
	 * 영구화 목적으로 직렬화를 사용한다.
	 * 직렬화 된 객체는 byte형태로 변환되어 있으며, 다시 사용하고 싶을때에는 역직렬화를 통해서 객체로 변환된다.
	 * 이 때 SUID(serialVersionUID)라는 값을 고정시켜 구분점으로 사용해서 사용자가 원하는 객체가 맞는지 판단하게 된다.
	 * 자주 변경되는 클래스 객체에는 사용하지 않는것이 좋다.
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//doGet 또는 doPost가 실행될 떄 모두 같은 로직이 실행되어야 하므로
		//doProcess메소드 선언 후 재사용한다.
		doProcess(req,resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req,resp);
	}
	
	//비지니스 핵심 로직을 모아둔 메소드
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String uri = req.getRequestURI();
		String contextUri = req.getContextPath();
		String command = uri.substring(contextUri.length());
		ActionForward forward = null;
		
		if(command.equals("/member/MemberJoin.me")) {
			try {
				forward = new MemberJoinOkAction().execute(req, resp);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(command.equals("/member/MemberCheckId.me")) {
			try {
				forward = new MemberCheckIdOkAction().execute(req,resp);
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
