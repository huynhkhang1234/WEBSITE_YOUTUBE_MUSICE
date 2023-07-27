<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Đăng kí</title>
<%@ include file="/components/tagLib.jsp"%>
<link rel="stylesheet"
	href="<c:url value='/templates/user/css/bootstrap.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='/templates/user/css_DangNhap/DangNhap_DangKi.css'/>">
<link rel="stylesheet"
	href="<c:url value='/templates/user/css_DangNhap/index.css'/>">
</head>
<body>
	<section class="page project ">
		<form name="form" action="DangKi" method="post" class="form_login form-project">

			<div class="form-group header_baner">
				<img class="img_logo" src="images/logo-login.22778f99.png" alt="">

				<div class="form-group heading_baner">
					<span style="font-size: 40px;color: #fff">Đăng kí</span>
				</div>
			</div>

			<div class="form-group has-feedback">
				<label for="exampleInputEmail1"></label> <input name="userName"
					type="text" class="form-control border-indigo"
					required placeholder="Tên đăng ký (tài khoản)">
			</div>

			<div class="form-group has-feedback">
				<label for="exampleInputPassword1"></label> <input required
					name="passWord" type="password" id="password"
					class="form-control border-indigo" placeholder="Nhập mật khẩu">
			</div>
			<!-- Nhập lại mật khẩu -->
			<div class="form-group has-feedback">
				<label for="exampleInputEmail1"></label> <input name="passWord1"
					type="password" class="form-control border-indigo"
					required placeholder="Nhập lại mật khẩu">
			</div>

			<div class="form-group has-feedback">
				<label></label> <input name="email" type="text" placeholder="Email"
					class="form-control border-indigo">
			</div>

			<br>
			<button style="margin: 0;" type="submit" class="submit">Đăng
				kí</button>
		</form>
	</section>
</body>
</html>