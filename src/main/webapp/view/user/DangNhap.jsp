<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>    
    <%@ include file="/components/tagLib.jsp" %>   
   <link rel="stylesheet" href="<c:url value='/templates/user/css/bootstrap.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/templates/user/css_DangNhap/DangNhap_DangKi.css'/>">	
    <link rel="stylesheet" href="<c:url value='/templates/user/css_DangNhap/index.css'/>">  
  
    
    	
    

</head>

<body>
    <section class="page home active">
        <!-- dang nhap -->
        <form action="dangNhap" method="POST" class="form_login" style="padding: 20px;">
            <div class="form-group header_baner">
                <img class="img_logo" src="<c:url value='/templates/user/img/dangNhap/logo-login.22778f99.png'/>" alt="">
                <div class="form-group heading_baner">
                    <span>Đăng nhập</span>
                </div>
            </div>

            <div class="form-group has-feedback" style="margin: 0; padding: 0;">
                <label for="exampleInputEmail1"></label>
                <!-- chú ý required -->
                <input required name="userName" class="form-control " id="username"
                    placeholder="Tên đăng nhập" width="100%">
               
            </div>
            <br>            
            <div class="form-group has-feedback" style="margin:0; padding: 0;">
                <label for="exampleInputPassword1"></label>
                <input required name="passWord"  width="100%" type="password" class="form-control "
                    id="password" placeholder="Password">
               
            </div>

            <div class="form-group" style="text-align: right; margin-right: 30px; margin-top: 5px;margin-bottom: 0;">
                <label for="">
                    <span>Đổi mật khẩu ?</span>
                </label>
            </div>
            <div class="form-group" style="display: flex;align-items: center;  margin-right: 30px;">
                <div style="flex-grow: 1; border-bottom: 1px solid aliceblue ;"></div>
                <span style="color: #fff; font-size: 16px; padding-left: 8px; padding-right: 8px;">Hoặc</span>
                <div style="flex-grow: 1; border-bottom: 1px solid aliceblue;"></div>
            </div>

            <div class="form-group" style="text-align: center;">
                <button type="button" style="margin-top: 0;">
                
                
                    <span><img src= "<c:url value='/templates/user/img/dangNhap/google-icon.0c293cce.png'/>" alt="gg-icon"><span
                        style=" width: 100%; font-size: 12px; font-weight: 600; color: yellowgreen; margin-left: 20px; margin-top: 0 !important;">Đăng
                            nhập bằng google</span></span><span class="MuiTouchRipple-root"></span></button>
            </div>
            <br>
            <div class="form-group  " style="margin: 0; padding: 0;">
                <button type="submit" class="submit"
                    style="width: 100%; margin: 0; padding: 0;">Đăng
                    nhập</button>
            </div>

        </form>

    </section>
</body>

</html>