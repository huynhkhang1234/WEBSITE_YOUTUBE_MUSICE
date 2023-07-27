<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Đổi mật khẩu</title>
        <%@ include file="/components/tagLib.jsp" %>

            <link rel="stylesheet" href="<c:url value='/templates/user/css_DoiMatKhau/doiMatKhau.css'/>">
    </head>

    <body>
        <div class="login">
            <h1>Đổi mật khẩu</h1>
            <label style="color: #fff;font-size: 18px" id="messageChagePass"></label>
            <br>
            <input disabled value="${sessionScope.userNow.getUserName()}" type="text"
                placeholder="Tên đăng nhập" required="required" />
            <input disabled value="${sessionScope.userNow.getEmail()}" type="email" placeholder="Email"
                required="required" />
            <input id="passOld" type="password" name="passOld"  placeholder="Mật khẩu" />
            <input id="passNew1" type="password" name="passNew1"  placeholder="Nhập  mật khẩu mới"/>
            <input id="passNew2" type="password" name="passNew2"  placeholder="Nhập lại mật khẩu mới"
                />
            <button id="changePass" type="submit" class="btn btn-primary btn-block btn-large">Đổi mật khẩu</button>

        </div>
        <script src="<c:url value='/templates/user/js/jquery.min.js'/>"></script>
        <script>
            /* click lấy dữ liệu và xoa form  */
            $('#changePass').click(function () {              
                $('#messageChagePass').text('');
                var matKhauHienTai = $('#passOld').val();
                var matKhauMoi = $('#passNew2').val();
                 
                // Json lấy giá trị.
                var formData = {
                    'matKhauHienTai1': matKhauHienTai,
                    'matKhauMoi2': matKhauMoi
                };                           
                $.ajax({
                    url: 'DoiMatKhau',
                    type: 'POST',
                    data: formData
                }).then(function (data) {
                    
                    $('#messageChagePass').text('Mật khẩu được cập nhật thành công');
                    setTimeout(function () {
                        window.location.href = 'http://localhost:8080/KhangHBPC04012_Assignment_Java4_Dynamic/view/user/index';
                    }, 1000)
                })
                    .fail(function (error) {
                        $('#messageChagePass').text('Mật khẩu cập nhật thất bại');
                    });

            });



        </script>
    </body>

    </html>