package com.myfront.app.member;

import java.io.PrintWriter;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myfront.action.Action;
import com.myfront.action.ActionForward;
import com.myfront.app.member.dao.MemberDAO;
import com.myfront.app.member.vo.MemberVO;

public class MemberFindIdOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
	    resp.setContentType("text/html;charset=utf-8");

		MemberDAO m_dao = new MemberDAO();
		String email = req.getParameter("idEmail");
		String name = req.getParameter("idName");
		MemberVO m_vo = new MemberVO();
		m_vo.setMemberEmail(email);
		m_vo.setMemberName(name);
		
		System.out.println(name);
		System.out.println(email);
		String host = "smtp.naver.com";
		String user = "wkmoon9601@naver.com";
		String password = "dnrud5743";
		
		String to_email = email;
		
		Properties props = new Properties();
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.port", 465);
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.ssl.enable", "true");
        
		List<MemberVO> idList = m_dao.findId(m_vo);
		
        ActionForward forward=new ActionForward();

		String id = "";
		if(m_dao.findId(m_vo).isEmpty()) {
//	         out.println("not");
		      forward=new ActionForward();

	         forward.setRedirect(false);
	         forward.setPath("/member/MemberLogin.me?login=false");
		}else {
		
			for(int i = 0; i < idList.size(); i++) {
				id += idList.get(i).getMemberId() + ", ";
			}
	
			
			
			System.out.println(idList);
			
			
			Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
	            protected PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication(user,password);
	            }
	        });
	
	
	        try {
	            MimeMessage msg = new MimeMessage(session);
	
	
	            msg.setFrom(new InternetAddress(user));
	            msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to_email));
	            
	            //메일 제목
	            msg.setSubject("안녕하세요 Moon의 아이디 메일입니다.");
	            //메일 내용
	            msg.setText("아이디 : "+id);
	            Transport.send(msg);
	            System.out.println("이메일 전송");
	            
	        }catch (Exception e) {
	            e.printStackTrace();// TODO: handle exception
	        }
	        
	
	        forward.setRedirect(false);
	        forward.setPath("/member/MemberLogin.me");
		}
		
		return forward;

	}

}//end class
