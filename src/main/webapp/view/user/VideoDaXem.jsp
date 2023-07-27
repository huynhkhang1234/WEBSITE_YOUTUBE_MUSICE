<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Video đã xem</title>
<%@ include file="/components/tagLib.jsp"%>
<%@ include file="/components/css_lib.jsp"%>



</head>

<body>

	<div class="top-search-area">
		<div class="modal fade" id="searchModal" tabindex="-1" role="dialog"
			aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-body">

						<button type="button" class="btn close-btn" data-dismiss="modal">
							<i class="ti-close"></i>
						</button>

						<form action="index.html" method="post">
							<input type="search" name="top-search-bar" class="form-control"
								placeholder="Search and hit enter...">
							<button type="submit">Search</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- phan header -->
	  <header class="header-area">

        <div class="main-header-area sticky">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">

                    <nav class="classy-navbar justify-content-between" id="alimeNav">

                        <a style="display: flex; align-items: center;" class="nav-brand" href="index">
                            <span style="color: #fff; margin-right: 7px;">Youtube</span>
                            <img src="<c:url value='/templates/user/img/core-img/youtube.png'/>" alt="">
                                                        
                        </a>

                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <div class="classy-menu">

                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <div class="classynav">
                                <ul id="nav">
                                    <li ><a href="index">Trang chủ</a></li>                                  
                                    <li><a href="gioiThieu.jsp">Giới thiệu</a></li>                                    
                                    <li class="active" ><a href="VideoDaXem">Video đã xem</a></li>
                                    <li><a href="VideoDaThich">Video đã thích</a></li>
                                    <li class="cn-dropdown-item has-down"><a href="#">
                                  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
                                     <c:choose>
                                     <c:when test="${ empty sessionScope.userNow}">
                                     	Tài khoản
                                     </c:when>
                                     <c:otherwise>
                                     ${sessionScope.userNow.getUserName()}
                                     </c:otherwise>
                                     </c:choose>                                                                                       
                                    </a>
                                        <ul class="dropdown">
                                        	<c:choose>
                                        	<c:when test="${ empty sessionScope.userNow}">
                                        	   <li><a href="DangNhap.jsp"> Đăng nhập</a></li>
                                            <li><a href="DangKi.jsp"> Đăng kí</a></li>
                                              <li><a href="QuenMatKhau"> Quên mật khẩu</a></li>
                                        	</c:when>
                                        	<c:otherwise>
                                        	  <li><a href="CapNhatThongTin.jsp">Thông tin cá nhân</a></li>
                                            <li><a href="DoiMatKhau">Đổi mật khẩu</a></li>
                                            <li><a href="DangXuat">Đăng xuất</a></li>
                                        	</c:otherwise>
                                        	</c:choose>                                                                                                                              
                                        </ul>
                                        <span class="dd-trigger"></span>
                                    </li>

                                </ul>

                                <div class="search-icon" data-toggle="modal" data-target="#searchModal"><i
                                        class="ti-search"></i></div>
                            </div>

                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>

	<!-- phần đầu slider -->
	<%@ include file="/components/silder.jsp"%>
	<!-- Hiện thị danh sách lựa chọn -->
	<div class="alime-portfolio-area section-padding-80 clearfix">
		<div class="container-fluid">
			<div class="row">
				<!-- thanh nav -->
				<div class="col-12">

					<div class="alime-projects-menu">
						<div class="portfolio-menu text-center">
							<button class="btn " data-filter="*">LỊCH SỬ VIDEO ĐÃ
								XEM</button>

						</div>
					</div>
				</div>
			</div>

			<!-- video hien thi -->

			 <div class="row alime-portfolio" style="position: relative;">
 					<c:forEach var="item" items="${videosHistory}">
							<div
								class="col-12 col-sm-6 col-lg-4 single_gallery_item nature mb-30 wow fadeInUp"
								data-wow-delay="100ms"
								style="visibility: visible; animation-delay: 100ms; animation-name: fadeInUp;">
								<div class="single-portfolio-content"
									style="border-radius: 20px;">
									<img src="${item.poster}"
										alt="">

									<div class="hover-content">
										<a href="<c:url value='/video?action=watch&id=${item.href}'/>" class="portfolio-img"> <i
											class="ti-control-play"></i>
										</a>
									</div>
								</div>
								<!--  -->
								<div class="col-sm-12">
								<div class="card-title title_music cl-sm-6" style="text-align: left; margin-top: 10px">
								<span>
								<img style="border-radius:50%;width: 50px;height: 80% " src="<c:url value='/templates/user/img/bg-img/3.jpg'/>"
										alt="">
								</span>
							 	 ${item.title} 
									</div>
									<!--  -->
								<span class="col-sm-12"
									style="margin: 0px; padding: 0px 10px; display: flex; align-items: center;">
									<span class="card-title title_music col-sm-6"
									style="text-align: left; padding: 0px; margin: 0px"> ${item.shares}
										share </span> <span class="card-title title_music col-sm-6"
									style="text-align: right; padding: 0px; margin: 0px"> ${item.views}
										view </span>
								</span>
								</div>
								

							</div>

						</c:forEach>

</div>

			<!-- nut buttton xem thêm -->
			<div class="row">
				<div class="col-12 text-center wow fadeInUp" data-wow-delay="700ms"
					style="visibility: visible; animation-delay: 700ms; animation-name: fadeInUp;">
					<a href="#" class="btn alime-btn btn-2 mt-15">View More</a>
				</div>
			</div>
		</div>
	</div>


			

	<!-- Phần theo dõi  -->

	<!-- footer -->
	<%@ include file="/components/footer.jsp"%>
	<!-- link the css -->
	<%@ include file="/components/js_lib.jsp"%>

	<script src="//cdnjs.cloudflare.com/ajax/libs/wow/0.1.12/wow.min.js"></script>
	<script>
		new WOW().init();
	</script>
	<script src="js/active.js"></script>
	<a id="scrollUp" href="#top"
		style="position: fixed; z-index: 2147483647; display: block;"></a>

	<script async=""
		src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());

		gtag('config', 'UA-23581568-13');
	</script>
	<script defer=""
		src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993"
		integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA=="
		data-cf-beacon="{&quot;rayId&quot;:&quot;7a29d9947f2fdbe5&quot;,&quot;token&quot;:&quot;cd0b4b3a733644fc843ef0b185f98241&quot;,&quot;version&quot;:&quot;2023.2.0&quot;,&quot;si&quot;:100}"
		crossorigin="anonymous"></script>

	<div id="eJOY__extension_root" class="eJOY__extension_root_class"
		style="all: unset;"></div>
	<iframe id="nr-ext-rsicon"
		style="position: absolute; display: none; width: 50px; height: 50px; z-index: 2147483647; border-style: none; background: transparent;"></iframe>
</body>

</html>