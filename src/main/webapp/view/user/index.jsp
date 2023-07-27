<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>index Music</title>    
    <%@ include file="/components/tagLib.jsp" %>   
    <%@ include file="/components/css_lib.jsp" %>
    <style id="" media="all">
        /* devanagari */
        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 300;
            font-display: swap;
            src: url(/fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLDz8Z11lFc-K.woff2) format('woff2');
            unicode-range: U+0900-097F, U+1CD0-1CF6, U+1CF8-1CF9, U+200C-200D, U+20A8, U+20B9, U+25CC, U+A830-A839, U+A8E0-A8FB;
        }

        /* latin-ext */
        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 300;
            font-display: swap;
            src: url(/fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLDz8Z1JlFc-K.woff2) format('woff2');
            unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
        }

        /* latin */
        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 300;
            font-display: swap;
            src: url(/fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLDz8Z1xlFQ.woff2) format('woff2');
            unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
        }

        /* devanagari */
        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 400;
            font-display: swap;
            src: url(/fonts.gstatic.com/s/poppins/v20/pxiEyp8kv8JHgFVrJJbecmNE.woff2) format('woff2');
            unicode-range: U+0900-097F, U+1CD0-1CF6, U+1CF8-1CF9, U+200C-200D, U+20A8, U+20B9, U+25CC, U+A830-A839, U+A8E0-A8FB;
        }

        /* latin-ext */
        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 400;
            font-display: swap;
            src: url(/fonts.gstatic.com/s/poppins/v20/pxiEyp8kv8JHgFVrJJnecmNE.woff2) format('woff2');
            unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
        }

        /* latin */
        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 400;
            font-display: swap;
            src: url(/fonts.gstatic.com/s/poppins/v20/pxiEyp8kv8JHgFVrJJfecg.woff2) format('woff2');
            unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
        }

        /* devanagari */
        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 500;
            font-display: swap;
            src: url(/fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLGT9Z11lFc-K.woff2) format('woff2');
            unicode-range: U+0900-097F, U+1CD0-1CF6, U+1CF8-1CF9, U+200C-200D, U+20A8, U+20B9, U+25CC, U+A830-A839, U+A8E0-A8FB;
        }

        /* latin-ext */
        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 500;
            font-display: swap;
            src: url(/fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLGT9Z1JlFc-K.woff2) format('woff2');
            unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
        }

        /* latin */
        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 500;
            font-display: swap;
            src: url(/fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLGT9Z1xlFQ.woff2) format('woff2');
            unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
        }

        /* devanagari */
        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 600;
            font-display: swap;
            src: url(/fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLEj6Z11lFc-K.woff2) format('woff2');
            unicode-range: U+0900-097F, U+1CD0-1CF6, U+1CF8-1CF9, U+200C-200D, U+20A8, U+20B9, U+25CC, U+A830-A839, U+A8E0-A8FB;
        }

        /* latin-ext */
        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 600;
            font-display: swap;
            src: url(/fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLEj6Z1JlFc-K.woff2) format('woff2');
            unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
        }

        /* latin */
        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 600;
            font-display: swap;
            src: url(/fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLEj6Z1xlFQ.woff2) format('woff2');
            unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
        }

        /* devanagari */
        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 700;
            font-display: swap;
            src: url(/fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLCz7Z11lFc-K.woff2) format('woff2');
            unicode-range: U+0900-097F, U+1CD0-1CF6, U+1CF8-1CF9, U+200C-200D, U+20A8, U+20B9, U+25CC, U+A830-A839, U+A8E0-A8FB;
        }

        /* latin-ext */
        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 700;
            font-display: swap;
            src: url(/fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLCz7Z1JlFc-K.woff2) format('woff2');
            unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
        }

        /* latin */
        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 700;
            font-display: swap;
            src: url(/fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLCz7Z1xlFQ.woff2) format('woff2');
            unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
        }

        /* devanagari */
        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 800;
            font-display: swap;
            src: url(/fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLDD4Z11lFc-K.woff2) format('woff2');
            unicode-range: U+0900-097F, U+1CD0-1CF6, U+1CF8-1CF9, U+200C-200D, U+20A8, U+20B9, U+25CC, U+A830-A839, U+A8E0-A8FB;
        }

        /* latin-ext */
        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 800;
            font-display: swap;
            src: url(/fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLDD4Z1JlFc-K.woff2) format('woff2');
            unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
        }

        /* latin */
        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 800;
            font-display: swap;
            src: url(/fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLDD4Z1xlFQ.woff2) format('woff2');
            unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
        }

        /* devanagari */
        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 900;
            font-display: swap;
            src: url(/fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLBT5Z11lFc-K.woff2) format('woff2');
            unicode-range: U+0900-097F, U+1CD0-1CF6, U+1CF8-1CF9, U+200C-200D, U+20A8, U+20B9, U+25CC, U+A830-A839, U+A8E0-A8FB;
        }

        /* latin-ext */
        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 900;
            font-display: swap;
            src: url(/fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLBT5Z1JlFc-K.woff2) format('woff2');
            unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
        }

        /* latin */
        @font-face {
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 900;
            font-display: swap;
            src: url(/fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLBT5Z1xlFQ.woff2) format('woff2');
            unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
        }
    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">    
    <!-- link silder -->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/4.5.6/css/ionicons.min.css">    
    <!-- <script
        nonce="c7668769-942f-436c-832c-18195ead62f4">(function (w, d) { !function (di, dj, dk, dl) { di[dk] = di[dk] || {}; di[dk].executed = []; di.zaraz = { deferred: [], listeners: [] }; di.zaraz.q = []; di.zaraz._f = function (dm) { return function () { var dn = Array.prototype.slice.call(arguments); di.zaraz.q.push({ m: dm, a: dn }) } }; for (const dp of ["track", "set", "debug"]) di.zaraz[dp] = di.zaraz._f(dp); di.zaraz.init = () => { var dq = dj.getElementsByTagName(dl)[0], dr = dj.createElement(dl), ds = dj.getElementsByTagName("title")[0]; ds && (di[dk].t = dj.getElementsByTagName("title")[0].text); di[dk].x = Math.random(); di[dk].w = di.screen.width; di[dk].h = di.screen.height; di[dk].j = di.innerHeight; di[dk].e = di.innerWidth; di[dk].l = di.location.href; di[dk].r = dj.referrer; di[dk].k = di.screen.colorDepth; di[dk].n = dj.characterSet; di[dk].o = (new Date).getTimezoneOffset(); if (di.dataLayer) for (const dw of Object.entries(Object.entries(dataLayer).reduce(((dx, dy) => ({ ...dx[1], ...dy[1] }))))) zaraz.set(dw[0], dw[1], { scope: "page" }); di[dk].q = []; for (; di.zaraz.q.length;) { const dz = di.zaraz.q.shift(); di[dk].q.push(dz) } dr.defer = !0; for (const dA of [localStorage, sessionStorage]) Object.keys(dA || {}).filter((dC => dC.startsWith("_zaraz_"))).forEach((dB => { try { di[dk]["z_" + dB.slice(7)] = JSON.parse(dA.getItem(dB)) } catch { di[dk]["z_" + dB.slice(7)] = dA.getItem(dB) } })); dr.referrerPolicy = "origin"; dr.src = "/cdn-cgi/zaraz/s.js?z=" + btoa(encodeURIComponent(JSON.stringify(di[dk]))); dq.parentNode.insertBefore(dr, dq) };["complete", "interactive"].includes(dj.readyState) ? zaraz.init() : di.addEventListener("DOMContentLoaded", zaraz.init) }(w, d, "zarazData", "script"); })(window, document);</script> -->
    <!--  -->    
    
