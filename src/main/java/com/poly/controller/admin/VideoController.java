package com.poly.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.poly.contans.VariableSession;
import com.poly.entity.user;
import com.poly.entity.video;
import com.poly.service.videoService;
import com.poly.service.impl.videoServiceImpl;

@WebServlet(urlPatterns = {"/admin/video"}, name="VideoControllerAdmin")
public class VideoController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	private videoService videoService = new videoServiceImpl();
		
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//HttpSession session = req.getSession();
		//user currentUser =  (user) session.getAttribute(VariableSession.userLogin);
		//if(currentUser!=null && currentUser.getIsAdmin()==Boolean.TRUE) {
			String action = req.getParameter("action");
			System.out.println(action);
			switch(action) {
			case "view":
				doGetOverViews(req, resp);
				break;
			case "delete":
				System.out.println("vo post");
				doGetDelete(req, resp);
				break;
			case "add":
				req.setAttribute("isEdit", false);
				doGetAdd(req, resp);
				break;
			case "edit":
				req.setAttribute("isEdit", true);
				doGetEdit(req, resp);
				break;
			}
		//}else {
			//resp.sendRedirect("index");
		//}
		
	}	
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//HttpSession session = req.getSession();
		//user currentUser = (user) session.getAttribute(VariableSession.userLogin);
		//if(currentUser!=null && currentUser.getIsAdmin()==Boolean.TRUE) {
			String action = req.getParameter("action");
			System.out.println(action);
			switch(action) {
			case "add":
				doPostAdd(req, resp);
				break;
			case "edit":
				doPostEdit(req, resp);
				break;
			}
		//}else {
			//resp.sendRedirect("index");
		//}
	}
	
	
	private void doGetOverViews(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	List<video> videos = videoService.findAll();
	req.setAttribute("videos", videos);	
	RequestDispatcher   requestDispatcher = req.getRequestDispatcher("/view/admin/video-overview.jsp");
	requestDispatcher.forward(req, resp);
	
	}
	
	private void doGetDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("application/json");
		String href = req.getParameter("href");
		System.out.println(href);
		video videoDelete = videoService.delete(href);
		System.out.println("du lieu da xoa");
		System.out.println(videoDelete);
		if(videoDelete!=null) {
			
			resp.setStatus(204);
		}else {
			resp.setStatus(400);
		}
		
	}
	
	private void doGetAdd(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		RequestDispatcher   requestDispatcher = req.getRequestDispatcher("/view/admin/video-edit.jsp");
		requestDispatcher.forward(req, resp);
		
		}
	
	private void doGetEdit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String href = req.getParameter("href");
		video video = videoService.findByHref(href);
		req.setAttribute("video", video);			
		RequestDispatcher   requestDispatcher = req.getRequestDispatcher("/view/admin/video-edit.jsp");
		requestDispatcher.forward(req, resp);
		
		}
	
	private void doPostAdd(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("application/json");
		
		String title = req.getParameter("title");
		String description = req.getParameter("description");
		String href = req.getParameter("newHref");
		String poster = req.getParameter("poster");
		
		video video = new video();
		video.setTitle(title);
		video.setDescription(description);
		video.setHref(href);
		video.setPoster(poster);
		
		video videoReturn = videoService.create(video);
		if(videoReturn!=null) {
			resp.setStatus(204);
		}else {
			resp.setStatus(400);
		}
		
		
	}
	
	private void doPostEdit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("application/json");
		
		String title = req.getParameter("title");
		String description = req.getParameter("description");
		String href = req.getParameter("newHref");
		String poster = req.getParameter("poster");
		String hrefOrigin = req.getParameter("hrefOrigin");
		
		video video = videoService.findByHref(hrefOrigin);
		video.setTitle(title);
		video.setDescription(description);
		video.setHref(href);
		video.setPoster(poster);
		
		video videoReturn = videoService.update(video);
		if(videoReturn!=null) {
			resp.setStatus(204);
		}else {
			resp.setStatus(400);
		}
		
		
	}
	
	
	
	
	
	
	
}
