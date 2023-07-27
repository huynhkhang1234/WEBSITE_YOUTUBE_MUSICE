
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Video</title>
<%@ include file="/components/tagLib.jsp"%>
<link rel="stylesheet" href="<c:url value='/templates/user/style.css'/>">
<link rel="stylesheet" href="<c:url value='/templates/user/video.css'/>">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script nonce="67891eb1-a642-4826-8098-758077d96b5a">(function (w, d) { !function (bv, bw, bx, by) { bv[bx] = bv[bx] || {}; bv[bx].executed = []; bv.zaraz = { deferred: [], listeners: [] }; bv.zaraz.q = []; bv.zaraz._f = function (bz) { return function () { var bA = Array.prototype.slice.call(arguments); bv.zaraz.q.push({ m: bz, a: bA }) } }; for (const bB of ["track", "set", "debug"]) bv.zaraz[bB] = bv.zaraz._f(bB); bv.zaraz.init = () => { var bC = bw.getElementsByTagName(by)[0], bD = bw.createElement(by), bE = bw.getElementsByTagName("title")[0]; bE && (bv[bx].t = bw.getElementsByTagName("title")[0].text); bv[bx].x = Math.random(); bv[bx].w = bv.screen.width; bv[bx].h = bv.screen.height; bv[bx].j = bv.innerHeight; bv[bx].e = bv.innerWidth; bv[bx].l = bv.location.href; bv[bx].r = bw.referrer; bv[bx].k = bv.screen.colorDepth; bv[bx].n = bw.characterSet; bv[bx].o = (new Date).getTimezoneOffset(); if (bv.dataLayer) for (const bI of Object.entries(Object.entries(dataLayer).reduce(((bJ, bK) => ({ ...bJ[1], ...bK[1] }))))) zaraz.set(bI[0], bI[1], { scope: "page" }); bv[bx].q = []; for (; bv.zaraz.q.length;) { const bL = bv.zaraz.q.shift(); bv[bx].q.push(bL) } bD.defer = !0; for (const bM of [localStorage, sessionStorage]) Object.keys(bM || {}).filter((bO => bO.startsWith("_zaraz_"))).forEach((bN => { try { bv[bx]["z_" + bN.slice(7)] = JSON.parse(bM.getItem(bN)) } catch { bv[bx]["z_" + bN.slice(7)] = bM.getItem(bN) } })); bD.referrerPolicy = "origin"; bD.src = "/cdn-cgi/zaraz/s.js?z=" + btoa(encodeURIComponent(JSON.stringify(bv[bx]))); bC.parentNode.insertBefore(bD, bC) };["complete", "interactive"].includes(bw.readyState) ? zaraz.init() : bv.addEventListener("DOMContentLoaded", zaraz.init) }(w, d, "zarazData", "script"); })(window, document);
    </script>
<style>
#likeOrUnlikeBtn{
border: none;
}

.fa {
	font-size: 50px;
	cursor: pointer;
	user-select: none;
}

.fa:hover {
	color: darkblue;
}
</style>
</head>

<body>

