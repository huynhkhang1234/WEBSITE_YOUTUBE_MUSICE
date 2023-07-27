<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giới thiệu</title>
     <%@ include file="/components/tagLib.jsp" %>
    <%@ include file="/components/css_lib.jsp" %>

   
</head>

<body cz-shortcut-listen="true">

    <div class="top-search-area">
        <div class="modal fade" id="searchModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-body">

                        <button type="button" class="btn close-btn" data-dismiss="modal"><i
                                class="ti-close"></i></button>

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
                                    <li class="active"><a href="gioiThieu.jsp">Giới thiệu</a></li>                                    
                                    <li><a href="VideoDaXem">Video đã xem</a></li>
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

<!-- phần đầu header -->


  
    <!-- Hiện thị gioi thieu -->
    <div class="about-us-area section-padding-80-0 clearfix">
        <div class="container">
        <div class="row align-items-center">
        <div class="col-12 col-lg-6">
        <div class="about-us-content mb-80">
        <h3 class="wow fadeInUp" data-wow-delay="100ms" style="visibility: visible; animation-delay: 100ms; animation-name: fadeInUp;">Hãy sống gì đam mê</h3>
        <div class="line wow fadeInUp" data-wow-delay="200ms" style="visibility: visible; animation-delay: 200ms; animation-name: fadeInUp;"></div>
        <p class="wow fadeInUp" data-wow-delay="300ms" style="visibility: visible; animation-delay: 300ms; animation-name: fadeInUp;">Con người chẳng có gì ngoài thời gian. Bởi vậy mà người ta mới hay nói rằng thời gian giúp chữa lành những vết thương, thời gian hàn gắn nỗi đau, thời gian biến đổi mọi thứ.</p>
        <p class="wow fadeInUp" data-wow-delay="400ms" style="visibility: visible; animation-delay: 400ms; animation-name: fadeInUp;"> Nhưng nếu thực sự chúng ta hiểu rõ được bản thân mình, chỉ cần một khoảnh khắc thì cuộc đời sẽ mở ra trang mới. Những câu nói hay về đam mê giúp bạn có thêm động lực viết tiếp “cuốn sách của riêng mình”.

        </p>
        <a class="btn alime-btn btn-2 mt-30 wow fadeInUp" data-wow-delay="500ms" href="#" style="visibility: visible; animation-delay: 500ms; animation-name: fadeInUp;">Giới thiệu</a>
        </div>
        </div>
        <div class="col-12 col-lg-6">
        <div class="about-video-area mb-80 wow fadeInUp" data-wow-delay="100ms" style="visibility: visible; animation-delay: 100ms; animation-name: fadeInUp;">
        <img src="<c:url value='/templates/user/img/bg-img/17.jpg'/>" alt="">
        <div class="video-icon">
        <a href="https://www.youtube.com/watch?v=sSakBz_eYzQ" class="video-play-btn"><i class="arrow_triangle-right"></i></a>
        </div>
        </div>
        </div>
        </div>
        </div>
        </div>
    <!-- Phần hiện thị tại sao chọn chúng tôi -->
    <section class="why-choose-us-area bg-gray section-padding-80-0 clearfix">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading text-center wow fadeInUp" data-wow-delay="100ms"
                        style="visibility: visible; animation-delay: 100ms; animation-name: fadeInUp;">
                        <h2>Tại sao chọn chúng tôi</h2>
                    </div>
                </div>
            </div>
            <div class="row">

                <div class="col-md-6 col-lg-4">
                    <div class="why-choose-us-content text-center mb-80 wow fadeInUp" data-wow-delay="100ms"
                        style="visibility: visible; animation-delay: 100ms; animation-name: fadeInUp;">
                        <div class="chosse-us-icon">
                            <i class="fa fa-film" aria-hidden="true"></i>
                        </div>
                        <h4>Hình ảnh chất lượng cao</h4>
                        <p>Không có thành công nào mà chẳng phải trải qua những lần thất bại. Nhưng kinh nghiệm và nỗ lực luôn là câu trả lời của những người thành công. Vì vậy, đừng từ bỏ đam mê của mình, bởi một ngày nào đó bạn sẽ là người chiến thắng.</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4">
                    <div class="why-choose-us-content text-center mb-80 wow fadeInUp" data-wow-delay="300ms"
                        style="visibility: visible; animation-delay: 300ms; animation-name: fadeInUp;">
                        <div class="chosse-us-icon">
                            <i class="fa fa-pencil" aria-hidden="true"></i>
                        </div>
                        <h4>Kinh nghiệm phong phú</h4>
                        <p>Không có thành công nào mà chẳng phải trải qua những lần thất bại. Nhưng kinh nghiệm và nỗ lực luôn là câu trả lời của những người thành công. Vì vậy, đừng từ bỏ đam mê của mình, bởi một ngày nào đó bạn sẽ là người chiến thắng.</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4">
                    <div class="why-choose-us-content text-center mb-80 wow fadeInUp" data-wow-delay="500ms"
                        style="visibility: visible; animation-delay: 500ms; animation-name: fadeInUp;">
                        <div class="chosse-us-icon">
                            <i class="fa fa-camera" aria-hidden="true"></i>
                        </div>
                        <h4>Trang thiết bị hiện đại</h4>
                        <p>Không có thành công nào mà chẳng phải trải qua những lần thất bại. Nhưng kinh nghiệm và nỗ lực luôn là câu trả lời của những người thành công. Vì vậy, đừng từ bỏ đam mê của mình, bởi một ngày nào đó bạn sẽ là người chiến thắng.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Phần với thiệu 1 số cá nhân (our team) -->
    <section class="our-team-area section-padding-80-50">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading text-center wow fadeInUp" data-wow-delay="100ms"
                        style="visibility: visible; animation-delay: 100ms; animation-name: fadeInUp;">
                        <h2>Our Team</h2>
                    </div>
                </div>
            </div>
            <div class="row">

                <div class="col-md-6 col-xl-3">
                    <div class="team-content-area text-center mb-30 wow fadeInUp" data-wow-delay="100ms"
                        style="visibility: visible; animation-delay: 100ms; animation-name: fadeInUp;">
                        <div class="member-thumb">
                       
                            <img src="<c:url value='/templates/user/img/bg-img/19.jpg'/>" alt="">                            
                        </div>
                        <h5>Andrew Dean</h5>
                        <span>Photographer</span>
                        <div class="member-social-info">
                            <a href="#"><i class="ti-facebook"></i></a>
                            <a href="#"><i class="ti-twitter-alt"></i></a>
                            <a href="#"><i class="ti-linkedin"></i></a>
                            <a href="#"><i class="ti-pinterest"></i></a>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-xl-3">
                    <div class="team-content-area text-center mb-30 wow fadeInUp" data-wow-delay="300ms"
                        style="visibility: visible; animation-delay: 300ms; animation-name: fadeInUp;">
                        <div class="member-thumb">
                            <img src="<c:url value='/templates/user/img/bg-img/20.jpg'/>" alt="">
                        </div>
                        <h5>Tommy Kim</h5>
                        <span>Photographer</span>
                        <div class="member-social-info">
                            <a href="#"><i class="ti-facebook"></i></a>
                            <a href="#"><i class="ti-twitter-alt"></i></a>
                            <a href="#"><i class="ti-linkedin"></i></a>
                            <a href="#"><i class="ti-pinterest"></i></a>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-xl-3">
                    <div class="team-content-area text-center mb-30 wow fadeInUp" data-wow-delay="500ms"
                        style="visibility: visible; animation-delay: 500ms; animation-name: fadeInUp;">
                        <div class="member-thumb">
                            <img src="<c:url value='/templates/user/img/bg-img/21.jpg'/>" alt="">
                        </div>
                        <h5>Max McCormick</h5>
                        <span>Photographer</span>
                        <div class="member-social-info">
                            <a href="#"><i class="ti-facebook"></i></a>
                            <a href="#"><i class="ti-twitter-alt"></i></a>
                            <a href="#"><i class="ti-linkedin"></i></a>
                            <a href="#"><i class="ti-pinterest"></i></a>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-xl-3">
                    <div class="team-content-area text-center mb-30 wow fadeInUp" data-wow-delay="700ms"
                        style="visibility: visible; animation-delay: 700ms; animation-name: fadeInUp;">
                        <div class="member-thumb">
                            <img src="<c:url value='/templates/user/img/bg-img/22.jpg'/>" alt="">
                        </div>
                        <h5>Robert Ward</h5>
                        <span>Photographer</span>
                        <div class="member-social-info">
                            <a href="#"><i class="ti-facebook"></i></a>
                            <a href="#"><i class="ti-twitter-alt"></i></a>
                            <a href="#"><i class="ti-linkedin"></i></a>
                            <a href="#"><i class="ti-pinterest"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
   
   		  <!-- footer -->
		<%@ include file="/components/footer.jsp" %>
	<!-- link the css -->

    <script src="//cdnjs.cloudflare.com/ajax/libs/wow/0.1.12/wow.min.js"></script>
    <script>new WOW().init();</script>


    <script src="<c:url value='/templates/user/js/jquery.min.js'/>"></script>
    <script src="<c:url value='/templates/user/js/popper.min.js'/>"></script>
    <script src="<c:url value='/templates/user/js/bootstrap.min.js'/>"></script>
    <script src="<c:url value='/templates/user/js/main.js'/>"></script>
    
    <script src="<c:url value='/templates/user/js_slider/owl.carousel.min.js'/>"></script>
    <script src="<c:url value='/templates/user/js_slider/main_sider.js'/>"></script>

    <script src="js/active.js"></script><a id="scrollUp" href="#top"
        style="position: fixed; z-index: 2147483647; display: block;"></a>

    <script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'UA-23581568-13');
    </script>
    <script defer=""
        src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993"
        integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA=="
        data-cf-beacon="{&quot;rayId&quot;:&quot;7a29d9947f2fdbe5&quot;,&quot;token&quot;:&quot;cd0b4b3a733644fc843ef0b185f98241&quot;,&quot;version&quot;:&quot;2023.2.0&quot;,&quot;si&quot;:100}"
        crossorigin="anonymous"></script>

    <div id="eJOY__extension_root" class="eJOY__extension_root_class" style="all: unset;"></div><iframe
        id="nr-ext-rsicon"
        style="position: absolute; display: none; width: 50px; height: 50px; z-index: 2147483647; border-style: none; background: transparent;"></iframe>
</body>

</html>