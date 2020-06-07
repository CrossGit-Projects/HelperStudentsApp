<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

 <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="icon" href="/resources/images/favicon.png" type="image/png">
        <title>Learn IT Education</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="/resources/cssindex/bootstrap.css">
        <link rel="stylesheet" href="/resources/vendors/linericon/style.css">
        <link rel="stylesheet" href="/resources/cssindex/font-awesome.min.css">
        <link rel="stylesheet" href="/resources/vendors/owl-carousel/owl.carousel.min.css">
        <link rel="stylesheet" href="/resources/vendors/lightbox/simpleLightbox.css">
        <link rel="stylesheet" href="/resources/vendors/nice-select/css/nice-select.css">
        <link rel="stylesheet" href="/resources/vendors/animate-css/animate.css">
        <link rel="stylesheet" href="/resources/vendors/popup/magnific-popup.css">
        <!-- main css -->
        <link rel="stylesheet" href="/resources/cssindex/style.css">
        <link rel="stylesheet" href="/resources/cssindex/responsive.css">

</head>


<body>
<%@include file="/WEB-INF/incl/menu.app"%>

           <!--================Header Menu Area =================-->

                   <!--================Header Menu Area =================-->

                   <!--================Home Banner Area =================-->
                   <section class="home_banner_area">
                       <div class="banner_inner d-flex align-items-center">
                       	<div class="overlay bg-parallax" data-stellar-ratio="0.9" data-stellar-vertical-offset="0" data-background=""></div>
           				<div class="container">
           					<div class="banner_content text-center">
           						<h3>We Ensure better education <br />for a better world</h3>
           						<p>Aplikacja stworzona dla środowisk akademickich Politechniki łodzkiej w celu wsparcia naukowego studentów jak i pracowników naukowych, zaciśnienia więzów na uczelni, łatwiejszej komunikacji i przepływu informacji.</p>
           						<a class="main_btn" href="/register">Zarejestruj się!</a>
           						<a class="main_btn" href="/login">Zaloguj się!</a>
           					</div>
           				</div>
                       </div>
                   </section>
                   <!--================End Home Banner Area =================-->

                   <!--================Finance Area =================-->
                   <section class="finance_area">
                   	<div class="container">
                   		<div class="finance_inner row">
                   			<div class="col-lg-3 col-sm-6">
                   				<div class="finance_item">
                   					<div class="media">
                   						<div class="d-flex">
                   							<i class="lnr lnr-rocket"></i>
                   						</div>
                   						<div class="media-body">
                   							<h5>Aktualności & <br />Students</h5>
                   						</div>
                   					</div>
                   				</div>
                   			</div>
                   			<div class="col-lg-3 col-sm-6">
                   				<div class="finance_item">
                   					<div class="media">
                   						<div class="d-flex">
                   							<i class="lnr lnr-earth"></i>
                   						</div>
                   						<div class="media-body">
                   							<h5>Consultations & <br />Profesor</h5>
                   						</div>
                   					</div>
                   				</div>
                   			</div>
                   			<div class="col-lg-3 col-sm-6">
                   				<div class="finance_item">
                   					<div class="media">
                   						<div class="d-flex">
                   							<i class="lnr lnr-smile"></i>
                   						</div>
                   						<div class="media-body">
                   							<h5>Management & <br />Admin</h5>
                   						</div>
                   					</div>
                   				</div>
                   			</div>
                   			<div class="col-lg-3 col-sm-6">
                   				<div class="finance_item">
                   					<div class="media">
                   						<div class="d-flex">
                   							<i class="lnr lnr-tag"></i>
                   						</div>
                   						<div class="media-body">
                   							<h5>Spotted & <br />Everyone</h5>
                   						</div>
                   					</div>
                   				</div>
                   			</div>
                   		</div>
                   	</div>
                   </section>
                   <!--================End Finance Area =================-->


                   <!--================Testimonials Area =================-->

                   	<div class="container">
                   		<div class="testi_slider owl-carousel">
                   			<div class="item">
                   				<div class="testi_item">
           							<img src="/resources/images/user1.png" alt="">
                  						<h4>O Aplikacji</h4>
                  						<ul class="list">
                  							<li><a href="#"><i class="fa fa-star"></i></a></li>
                  							<li><a href="#"><i class="fa fa-star"></i></a></li>
                  							<li><a href="#"><i class="fa fa-star"></i></a></li>
                  							<li><a href="#"><i class="fa fa-star"></i></a></li>
                  							<li><a href="#"><i class="fa fa-star"></i></a></li>
                  						</ul>
                  						<p>Możliwość dostępu do aplikacji z dwóch poziomów logowania użytkownika jako student i jako pracownik akademicki. Moduł profesor umożliwia dodawanie aktualności, zarządzanie swoim kontem, konsultacjami jak i korzystanie ze Spotted.</p>
                   				</div>
                   			</div>
                   			<div class="item">
                   				<div class="testi_item">
           							<img src="/resources/images/user2.png" alt="">
                  						<h4>O Aplikacji</h4>
                  						<ul class="list">
                  							<li><a href="#"><i class="fa fa-star"></i></a></li>
                  							<li><a href="#"><i class="fa fa-star"></i></a></li>
                  							<li><a href="#"><i class="fa fa-star"></i></a></li>
                  							<li><a href="#"><i class="fa fa-star"></i></a></li>
                  							<li><a href="#"><i class="fa fa-star"></i></a></li>
                  						</ul>
                  						<p>Z poziomu Modułu student mamy do dyspozycji cały moduł zapisu i przetwarzania konsultacji studenckich, możemy zarządzać swoim kontem osobistym, korzystać ze spotted, podglądać aktualności i sporządzać swoje notatki.</p>
                   				</div>
                   			</div>
                   			<div class="item">
                   				<div class="testi_item">
           							<img src="/resources/images/testi-1.png" alt="">
                  						<h4>O Aplikacji</h4>
                  						<ul class="list">
                  							<li><a href="#"><i class="fa fa-star"></i></a></li>
                  							<li><a href="#"><i class="fa fa-star"></i></a></li>
                  							<li><a href="#"><i class="fa fa-star"></i></a></li>
                  							<li><a href="#"><i class="fa fa-star"></i></a></li>
                  							<li><a href="#"><i class="fa fa-star"></i></a></li>
                  						</ul>
                  						<p>Ostatnim modułem, który jest dostęspny tylko dla administatcji danego wydziału uczelni jest moduł Admin. Ma on wszelkie prawa modyfikowania, usuwania, dodawania i zarządzania informacjami niezbędnymi dla studentów uczelni.</p>
                   				</div>
                   			</div>
                   		</div>
                   	</div>

                   <!--================End Testimonials Area =================-->

                   <!--================ start footer Area  =================-->
                   <footer class="footer-area p_120">
                       <div class="container">
                           <div class="row">
                               <div class="col-lg-2  col-md-6 col-sm-6">
                                   <div class="single-footer-widget tp_widgets">
                                      <h6 class="footer_title">Administration</h6>
                                       <ul class="list">
                                       	<li><a href="#">Zarządzanie </a></li>
                                       	<li><a href="#">Administracja</a></li>
                                       	<li><a href="#">Modyfikacja</a></li>
                                       	<li><a href="#">Serwis</a></li>
                                       </ul>
                                   </div>
                               </div>
                               <div class="col-lg-2  col-md-6 col-sm-6">
                                   <div class="single-footer-widget tp_widgets">
                                      <h6 class="footer_title">Profesor</h6>
                                       <ul class="list">
                                       	<li><a href="#">Aktualności</a></li>
                                       	<li><a href="#">Konsultacje</a></li>
                                       	<li><a href="#">Mój profil</a></li>
                                       	<li><a href="#">Dodaj news</a></li>
                                       </ul>
                                   </div>
                               </div>
                               <div class="col-lg-2  col-md-6 col-sm-6">
                                   <div class="single-footer-widget tp_widgets">
                                      <h6 class="footer_title">Student</h6>
                                       <ul class="list">
                                       	<li><a href="#">Konsultacje</a></li>
                                       	<li><a href="#">Koje konto</a></li>
                                       	<li><a href="#">Aktualności</a></li>
                                       	<li><a href="#">Zapisy</a></li>
                                       </ul>
                                   </div>
                               </div>
                               <div class="col-lg-2  col-md-6 col-sm-6">
                                   <div class="single-footer-widget tp_widgets">
                                      <h6 class="footer_title">Everybody</h6>
                                       <ul class="list">
                                       	<li><a href="#">Spotted</a></li>
                                       	<li><a href="#">Notatnik</a></li>
                                       	<li><a href="#">Konto</a></li>
                                       </ul>
                                   </div>
                               </div>

                           </div>
                           <div class="row footer-bottom d-flex justify-content-between align-items-center">
                               <p class="col-lg-8 col-md-8 footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
           Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This website is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Carol.Kawecki</a>
           <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                               <div class="col-lg-4 col-md-4 footer-social">
                                   <a href="#"><i class="fa fa-facebook"></i></a>
                                   <a href="#"><i class="fa fa-twitter"></i></a>
                                   <a href="#"><i class="fa fa-dribbble"></i></a>
                                   <a href="#"><i class="fa fa-behance"></i></a>
                               </div>
                           </div>
                       </div>
                   </footer>
           		<!--================ End footer Area  =================-->






        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="/resources/js/jquery-3.3.1.min.js"></script>
        <script src="/resources/js/popper.js"></script>
        <script src="/resources/js/bootstrap.min.js"></script>
        <script src="/resources/js/stellar.js"></script>
        <script src="/resources/vendors/lightbox/simpleLightbox.min.js"></script>
        <script src="/resources/vendors/nice-select/js/jquery.nice-select.min.js"></script>
        <script src="/resources/vendors/isotope/imagesloaded.pkgd.min.js"></script>
        <script src="/resources/vendors/isotope/isotope.pkgd.min.js"></script>
        <script src="/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
        <script src="/resources/vendors/popup/jquery.magnific-popup.min.js"></script>
        <script src="/resources/js/jquery.ajaxchimp.min.js"></script>
        <script src="/resources/vendors/counter-up/jquery.waypoints.min.js"></script>
        <script src="/resources/vendors/counter-up/jquery.counterup.js"></script>
        <script src="/resources/js/mail-script.js"></script>
        <script src="/resources/js/theme.js"></script>

</body>
</html>