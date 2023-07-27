package com.poly.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.poly.contans.VariableSession;
import com.poly.entity.user;
import com.poly.service.SendEmailService;
import com.poly.service.userService;
import com.poly.service.impl.StatService;
import com.poly.service.impl.StatServiceImpl;
import com.poly.service.impl.emailServiceImpl;
import com.poly.service.impl.userServiceImplements;

import dto.VideoLikedInfo;

@WebServlet({ "/view/user/dangNhap", "/view/user/DangKi", "/view/user/DangXuat", "/view/user/QuenMatKhau", "/view/user/DoiMatKhau"})

public class userController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private userService userForm = new userServiceImplements();
	// tạo đối tượng truy xuất
	private SendEmailService sendEmailService = new emailServiceImpl();
	private  StatService statSevice = new StatServiceImpl();
    private  userService userService = new userServiceImplements();
	// sử lí doGet
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String uri = request.getServletPath();
		if (uri.contains("dangNhap")) {
			doGetDangNhap(request, response);
		} else if (uri.contains("DangKi")) {
			doGetDangKi(request, response);
		} else if (uri.contains("DangXuat")) {
			doGetDangXuat(session, request, response);
		} else if (uri.contains("QuenMatKhau")) {
			doGetQuenMatKhau(request, response);
		}else if (uri.contains("DoiMatKhau")) {
			doGetDoiMatKhau(request, response);
		}
	}

	/////// sử lí doPost
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String uri = request.getServletPath();
		if (uri.contains("dangNhap")) {
			doPostDangNhap(session, request, response);
		} else if (uri.contains("DangKi")) {
			doPostDangKi(session, request, response);
		} else if (uri.contains("QuenMatKhau")) {
			doPostQuenMatKhau(request, response);
		} else if (uri.contains("DoiMatKhau")) {
			doPostDoiMatKhau(session,request, response);
		}
	}

//	sử lí redirect đến trang đăng nhập
	private void doGetDangNhap(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/view/user/DangNhap.jsp").forward(request, response);
	}

	/// đăng ki
	private void doGetDangKi(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/view/user/DangKi.jsp").forward(request, response);
	}

	// đăng xuất
	private void doGetDangXuat(HttpSession session, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		session.removeAttribute(VariableSession.userLogin);
		response.sendRedirect("index");
	}
	//quên mật khẩu
	private void doGetQuenMatKhau(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/view/user/QuenMatKhau.jsp").forward(request, response);
		
	}
	private void doGetDoiMatKhau( HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {		
		request.getRequestDispatcher("/view/user/DoiMatKhau.jsp").forward(request, response);
}
	///////////////////do Post////////////////////
	//doPost đăng nhập
	private void doPostDangNhap(HttpSession session, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userName = request.getParameter("userName");
		String passWord = request.getParameter("passWord");
		System.out.println(userName);
		System.out.println(passWord);
		user userDangNhap = userForm.Login(userName, passWord);
		System.out.println(userDangNhap);
		System.out.println("Kiemr tra tài khoản");

		if (userDangNhap != null ) {
			if(userDangNhap.getIsAdmin() == false) {
				session.setAttribute(VariableSession.userLogin, userDangNhap);
				System.out.println("Đăng nhập thành công");
				//
			//	request.getSession().setAttribute("user", user);
				
				//session.setAttribute("user", userDangNhap);
				request.getSession().setAttribute("user", userDangNhap);
				//
				System.out.println(userDangNhap.getIsAdmin());
				// send đến đường dẫn chứ không đến redirect và anotions. // và nó sẽ ưu tiên
				// cả 2 thằng anotion và redirect.
				response.sendRedirect("index");	
				
			}else {
				session.setAttribute(VariableSession.userLogin, userDangNhap);
				System.out.println("Đăng nhập thành công admin");
				System.out.println(userDangNhap.getIsAdmin());
				// send đến đường dẫn chứ không đến redirect và anotions. // và nó sẽ ưu tiên
				// cả 2 thằng anotion và redirect.	
				
			//	List<VideoLikedInfo> videos = statSevice.findVideoLikedInfo();
				//request.setAttribute("videos", videos);
				//System.out.println(videos);
			//	session.setAttribute(VariableSession.userAdmin, videos);
				
				response.sendRedirect("../admin/indexAdmin");
				//request.getRequestDispatcher("../../view/admin/indexAdmin").forward(request, response);
			}
			
		} else {
			response.sendRedirect("DangNhap.jsp");
		}

	}

	private void doPostDangKi(HttpSession session, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userName = request.getParameter("userName");
		String passWord = request.getParameter("passWord");
		String email = request.getParameter("email");

		System.out.println(userName + "dang ki");
		System.out.println(passWord);
		System.out.println(email);
		user userDangNhap = userForm.create(userName, passWord, email);
		System.out.println(userDangNhap);
		if (userDangNhap != null) {

			session.setAttribute(VariableSession.userLogin, userDangNhap);
			System.out.println("Đăng ki thành công");
			// gửi email
			try {
				sendEmailService.sendEmail(getServletContext(), userDangNhap, "xinChao");
			} catch (Exception e) {
				e.printStackTrace();
			}
//			//send đến đường dẫn chứ không đến redirect và anotions.
//			// và nó sẽ ưu tiên cả 2 thằng anotion và redirect.
			response.sendRedirect("DangNhap.jsp");
		} else {
			response.sendRedirect("DangKi.jsp");
		}

	}
	// DO POST quên mật khẩu
	private void doPostQuenMatKhau( HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {		
		response.setContentType("aplication/json");
		String email = request.getParameter("email");
		user userWithNewPass = userForm.resetPassWord(email);
		if(userWithNewPass!=null) {
			sendEmailService.sendEmail(getServletContext(), userWithNewPass, "DoiMatKhau");
			response.setStatus(204);
		}else {
			response.setStatus(400);
	
		}
	}
		private void doPostDoiMatKhau(HttpSession session, HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {		
					response.setContentType("aplication/json");
					String matKhauHienTai = request.getParameter("matKhauHienTai1");
					String matKhauMoi = request.getParameter("matKhauMoi2");
					String matKhauMoiNhapLai = request.getParameter("matKhauMoi2");
					
					System.out.println(matKhauHienTai);
					// lấy user ra từ biến toàn cục
					user matKhauDangNhap = (user) session.getAttribute(VariableSession.userLogin) ;
					//logic kiểm tra
					if(matKhauDangNhap.getPassWord().equals(matKhauHienTai)) {
						if(matKhauMoi.equals(matKhauMoiNhapLai)) {
							//set mat khẩu lại thành công
							matKhauDangNhap.setPassWord(matKhauMoiNhapLai);
							
							user userUpdate = userForm.update(matKhauDangNhap);
							if(userUpdate != null) {
								session.setAttribute(VariableSession.userLogin, userUpdate);
								response.setStatus(204);
							}else {
								response.setStatus(400);
							}
						}else {
							System.out.println("Mật khẩu mới và mật khẩu hiện tại không trùng nhau");
							response.setStatus(400);
						}
					}else {
						System.out.println("Mật khẩu nhập vào  không chính xác");
					}
							
	}
}
	


