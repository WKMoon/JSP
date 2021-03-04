package com.koreait.Test;

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
@WebServlet("/Result")//요청된 URL 매핑 -요청된 전송방식에 맞는 doGet() 또는 doPost()가 실행된다.
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
		 request.setCharacterEncoding("UTF-8");//전달 받은 데이터 인코딩 설정
	      response.setCharacterEncoding("UTF-8");//전달할 데티어 인코딩 설정
	      
	      response.setContentType("text/html; charset=UTF-8");//응답할 페이지 타입 설정 
	      
	      String input = request.getParameter("input").replaceAll(" ", "");//수식 내에 공백을 없애주기 위해 " "를 ""로 모두 대체한다.
	      PrintWriter out = response.getWriter();
	      Calc calc = new Calc();
	      String opers = "+-*/"; //4칸 문자배열
	      char oper = ' ';
	      int check = 0;
	      String[] arTemp = null;
	      int num1 = 0, num2 = 0;
	      String resultMsg = null;
	      
	      out.println("<html><body><h1>서블릿으로 만든 페이지</h1>");
	      //수식 내의 연산자를 찾아주는 로직 
	      for(int i=0; i<opers.length(); i++) {
	         for(int j=0; j<input.length(); j++) {
	        	 //수식 내의 연산자를 찾아주는 로직
	            if(input.charAt(j) == opers.charAt(i)) {
	            	//연산자를 찾았다면 oper에 저장
	               oper = input.charAt(j);
	               //수식 내의 연산자의 개수
	               check++;
	            }
	         }
	      }
	      
	      out.println("<p>결과 : ");
	      if(check == 1) {//수식 내의 연산자가 1개 있다는 뜻
	            try {
	            	//찾은 연산자를 기준으로 양 옆을 잘라준다.
	               arTemp = input.split("\\" + oper);
	               num1 = Integer.parseInt(arTemp[0]);//첫번쨰 정수
	               num2 = Integer.parseInt(arTemp[1]);//두번째 정수
	               switch(oper) {
	               case '+':
	                  resultMsg = calc.add(num1, num2) + "";
	                  break;
	               case '-':
	                  resultMsg = calc.minus(num1, num2) + "";
	                  break;
	               case '*':
	                  resultMsg = calc.mul(num1, num2) + "";
	                  break;
	               case '/':
	                  try {
	                     resultMsg = calc.div(num1, num2) + "";
	                  } catch (ArithmeticException e) {
	                     resultMsg = "0으로 나눌 수 없습니다.";
	                  }
	                  break;
	               }
	            } catch (NumberFormatException e) {
	               resultMsg = "정수의 연산만 가능합니다.";
	            } catch (ArrayIndexOutOfBoundsException e) {
	               resultMsg = "양식에 맞게 작성해주세요.";
	            }
	      } else if(check > 1) { //연산자가 두개 이상이라는 뜻
	         resultMsg = "두 정수의 연산만 가능합니다.";
	      }else { //check ==0
	         resultMsg = "연산자를 찾지 못했습니다.";
	      }
	      out.println(resultMsg + "</p>");
	      out.print("<a href='calc'>JSP 페이지로 이동!</a></body></html>");
	      out.close();

			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		  request.setCharacterEncoding("UTF-8");
//	      response.setCharacterEncoding("UTF-8");
//	      
//	      response.setContentType("text/html; charset=UTF-8");
//
//			
//			PrintWriter out=response.getWriter();
//			String answer=request.getParameter("input");
//			String [] numAr=new String[2];
//			int result=0;
//			
//			String error = "<html><body><h1>에러</h1></body></html";
//
//			switch(answer.charAt(1)) {
//			case '+' : 
//			numAr[0] =answer.split("\\+")[0];
//			numAr[1]=answer.split("\\+")[1];
//			
//				try {
//					result=Calc.add(Integer.parseInt(numAr[0]), Integer.parseInt(numAr[1]));
//				} catch (NumberFormatException e) {
//					out.write(error);
//					return;
//					
//				} catch (ArithmeticException e) {
//					out.write(error);
//					return;
//				}
//				break;
//				
//			case '-':
//				numAr[0] =answer.split("\\-")[0];
//				numAr[1]=answer.split("\\-")[1];
//				
//				try {
//					result=Calc.minus(Integer.parseInt(numAr[0]), Integer.parseInt(numAr[1]));
//				} catch (NumberFormatException e) {
//					out.write(error);
//					return;
//					
//				} catch (ArithmeticException e) {
//					out.write(error);
//					return;
//					
//				}
//				break;
//				
//			case '*' :
//				numAr[0] =answer.split("\\*")[0];
//				numAr[1]=answer.split("\\*")[1];
//				
//				try {
//					result=Calc.mul(Integer.parseInt(numAr[0]), Integer.parseInt(numAr[1]));
//				} catch (NumberFormatException e) {
//					out.write(error);
//					return;
//					
//				} catch (ArithmeticException e) {
//					out.write(error);
//					return;
//					
//				}
//				break;
//				
//				
//			case '/' :
//				numAr[0] =answer.split("\\/")[0];
//				numAr[1]=answer.split("\\/")[1];
//				
//				try {
//					result=Calc.div(Integer.parseInt(numAr[0]), Integer.parseInt(numAr[1]));
//				} catch (NumberFormatException e) {
//					out.write(error);
//					return;
//					
//				} catch (ArithmeticException e) {
//					out.write(error);
//					return;
//					
//				}
//				break;
//			  default:out.write("잘못된 방식입니다.");break;
//				
//			}//case end
//				
//			out.write("<html><body><h1>계산완료<h1>");
//			out.write("<html><body><h1>정답:"+result+"</h1>");
//			//out.write("<a href='calc'>계산기로 이동</a></body></html>");
//			out.close();
//			
//			
//			
		
		
	}

}
