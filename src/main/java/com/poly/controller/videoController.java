package com.poly.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.poly.contans.VariableSession;
import com.poly.entity.history;
import com.poly.entity.user;
import com.poly.entity.video;
import com.poly.service.historySecvice;
import com.poly.service.videoService;
import com.poly.service.impl.historyServiceImpl;
import com.poly.service.impl.videoServiceImpl;

/**
 * Servlet implementation class videoController
 */
@WebServlet("/video")
public class videoController extends HttpServlet {
	private videoService videoServiceItem = new videoServiceImpl();
	private historySecvice historyServiceItem = new historyServiceImpl();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		//tạo prams
		String actionsParam = request.getParameter("action");
		
		String href = request.getParameter("id");
		
		if(actionsParam.contains("watch")) {
			doGetWatch(session,href,request,response);
		}else if(actionsParam.contains("like")) {
			doGetLike(session, href,request,response);
		}
	}
//	hàm sử lí phần xem video
	protected void doGetWatch(HttpSession session,String href, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		video videoItem =  videoServiceItem.findByHref(href);
		request.setAttribute("videos", videoItem);
		System.out.println("Lấy giá trị user ra:");
//		kiểm tra đăng nhập chưa
		user currenUser = (user) session.getAttribute(VariableSession.userLogin);
		System.out.println(currenUser);
		System.out.println(videoItem);
		if(currenUser != null) {
				
			history historyItemHistory = historyServiceItem.create(currenUser, videoItem);
			//tạo biến lưu trữ kiểm tra like hay chuawvaf truyền dữ liệu
			request.setAttribute("flagLike", historyItemHistory.isLike());
			System.out.println("kiem tra ");
			System.out.println(historyItemHistory.isLike());
		}
		request.getRequestDispatcher("/view/user/Video.jsp").forward(request, response);
	}
		///phần sử lí phần like
	protected void doGetLike(HttpSession session,String href, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		chuyen kieu du lieu json
		response.setContentType("application/json");
		/// kiem tra id va xem co h\hiện thị like hay không like hay chưa
		user currenUser = (user) session.getAttribute(VariableSession.userLogin);
		System.out.println(currenUser);
		boolean result = historyServiceItem.updateLikeAndUnlike(currenUser, href);
		if(result == true) {
			response.setStatus(204);
		}else {
			response.setStatus(400);
		}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
