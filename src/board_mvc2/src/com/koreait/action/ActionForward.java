package com.koreait.action;
//컨트롤러에서 연산 결과에 따라
//전송 방식과 전송할 페이지 정보를 담을 수 있는 클래스 타입
//true일 때 redirect방식, false일때 forward타입
//path 응답할 페이지 경로
public class ActionForward {
	private boolean isRedirect;
	public boolean isRedirect() {
		return isRedirect;
	}
	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	private String path;
	public ActionForward() {
		// TODO Auto-generated constructor stub
	}
}
