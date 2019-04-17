<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>The News Paper - News &amp; Lifestyle Magazine Template</title>

    <!-- Favicon -->
    <link rel="icon" href="static/img/favicon.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="static/style.css">
</head>
<body>
	<header class="header-area">

        <!-- Top Header Area -->
        <div class="top-header-area"  style="background-color: #009cd7">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="top-header-content d-flex align-items-center justify-content-between"  style="background-color: #009cd7">
                            <!-- Logo -->
                            <div class="logo">
                                <a href="home"><img src="static/img/logo.png" alt=""></a>
                            </div>

                            <!-- Login Search Area -->
                            <div class="login-search-area d-flex align-items-center">
                                <!-- Search Form -->
                                <div class="search-form">
                                    <form action="#" method="post">
                                        <input type="search" name="search" class="form-control" placeholder="Tìm...">
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

    <div style="height: 40px">
          
    </div>

    <!-- ##### Blog Area Start ##### -->
    <div class="blog-area section-padding-0-80">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-8">
                    <div class="blog-posts-area">

                        <!-- Single Featured Post -->
                        <c:forEach var="c" items="${catepost}">
                        
                        <div class="single-blog-post featured-post mb-30">
                            <div class="post-thumb">
                                <a href="detail?idbaiviet=${c.id}"><img src="${c.hinhanh }" alt="" style="height:353px; width:730px"></a>
                            </div>
                            <div class="post-data">
                                <a href="detail?idbaiviet=${c.id}" class="post-title">
                                    <h6>${c.tuade}</h6>
                                </a>
                                <div class="post-meta">
                                    <p class="post-author">${c.ngayviet}</p>
                                    <p class="post-excerp">${c.tieude}</p>
                                    <!-- Post Like & Post Comment -->
                                    <div class="d-flex align-items-center">
                                        <a href="#" class="post-like"><img src="static/img/like.png" alt=""> <span>392</span></a>
                                        <a href="#" class="post-comment"><img src="static/img/chat.png" alt=""> <span>10</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </c:forEach>

                    </div>

                    <nav aria-label="Page navigation example">
                        <ul class="pagination mt-50">
                            <li class="page-item active"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">4</a></li>
                            <li class="page-item"><a class="page-link" href="#">5</a></li>
                            <li class="page-item"><a class="page-link" href="#">...</a></li>
                            <li class="page-item"><a class="page-link" href="#">10</a></li>
                        </ul>
                    </nav>
                </div>

                <div class="col-12 col-lg-4">
                    <div class="blog-sidebar-area">

                        <!-- Latest Posts Widget -->
                        <div class="latest-posts-widget mb-50">

                            <!-- Single Featured Post -->
							<c:forEach var="r" items="${rpost}">
								<div class="single-blog-post small-featured-post d-flex">
									<div class="post-thumb">
										<a href="detail?idbaiviet=${r.id}"><img src="${r.hinhanh}"
											alt=""></a>
									</div>
									<div class="post-data">
										<div class="post-meta">
											<a href="detail?idbaiviet=${r.id}" class="post-title">
												<h6>${r.tuade }</h6>
											</a>
											<p class="post-date">
												<span>${r.ngayviet}</span>
											</p>
										</div>
									</div>
								</div>
							</c:forEach>

						</div>

                        <!-- Popular News Widget -->
                        <div class="popular-news-widget mb-50">
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
                      
                        <!-- Latest Comments Widget -->
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Blog Area End ##### -->

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
                                <a href="index.html"><img src="static/img/logo.png" alt=""></a>
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