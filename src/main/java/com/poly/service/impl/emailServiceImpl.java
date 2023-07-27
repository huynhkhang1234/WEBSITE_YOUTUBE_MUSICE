package com.poly.service.impl;

import javax.servlet.ServletContext;

import com.poly.entity.user;
import com.poly.service.SendEmailService;
import com.poly.utils.SendEmailUtil;

public class emailServiceImpl implements SendEmailService {

	private static final String EMAIL_WELCOME_SUBJECT = "Chào mừng bạn đến với Yoube Music";
	private static final String EMAIL_POGOT_PASSWORD = "Xin mời bạn xác nhận - Mật khẩu mới";
	
	
	@Override
	public void sendEmail(ServletContext context, user recipient, String type) {
	    // reads SMTP server setting from web.xml file
        
		String host = context.getInitParameter("host");
		String port = context.getInitParameter("port");
		String user = context.getInitParameter("user");
		String pass = context.getInitParameter("pass");
		try {
			String content=null;
			String subject= null;
			switch(type) {
			case "xinChao":
				subject= EMAIL_WELCOME_SUBJECT;
				content= "Chào mừng bạn đã đăng kí thành công tài khoản tên: "+ recipient.getUserName();
				break;
			case "DoiMatKhau":
				subject= EMAIL_POGOT_PASSWORD;
				content= "Chào mừng"+ recipient.getUserName()+", mật khẩu của bạn đã được cập nhật: "+recipient.getPassWord();
				break;	
			default:
					subject = "Thông tin email chưa chính xác";
					content= "Email xác thực không thành công";
				
			}
			SendEmailUtil.sendEmail(host, port, user, pass, recipient.getEmail(), subject, content);
			
		} catch (Exception e) {
			e.printStackTrace();
		}

}
}
