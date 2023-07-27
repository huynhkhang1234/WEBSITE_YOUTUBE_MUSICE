<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
                                    <li class="active"><a href="index">Trang chủ</a></li>                                  
                                    <li><a href="gioiThieu.jsp">Giới thiệu</a></li>                                    
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
    