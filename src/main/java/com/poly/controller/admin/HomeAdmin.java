package com.poly.controller.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.poly.service.impl.StatService;
import com.poly.service.impl.StatServiceImpl;
import com.poly.service.impl.userServiceImplements;

import dto.UserDto;
import dto.VideoLikedInfo;

/**
 * Servlet implementation class HomeAdm
 */
@WebServlet(urlPatterns = {"/view/admin", "/admin/favorites","/admin/delete"}, name="HomeControllerAdmin")
public class HomeAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private  StatService statSevice = new StatServiceImpl();
	    private  com.poly.service.userService userService = new userServiceImplements();
           
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getServletPath();
		System.out.println(uri);
		if(uri.contains("admin")) {
			List<VideoLikedInfo> videos = statSevice.findVideoLikedInfo();
			request.setAttribute("videos", videos);		
			request.getRequestDispatcher("/view/admin/Home.jsp").forward(request, response);
		}else if(uri.contains("favorites")) {
			PrintWriter out= response.getWriter();
			response.setCharacterEncoding("UTF-8");
			response.setContentType("application/json");
			String videoHref = request.getParameter("href");
			
			List<UserDto> users = userService.findUsersLikedVideoByVideoHref(videoHref);
			System.out.println(users);
			
			if(users.isEmpty()) {
				response.setStatus(400);
			}else {
				ObjectMapper mapper= new ObjectMapper();
				String dataResponse = mapper.writeValueAsString(users);
				response.setStatus(200);
				out.print(dataResponse);
				out.flush();
			}
		}
	}


}