</head>

<body>
	<!-- Phần header -->	
  	<%@ include file="/components/header.jsp" %>
  	<%@ include file="/components/tagLib.jsp" %>
  	
    <!-- Hiện thị danh sách lựa chọn -->
    <div>
        <div class="container-fluid">
            <div class="row">
                <!-- thanh nav -->
                <div class="col-12">

                    <div class="alime-projects-menu">
                        <div class="portfolio-menu text-center">
                            <button class="btn active" data-filter="*">All</button>
                            <button class="btn" data-filter=".human">Human</button>
                            <button class="btn" data-filter=".nature">Nature</button>
                            <button class="btn" data-filter=".country">Country</button>
                            <button class="btn" data-filter=".video">Video</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- video hien thi -->
            <div class="wrapper d-flex align-items-stretch">
                <nav id="sidebar" style="margin-left: -15px;">
                    <div class="custom-menu">
                        <button type="button" id="sidebarCollapse" class="btn btn-primary">
                        </button>
                    </div>
                    <div class="img bg-wrap text-center py-4" style="background-image: url('<c:url value="/templates/user/img/bg-img/2.jpg"/>');">
                        <div class="user-logo">
                            <div class="img" style="background-image: url('<c:url value="/templates/user/img/bg-img/6.jpg"/>');"></div>
                            <c:choose>
                            <c:when test="${ empty sessionScope.userNow}">
                            <h3>YouTube Music</h3>	
                            </c:when>
                            <c:otherwise>
                            ${sessionScope.userNow.getUserName()}
                            </c:otherwise>
                            </c:choose>
                            
                        </div>
                    </div>
                    <!-- menu bar -->
                    <ul class="list-unstyled components mb-5">
                        <li class="active">
                            <a href="index"><span class="fa fa-home mr-3"></span> Trang chủ</a>
                        </li>
                        <li>
                            <a href="gioiThieu.jsp"><span class="fa fa-download mr-3 notif"><small
                                        class="d-flex align-items-center justify-content-center">5</small></span>
                                Giới thiệu</a>
                        </li>
                        <li>
                            <a href="VideoDaXem"><span class="fa fa-gift mr-3"></span> Video đã xem</a>
                        </li>
                        <li>
                            <a href="VideoDaThich"><span class="fa fa-trophy mr-3"></span> Video đã thích</a>
                        </li>
                        <li>
                            <a href="#"><span class="fa fa-cog mr-3"></span> Cài đặt</a>
                        </li>
                        <li>
                            <a href="#"><span class="fa fa-support mr-3"></span> Hổ trợ</a>
                        </li>
                        <li>
                            <a href="DangXuat"><span class="fa fa-sign-out mr-3"></span> Đăng xuất</a>
                        </li>
                    </ul>
                </nav>
                <!-- Hiện thị video bên phải (sider) -->
                <div id="content" class="p-4 p-md-5 pt-5" style=" overflow: hidden;">
                    <!--video hiện thị  -->                   
                    <div class="row alime-portfolio" style="position: relative;">
 					<c:forEach var="item" items="${videos}">
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
                    <!--  -->
                    <!-- sider đầu trang web -->
                    <section class="ftco-section" style="padding-top: 0px;">
                        <div class="container">                           
                            <!-- Modal -->
                            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
                                aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered" role="document">
                                 
                                    <div class="modal-content">                                                                                      
                                            <iframe width="900px" height="500px"
                                                src="https://www.youtube.com/embed/mu7_SIYXr7c"
                                                title="YouTube video player" frameborder="0"
                                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                                allowfullscreen></iframe>                                                                                       
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                                        
                                <div class="col-sm-12" style="overflow: hidden;">
                                    <div id="clickValueHref" class="featured-carousel owl-carousel">
                                    
                                    <c:forEach var ="itemvideomodal" items="${videos}">
                                        <div  class="item" data-toggle="modal" data-target="#exampleModalCenter">
                                            <div class="work">
                                                <div class="img d-flex align-items-end justify-content-center"
                                                                                               
                                                    style="background-image: url('${itemvideomodal.poster}');">
                                                    <div class="text w-100">
                                                        <span style="background: transparent; color: #fff; margin-bottom: -90px;padding: 0;margin: 0" class="cat">${itemvideomodal.title}</span>
                                                        <!-- input để lưu giá trị khi click xem video -->                                                        
                                                   <%--   <input id="valueHref" type="hidden" value="${itemvideomodal.href}"> --%>                                                                                                            
                                                    </div>
                                                </div>
                                            </div>
                                        </div>                                    
                                    
                                    </c:forEach>
                                     
                                         
		
                                    <!--  -->
                                </div>
                            </div>
                        </div>
                    </section>


                </div>
            </div>
        </div>
    </div>    
    <!-- footer -->
    	<%@ include file="/components/css_lib.jsp" %>
		<%@ include file="/components/footer.jsp" %>
		
	<!-- link the js -->		
   		<%@ include file="/components/js_lib.jsp" %>    	
	</script>
<script src="//cdnjs.cloudflare.com/ajax/libs/wow/0.1.12/wow.min.js"></script>
	<script>
		new WOW().init();
	</script>	
	<a id="scrollUp" href="#top"
		style="position: fixed; z-index: 2147483647; display: block;"></a>

	<script
		src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	
</body>

</html>