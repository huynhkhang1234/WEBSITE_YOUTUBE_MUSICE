<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Quên mật khẩu</title>
        <%@ include file="/components/tagLib.jsp" %>

            <link rel="stylesheet" href="<c:url value='/templates/user/css_DoiMatKhau/doiMatKhau.css'/>">
    </head>

    <body>
        <div class="login">
            <h1>Quên mật khẩu</h1>

            <input type="email" name="email" id="email" placeholder="Vui lòng nhập Email quên mật khẩu"
                required="required" />
            <button id="sendBtn" type="submit" class="btn btn-primary btn-block btn-large">Xác
                nhận</button>

            <h4 id="messageReturn" style="color: #fff;">
                
            </h4>

        </div>
        <!-- link the css -->

        <script src="<c:url value='/templates/user/js/jquery.min.js'/>"></script>
        <script>

            /* click lấy dữ liệu và xoa form  */
            $('#sendBtn').click(function () {
                alert('vo submit');
                $('#messageReturn').text('');
                var email = $('#email').val();
                alert(email);
                // Json lấy giá trị.
                var formData = { 'email': email };
                alert(formData);
                $.ajax({
                    url: 'QuenMatKhau',
                    type: 'POST',
                    data: formData
                }).then(function (data) {
                    alert('Du lieu chinh xac')
                    $('#messageReturn').text('Thông tin được gửi thành công');
                    setTimeout(function () {
                        window.location.href = 'http://localhost:8080/KhangHBPC04012_Assignment_Java4_Dynamic/view/user/index';
                    }, 1000)
                })
                    .fail(function (error) {
                        $('#messageReturn').text('Thông tin không chính xác vui lòng thử lại');
                    });

            });



        </script>
    </body>

    </html>