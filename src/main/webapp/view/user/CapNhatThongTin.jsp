<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Creative Colorlib SignUp Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<%@ include file="/components/tagLib.jsp" %>   
 <link rel="stylesheet" href="<c:url value='/templates/user/css_capNhatThongTin/capNhatThongTin.css'/>">
<!-- web font -->
<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
</head>
<body>
	<!-- main -->
	<div class="main-w3layouts wrapper">
		<h1>Cập nhật thông tin</h1>
		<div class="main-agileinfo">
			<div class="agileits-top">
				<form action="#" method="post">
					<input disabled value="${sessionScope.userNow.getUserName()}" class="text" type="text" name="Username"  placeholder="Tên đăng nhập"  >
					<input  value="${sessionScope.userNow.getEmail()}" class="text email" type="email" name="email" placeholder="Email" >
					<input disabled value="${sessionScope.userNow.getPassWord()}" class="text" type="password" name="password" placeholder="Mật khẩu">				
                    <br>
					<div class="wthree-text">
						<label class="anim">
							<input type="checkbox" class="checkbox" >
							<span>Đồng ý với thông tin</span>
						</label>
						<div class="clear"> </div>
					</div>
					<input type="submit" value="Cập nhật">
				</form>
				<p><a href="DangKi.jsp">Đăng kí tài khoản ?</a> <a style="margin-left: 10px;" href="DangNhap.jsp"> Đăng nhập!</a></p>
			</div>
		</div>
	
		<ul class="colorlib-bubbles">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>	
</body>
</html>