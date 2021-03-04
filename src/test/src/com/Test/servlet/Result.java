package com.Test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Result
 */
@WebServlet("/Result")
public class Result extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Result() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			
			response.setContentType("text/html; charset-UTF-8");
			
			//사용자가 입력한 값 가져오기
			//공백 제거해주기 
			String input=request.getParameter("input").replaceAll(" ", "");
			//html 코드를 밖으로 보내주는 것 
			PrintWriter out=response.getWriter();
			//4칸짜리 문자 배열 만들기 
			String opers="+-*/";
			//char의 초기 값은 공백이기 때문에 '  '으로 
			char oper=' ';
			int check=0;		
			String [] arTemp=null;
			int num1=0, num2=0;
			//일괄처리
			String resultMsg=null;
			
			Calc calc=new Calc();
			
			out.println("<html><body><h1>계산 결과</h1>");
			
			for (int i = 0; i < opers.length(); i++) {
				for (int j = 0; j < input.length(); j++) {
					if(input.charAt(i) == opers.charAt(i)){
						oper=input.charAt(i);
						//oper에 사용자가 입력한 문자 값을 저장 (+-*/)
						check++;
						
					}//if end
				}
			}//for end
			
			//br태그가 없기 떄문에 이어쓰기가 가능 
			out.println("<p>결과:");
			
			if(check ==1) {
			//3+2를 문자 기준으로 나누면 두칸이기 때문에 배열
			//oper에는 기호가 담겨 있기 때문에 +면 +기준으로 나눈다.
			try {
				arTemp=input.split("\\"+oper);
				//replaceAll->리턴타입 String 
				//원래 있던 것을 , 바꾸는 것-->(" " 공백을 ,""공백없이)
				num1= Integer.parseInt(arTemp[0]); //첫번째 숫자
				num2= Integer.parseInt(arTemp[1]); //두번째 숫자

				
				switch(oper) {
				case '+' :
					//계산한 값을 int로 넘겨준 후 String으로 다시 받아오기 
					resultMsg=calc.add(num1, num2)+"";
					break;
				case '-':
					resultMsg=calc.sub(num1, num2)+"";
					break;
				case '*':
					resultMsg=calc.mul(num1, num2)+"";
					break;
				case '/' :
					try {
						resultMsg=calc.div(num1, num2)+"";
					} catch (ArithmeticException e) {
						resultMsg="0으로 나눌 수 없습니다.";
					}
					break;
				
				}//switch end
			} catch (NumberFormatException e) {
				// TODO Auto-generated catch block
				resultMsg="정수의 연산만 가능합니다.";
				}catch(ArrayIndexOutOfBoundsException e) {
					resultMsg="두 정수를 입력해주세요";
				}
			}else if(check >1) {
				//check가 1이상이라면 기호가 1개 이상이라는 의미
				resultMsg="두 정수의 연산만 가능합니다.";
				
			}else { 
				resultMsg="연산자를 찾지 못했습니다.";
				
			}//else end
			out.println(resultMsg+"</p>");
			out.println("<a href='calc'>이전으로 이동</a></body></html>");
			out.close();
			
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
