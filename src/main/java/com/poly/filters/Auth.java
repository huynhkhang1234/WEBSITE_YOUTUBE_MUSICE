//package com.poly.filters;
//
//import java.io.IOException;
//
//import javax.servlet.Filter;
//import javax.servlet.FilterChain;
//import javax.servlet.FilterConfig;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebFilter;
//import javax.servlet.http.HttpFilter;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import com.poly.entity.user;
//
//
//
//@WebFilter({"/user/*"})
//public class Auth extends HttpFilter implements Filter {
//	
//	public void doFilter( HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws IOException, ServletException {
//		// 
//		String uri =  request.getRequestURI();
//		System.out.println("--------------------------------");
//		System.out.println(uri);
//		user user = (com.poly.entity.user)  request.getSession().getAttribute("user"); 
//		String error = "";
//		if (user == null) {			
//			response.sendRedirect("/index");
//			return;
//		} else {
//			chain.doFilter(request, response);
//		}
//	}
//	public void init(FilterConfig fConfig) throws ServletException {
//
//	}
//	@Override
//	public void destroy() {
//		// TODO Auto-generated method stub
//		
//	}
//
//}
