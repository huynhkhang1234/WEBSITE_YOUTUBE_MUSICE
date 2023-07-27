package com.poly.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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

@WebServlet({ "/view/user/VideoDaThich","/view/user/index","/view/user/VideoDaXem" })
public class homeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private videoService videoService = new videoServiceImpl();
	private historySecvice historyServiecITem = new historyServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String uri = request.getServletPath();
		System.out.println("Đường dẫn");
		System.out.println(uri);
		if (uri.contains("index")) {
			doGetIndex(request, response);
		}else if(uri.contains("VideoDaThich")) {		
			doGetFavorites(session,request,response);
		}else if(uri.contains("VideoDaXem")) {
			System.out.println("vô video đã xem");
			doGetHistory(session,request,response);
		}
		
	
		
	}

	private void doGetIndex(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Hiện video index");
		List<video> videos = videoService.findAll();
		System.out.println(videos);
		request.setAttribute("videos", videos);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	private void doGetFavorites(HttpSession session, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		user userItem = (user) session.getAttribute(VariableSession.userLogin);
		if(userItem != null) {
			
			List<history> historyItem = historyServiecITem.findUserAndIsLike(userItem.getUserName());
			//	System.out.println(historyItem);
			List<video> videoItem = new ArrayList<>();
			for (int i = 0; i < historyItem.size(); i++) {
				videoItem.add(historyItem.get(i).getVideo());
			}
			request.setAttribute("videosHistory", videoItem);
			//System.out.println("danh sách video yêu thích");
			//System.out.println(videoItem.get(0).getTitle());
			request.setAttribute("videosLike", videoItem);
			request.getRequestDispatcher("VideoDaThich.jsp").forward(request, response);		
		}else {
			request.getRequestDispatcher("DangNhap.jsp").forward(request, response);
		}
	}
	
	private void doGetHistory(HttpSession session,HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		user userItem = (user) session.getAttribute(VariableSession.userLogin);
		if(userItem != null) {
			
			List<history> historyItem = historyServiecITem.findByUserName(userItem.getUserName());
			//System.out.println(historyItem);
			List<video> videoItem = new ArrayList<>();
			for (int i = 0; i < historyItem.size(); i++) {
				videoItem.add(historyItem.get(i).getVideo());
			}			
			System.out.println(videoItem.get(0).getTitle());
			request.setAttribute("videosHistory", videoItem);
			request.getRequestDispatcher("VideoDaXem.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("DangNhap.jsp").forward(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
