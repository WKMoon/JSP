package com.myfront.app.member;

import java.io.PrintWriter;
import java.util.Properties;
import java.util.Random;

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

public class MemberIdentificationOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String email = req.getParameter("identiEmail");
		
		String host = "smtp.naver.com";
		String user = "wkmoon9601@naver.com";
		String password = "dnrud5743";
		
		String to_email = email;
		
		Properties props = new Properties();
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.port", 465);
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.ssl.enable", "true");
		
		StringBuffer temp = new StringBuffer();
		
		Random rnd = new Random();
		for(int i = 0; i < 10; i++) {
			int rIndex = rnd.nextInt(3);
			switch(rIndex) {
			case 0: // a-z
                temp.append((char) ((int) (rnd.nextInt(26)) + 97));
                break;
            case 1:
                // A-Z
                temp.append((char) ((int) (rnd.nextInt(26)) + 65));
                break;
            case 2:
                // 0-9
                temp.append((rnd.nextInt(10)));
                break;
			}
		}
		
		String authenticationKey = temp.toString();
        PrintWriter out = resp.getWriter();
        out.println(authenticationKey);
		System.out.println(authenticationKey);
		
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
            msg.setSubject("안녕하세요 Moon의 인증 메일입니다.");
            //메일 내용
            msg.setText("인증 번호는 : "+temp+" 입니다.");
            Transport.send(msg);
            System.out.println("이메일 전송");
            
        }catch (Exception e) {
            e.printStackTrace();// TODO: handle exception
        }
		
		
		return null;
	}

}