<!--  -->
	
	<!-- phan header -->
	<header class="header-area">

		<div class="main-header-area sticky">
			<div class="classy-nav-container breakpoint-off">
				<div class="container">

					<nav class="classy-navbar justify-content-between" id="alimeNav">

						<a style="display: flex; align-items: center;" class="nav-brand"
							href="#"> <span style="color: #fff; margin-right: 7px;">Youtube</span>
							<img
							src="<c:url value='/templates/user/img/core-img/youtube.png'/>"
							alt="">

						</a>

						<div class="classy-navbar-toggler">
							<span class="navbarToggler"><span></span><span></span><span></span></span>
						</div>

						<div class="classy-menu">

							<div class="classycloseIcon">
								<div class="cross-wrap">
									<span class="top"></span><span class="bottom"></span>
								</div>
							</div>

							<div class="classynav">
								<ul id="nav">
									<li><a href="view/user/index">Trang chủ</a></li>
									<li><a href="view/user/gioiThieu.jsp">Giới thiệu</a></li>
									<li><a href="view/user/VideoDaXem">Video đã xem</a></li>
									<li><a href="view/user/VideoDaThich">Video đã thích</a></li>
									<li class="cn-dropdown-item has-down"><a href="#"> <%@ taglib
												uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
													<li><a href="CapNhatThongTin.jsp">Thông tin cá
															nhân</a></li>
													<li><a href="DoiMatKhau">Đổi mật khẩu</a></li>
													<li><a href="DangXuat">Đăng xuất</a></li>
												</c:otherwise>
											</c:choose>
										</ul> <span class="dd-trigger"></span></li>

								</ul>

								<div class="search-icon" data-toggle="modal"
									data-target="#searchModal">
									<i class="ti-search"></i>
								</div>
							</div>

						</div>
					</nav>
				</div>
			</div>
		</div>
	</header>

	<!-- Hiện thị danh sách lựa chọn -->
	<div class="alime-portfolio-area section-padding-80 clearfix">
		<div class="container-fluid">
			<!--Phần video hien thi -->

			<div class="row">
				<article class="col-sm-8" style="padding-right: 0; padding: 0;">
					<div class="container">

						<div class="row" style="margin: 0 10px !important;">
							<div class="card" style="border: none;">
								<iframe width="843px" height="600px"
									src="https://www.youtube.com/embed/${videos.href}"
									title="YouTube video player" frameborder="0"
									allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
									allowfullscreen></iframe>
								<div class="card-body">
									<span class="card-title"> ${videos.title} </span>
									<p class="card-text">
									<div class="row col-sm-12">
										<div class="col-sm-8">
											<div class="row">
												<div class="col-sm-6">
													<div class="row">
														<div class="col-sm-3">
															<img style="border-radius: 50%; width: 100%;"
																src="<c:url value='/templates/user/img/bg-img/11.jpg'/>"
																alt="">
														</div>
														<div class="col-sm-9">
															<span> Đăng kí kênh huỳnh bảo khang </span> <br> <span>
																97.3K subscribers </span>

														</div>
													</div>

												</div>

												<div class="col-sm-2">
													<div class="row">
														<a href="#" class="btn btn-login btn-2">Đăng kí</a>
													</div>

												</div>
											</div>

										</div>

										<div class="col-sm-4">
											<div class="row">
												<div class="col-sm-6">

													<div class="row">
														<input type="hidden" id="videoIdhdn"
															value="${videos.href}">
														<!-- <button style="border: none; background: transparent;" id="likeOrUnlikeBtn"> -->
														<c:choose>
															<c:when test="${flagLike == true}">
																<!-- Unlike -->
																<button onclick="myFunction1()" id="likeOrUnlikeBtn"
																	style="background: navy; border: none;"
																	class="col-sm-6 btn-unlight text_alige">
																	<img class="img_like"
																		src="<c:url value='/templates/user/img/core-img/likeRed.png'/>"
																		alt="">
																</button>

															</c:when>

															<c:otherwise>
																<!-- like -->
																<button  onclick="myFunction1()" id="likeOrUnlikeBtn"
																	class="col-sm-6 btn-unlight text_alige">
																	<img class="img_like"
																		src="<c:url value='/templates/user/img/core-img/likeRed.png'/>"
																		alt="">
																</button>

															</c:otherwise>
														</c:choose>

														<!-- 	</button> -->

														<div class="col-sm-6 btn-unlight text_alige">
															<img class="img_like"
																src="<c:url value='/templates/user/img/core-img/UnlikeRed.png'/>"
																alt="">
														</div>
													</div>
												</div>

												<div class="col-sm-6">
													<div class="row btn-share text_alige">
														<i style="color: black;" class="ti-share"></i> <span
															style="margin-left: 8px;">Share</span>
													</div>

												</div>
											</div>
										</div>


									</div>


								</div>
							</div>

						</div>

					</div>
				</article>

				<aside class="col-sm-4">
					<!-- card hiện thị thông tin quảng cáo-->
					<div class="row" style="margin-bottom: 30px;">
						<div class="card">
							<div class="row">
								<div class="col-sm-12" style="position: relative;">
									<img
										src="<c:url value='/templates/user/img/core-img/Icon_quanCao.jpg' />"
										class="card-img-top" alt="..."> <i
										class="ti-info-alt position"></i>
								</div>

							</div>


							<div class="card-body">
								<div class="row" style="display: flexbox; align-items: center;">
									<div class="col-sm-7">
										<img style="padding-left: 10px;" class="img_quangCao"
											width="30px"
											src="<c:url value='/templates/user/img/core-img/Icon_baner.jpg' />"
											alt="">
									</div>

									<div class="col-sm-5">
										<button style="margin-right: 20px;"
											class="btn btn-login btn-2">Xem chi tiết</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- card hienejt -->

					<!--  -->
					<!-- card thong tin  chon -->
					<span class="card" style="border: none; height: 120px;"> <span
						class="row"> <span class="col-sm-5"
							style="padding: 0; margin: 0;"> <a
								href="<c:url value='video?action=watch&id=bu32fiNAhlQ'/>">
									<img class="image_logo_aside"
									src="<c:url value='/templates/user/img/bg-img/11.jpg' />"
									alt="">
							</a>
						</span> <span class="col-sm-7" style="padding: 0; margin: 0;">
								<div class="card-body">
									<h5 class="card-title"> Ảo Ảnh Remix - 三叔说 - 海市蜃楼 (DJPW 抖音版) Tam Thúc</h5>

									<span class="info_youtube"> 古典音乐 - Chinese Traditional
										Music 12M views </span>
								</div>
						</span>
					</span>

					</span> <span class="card" style="border: none; height: 120px;"> <span
						class="row"> <span class="col-sm-5"
							style="padding: 0; margin: 0;"> <img
								class="image_logo_aside"
								src="<c:url value='/templates/user/img/bg-img/13.jpg' />" alt="">
						</span> <span class="col-sm-7" style="padding: 0; margin: 0;">
								<div class="card-body">
									<h5 class="card-title">Đẳng Thập Ma Quân ( 等什么君 ) Remix
										Series - XINLOIDUOCCHUA by Xin Lỗi , Được Chưa ? 2 months ago
										21 minutes 148,653 views</h5>

									<span class="info_youtube"> 古典音乐 - Chinese Traditional
										Music 12M views </span>
								</div>
						</span>
					</span>

					</span> <span class="card" style="border: none; height: 120px;"> <span
						class="row"> <span class="col-sm-5"
							style="padding: 0; margin: 0;"> <img
								class="image_logo_aside"
								src="<c:url value='/templates/user/img/bg-img/12.jpg' />" alt="">
						</span> <span class="col-sm-7" style="padding: 0; margin: 0;">
								<div class="card-body">
									<h5 class="card-title">A Y Mạc (Remix Tiktok V2)阿吉太组合 - 阿衣莫 - (越南鼓版) || Hot</h5>

									<span class="info_youtube"> 古典音乐 - Chinese Traditional
										Music 12M views </span>
								</div>
						</span>
					</span>

					</span> <span class="card" style="border: none; height: 120px;"> <span
						class="row"> <span class="col-sm-5"
							style="padding: 0; margin: 0;"> <img
								class="image_logo_aside"
								src="<c:url value='/templates/user/img/bg-img/11.jpg' />" alt="">
						</span> <span class="col-sm-7" style="padding: 0; margin: 0;">
								<div class="card-body">
									<h5 class="card-title">THỜI GIAN SẼ TRẢ LỜI REMIX x YÊU 5 HOT TIKTOK, RỒI</h5>

									<span class="info_youtube"> 古典音乐 - Chinese Traditional
										Music 12M views </span>
								</div>
						</span>
					</span>

					</span> <span class="card" style="border: none; height: 120px;"> <span
						class="row"> <span class="col-sm-5"
							style="padding: 0; margin: 0;"> <img
								class="image_logo_aside"
								src="<c:url value='/templates/user/img/bg-img/15.jpg' />" alt="">
						</span> <span class="col-sm-7" style="padding: 0; margin: 0;">
								<div class="card-body">
									<h5 class="card-title">Somewhere Only We Know 2022- TVT Remix | Hot TikTok Remix</h5>

									<span class="info_youtube"> 古典音乐 - Chinese Traditional
										Music 12M views </span>
								</div>
						</span>
					</span>

					</span> <span class="card" style="border: none; height: 120px;"> <span
						class="row"> <span class="col-sm-5"
							style="padding: 0; margin: 0;"> <img
								class="image_logo_aside"
								src="<c:url value='/templates/user/img/bg-img/12.jpg' />" alt="">
						</span> <span class="col-sm-7" style="padding: 0; margin: 0;">
								<div class="card-body">
									<h5 class="card-title">Đẳng Thập Ma Quân ( 等什么君 ) Remix
										Series - XINLOIDUOCCHUA by Xin Lỗi , Được Chưa ? 2 months ago
										21 minutes 148,653 views</h5>

									<span class="info_youtube"> 古典音乐 - Chinese Traditional
										Music 12M views </span>
								</div>
						</span>
					</span>

					</span>





				</aside>
			</div>

		</div>
	</div>

	<!-- footer -->

	<%@ include file="/components/footer.jsp"%>
	<!-- link the css -->
	<%@ include file="/components/js_lib.jsp"%>
	<script>

function myFunction1() {
	const element =  document.getElementById("likeOrUnlikeBtn");
	var text = element.getAttribute("style");
	
	if(text == null){		
		element.setAttribute("style", "background: navy");
		img
	}else{
		document.getElementById("likeOrUnlikeBtn").removeAttribute("style");	
	}	
	}
	// sử lí ajax
    	$('#likeOrUnlikeBtn').click(function () {
			var videoId = $('#videoIdhdn').val();
			$.ajax({
				url: 'video?action=like&id='+videoId
			}).then(function(data) {
				// code dữ liệu				
			}).fail(function(error) {
				alert('Vui lòng đăng nhập vào tài khoản');
				
			});
		});
    	
    
    </script>

	<a id="scrollUp" href="#top"
		style="position: fixed; z-index: 2147483647; display: block;"></a>

	<script async=""
		src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
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

	<div id="eJOY__extension_root" class="eJOY__extension_root_class"
		style="all: unset;"></div>
	<iframe id="nr-ext-rsicon"
		style="position: absolute; display: none; width: 50px; height: 50px; z-index: 2147483647; border-style: none; background: transparent;"></iframe>
</body>

</html>