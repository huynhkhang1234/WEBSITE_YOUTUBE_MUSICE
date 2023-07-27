package com.poly.service;

import javax.servlet.ServletContext;

import com.poly.entity.user;

public interface SendEmailService {
	void sendEmail(ServletContext context, user recipient, String type);
}
