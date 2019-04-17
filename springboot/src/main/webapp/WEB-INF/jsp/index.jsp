<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8">
   <!--  <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> -->
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>The News Paper - News &amp; Lifestyle Magazine Template</title>

    <!-- Favicon -->
    <link rel="icon" href="static/img/favicon.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="static/style.css">
</head>
<body>

	<!-- ##### Header Area Start ##### -->
    <header class="header-area">
	
        <!-- Top Header Area -->
        <div class="top-header-area" style="background-color: #009cd7">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="top-header-content d-flex align-items-center justify-content-between" style="background-color: #009cd7">
                            <!-- Logo -->
                            <div class="logo">
                                <a href="home"><img src="static/img/logo.png" alt=""></a>
                            </div>

                            <!-- Login Search Area -->
                            <div class="login-search-area d-flex align-items-center">
                                
                                <!-- Search Form -->
                                <div class="search-form">
                                    <form action="#" method="post">
                                        <input type="search" name="search" class="form-control" placeholder="Tìm">
                                        <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                                    </form>
                                </div>
                                <!-- Login -->
                                <div class="login d-flex" style="margin-left: 20px">
                                    <a href="#">Đăng nhập</a></button>
                                    <a href="#">Đăng ký</a></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Navbar Area -->
        <div class="newspaper-main-menu" id="stickyMenu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="newspaperNav">

                        <!-- Logo -->
                        <div class="logo">
                            <a href="index.html"><img src="img/core-img/logo.png" alt=""></a>
                        </div>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- close btn -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                            
                                <ul>
                                	<c:forEach var="task" items="${tasks}">
                                    	<li><a href="category?idchude=${task.id}">${task.ten}</a></li>
                                    </c:forEach>
                                </ul>
                           
                            </div>
                            <!-- Nav End -->
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ##### Header Area End ##### -->

    <!-- ##### Hero Area Start ##### -->
  <!--   <div class="hero-area" style="height: 40px">
     
      </div> -->
      <div style="height: 40px">
          
      </div>

    </div>
    <!-- ##### Hero Area End ##### -->

    <!-- ##### Featured Post Area Start ##### -->
    <div class="featured-post-area">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-8">
                    <div class="row">

                        <!-- Single Featured Post -->
                        <div class="col-12 col-lg-7">
                            <div class="single-blog-post featured-post">
                                <div class="post-thumb">
                                    <a href="detail?idbaiviet=${cpost.id}"><img src="${cpost.hinhanh}" alt=""></a>
                                </div>
                                <div class="post-data">
                                   
                                    <a href="detail?idbaiviet=${cpost.id}" class="post-title">
                                        <h6>${cpost.tuade}</h6>
                                    </a>
                                    <div class="post-meta">
                                        <p class="post-excerp">${cpost.tieude}</p>
                                        <!-- Post Like & Post Comment -->
                                        <div class="d-flex align-items-center">
                                            <a href="#" class="post-like"><img src="static/img/like.png" alt=""> <span>392</span></a>
                                            <a href="#" class="post-comment"><img src="static/img/chat.png" alt=""> <span>10</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-12 col-lg-5">
                            <!-- Single Featured Post -->
                            <div class="single-blog-post featured-post-2">
                                <div class="post-thumb">
                                    <a href="detail?idbaiviet=${post1.id}"><img src="${post1.hinhanh }" alt=""></a>
                                </div>
                                <div class="post-data">
                                    <div class="post-meta">
                                        <a href="detail?idbaiviet=${post1.id}" class="post-title">
                                            <h6>${post1.tuade}</h6>
                                        </a>
                                        <!-- Post Like & Post Comment -->
                                        <div class="d-flex align-items-center">
                                            <a href="#" class="post-like"><img src="static/img/like.png" alt=""> <span>392</span></a>
                                            <a href="#" class="post-comment"><img src="static/img/chat.png" alt=""> <span>10</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Single Featured Post -->
                            <div class="single-blog-post featured-post-2">
                                <div class="post-thumb">
                                    <a href="detail?idbaiviet=${post2.id}"><img src="${post2.hinhanh }" alt=""></a>
                                </div>
                                <div class="post-data">
                                    
                                    <div class="post-meta">
                                        <a href="${post2.id}" class="post-title">
                                            <h6>${post2.tuade}</h6>
                                        </a>
                                        <!-- Post Like & Post Comment -->
                                        <div class="d-flex align-items-center">
                                            <a href="#" class="post-like"><img src="static/img/like.png" alt=""> <span>392</span></a>
                                            <a href="#" class="post-comment"><img src="static/img/chat.png" alt=""> <span>10</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-md-6 col-lg-4">
                    <!-- Single Featured Post -->
                    <c:forEach var="r" items="${rpost}">
                    <div class="single-blog-post small-featured-post d-flex">
                        <div class="post-thumb">
                            <a href="detail?idbaiviet=${r.id}"><img src="${r.hinhanh}" alt=""></a>
                        </div>
                        <div class="post-data">
                            <div class="post-meta">
                                <a href="detail?idbaiviet=${r.id}" class="post-title">
                                    <h6>${r.tuade }</h6>
                                </a>
                                <p class="post-date"><span>${r.ngayviet}</span></p>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Featured Post Area End ##### -->

    <!-- ##### Popular News Area Start ##### -->
    <div class="popular-news-area section-padding-80-50">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-8">
                    <div class="section-heading">
                        <h6>Nhiều người xem</h6>
                    </div>

                    <div class="row">
					<c:forEach var="u" items="${upost}">
                        <!-- Single Post -->
                        <div class="col-12 col-md-6">
                            <div class="single-blog-post style-3">
                                <div class="post-thumb">
                                    <a href="detail?idbaiviet=${u.id }"><img src="${u.hinhanh}" alt="" style="height:300px; width:350px"></a>
                                </div>
                                <div class="post-data">
                                    <a href="detail?idbaiviet=${u.id }" class="post-title">
                                        <h6>${u.tuade}</h6>
                                    </a>
                                    <div class="post-meta d-flex align-items-center">
                                        <a href="#" class="post-like"><img src="static/img/like.png" alt=""> <span>392</span></a>
                                        <a href="#" class="post-comment"><img src="static/img/chat.png" alt=""> <span>10</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                     </c:forEach>
                    </div>
                </div>

                <div class="col-12 col-lg-4">
                    <div class="section-heading">
                        <h6>Thế giới</h6>
                    </div>
                    <!-- Popular News Widget -->
                    <div class="popular-news-widget mb-30">
                        <h3>4 Tin Phổ Biến Nhất</h3>

                        <!-- Single Popular Blog -->
                       <c:forEach var="m" items="${mpost}">

							<div class="single-blog-post style-2">
								<div class="post-thumb">
									<a href="detail?idbaiviet=${m.id }"><img src="${m.hinhanh }" alt="" style="height:100px; width:255px"></a>
								</div>
								<div class="post-data">
									<a href="detail?idbaiviet=${m.id }" class="post-title">
										<h6>${m.tuade }</h6>
									</a>
									<div class="post-meta">
										<div class="post-date">
											<a href="#">${m.ngayviet }</a>
										</div>
									</div>
								</div>
							</div>

						</c:forEach>
                    </div>

                    <!-- Newsletter Widget -->
                    
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Popular News Area End ##### -->

    <!-- ##### Video Post Area Start ##### -->
    

    <!-- ##### Editorial Post Area Start ##### -->
    

    <!-- ##### Footer Add Area Start ##### -->
       <!-- ##### Footer Add Area End ##### -->

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">

        <!-- Main Footer Area -->
        <div class="main-footer-area">
            <div class="container">
                <div class="row">

                    <!-- Footer Widget Area -->
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="footer-widget-area mt-80">
                            <!-- Footer Logo -->
                            <div class="footer-logo">
                                <a href="home"><img src="static/img/logo.png" alt=""></a>
                            </div>
                            <!-- List -->
                            <ul class="list">
                                <li><a href="mailto:contact@youremail.com">contact@email.com</a></li>
                                <li><a href="tel:+4352782883884">0984737827</a></li>
                                <li><a href="http://yoursitename.com">www.fastnews.com</a></li>
                            </ul>
                        </div>
                    </div>

                    <!-- Footer Widget Area -->
                    <div class="col-12 col-sm-6 col-lg-2">
                        <div class="footer-widget-area mt-80">
                            <!-- Title -->
                            <h4 class="widget-title">Politics</h4>
                            <!-- List -->
                        </div>
                    </div>

                    <!-- Footer Widget Area -->
                    <div class="col-12 col-sm-4 col-lg-2">
                        <div class="footer-widget-area mt-80">
                            <!-- Title -->
                            <h4 class="widget-title">Featured</h4>
                            <!-- List -->
                        </div>
                    </div>

                    <!-- Footer Widget Area -->
                    <div class="col-12 col-sm-4 col-lg-2">
                        <div class="footer-widget-area mt-80">
                            <!-- Title -->
                            <h4 class="widget-title">FAQ</h4>
                            <!-- List -->
                        </div>
                    </div>

                    <!-- Footer Widget Area -->
                    <div class="col-12 col-sm-4 col-lg-2">
                        <div class="footer-widget-area mt-80">
                            <!-- Title -->
                            <h4 class="widget-title">+More</h4>
                            <!-- List -->
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bottom Footer Area -->
        <div class="bottom-footer-area">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-12">
                        <!-- Copywrite -->
                        <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- ##### Footer Area Start ##### -->

    <!-- ##### All Javascript Files ##### -->
  <!-- jQuery-2.2.4 js -->
    <script src="static/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="static/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="static/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="static/js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="static/js/active.js"></script>
</body>
</html>

