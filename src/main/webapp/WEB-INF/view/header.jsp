<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!--[if IE 8]>			<html class="ie ie8"> <![endif]-->
<!--[if IE 9]>			<html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->	<html> <!--<![endif]-->
	<head>
		<meta charset="utf-8" />
		<title>Car Service</title>
		<meta name="keywords" content="HTML5,CSS3,Template" />
		<meta name="Car Service" content="" />
		<meta name="Shashank" content="Dorin Grigoras [www.stepofweb.com]" />

		<!-- mobile settings -->
		<meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />
		<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->

		<!-- WEB FONTS : use %7C instead of | (pipe) -->
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400%7CRaleway:300,400,500,600,700%7CLato:300,400,400italic,600,700" rel="stylesheet" type="text/css" />

		<!-- CORE CSS -->
		<link href="static/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />

		<!-- SWIPER SLIDER -->
		<link href="static/plugins/slider.swiper/dist/css/swiper.min.css" rel="stylesheet" type="text/css" />

		<!-- THEME CSS -->
		<link href="static/css/essentials.css" rel="stylesheet" type="text/css" />
		<link href="static/css/layout.css" rel="stylesheet" type="text/css" />

		<!-- PAGE LEVEL SCRIPTS -->
		<link href="static/css/header-1.css" rel="stylesheet" type="text/css" />
		<link href="static/css/color_scheme/green.css" rel="stylesheet" type="text/css" id="color_scheme" />
		
		<link href="static/css/layout-shop.css" rel="stylesheet" type="text/css">
	</head>

	<!--
		AVAILABLE BODY CLASSES:
		
		smoothscroll 			= create a browser smooth scroll
		enable-animation		= enable WOW animations

		bg-grey					= grey background
		grain-grey				= grey grain background
		grain-blue				= blue grain background
		grain-green				= green grain background
		grain-blue				= blue grain background
		grain-orange			= orange grain background
		grain-yellow			= yellow grain background
		
		boxed 					= boxed layout
		pattern1 ... patern11	= pattern background
		menu-vertical-hide		= hidden, open on click
		
		BACKGROUND IMAGE [together with .boxed class]
		data-background="/static/images/boxed_background/1.jpg"
	-->
	<body class="smoothscroll enable-animation">

		<!-- SLIDE TOP -->
		<div id="slidetop">

			<div class="container">
				
				<div class="row">

					<div class="col-md-4">
						<h6><i class="icon-heart"></i> WHY Car Service?</h6>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas metus nulla, commodo a sodales sed, dignissim pretium nunc. Nam et lacus neque. Ut enim massa, sodales tempor convallis et, iaculis ac massa. </p>
					</div>

					<div class="col-md-4">
						<h6><i class="icon-attachment"></i> RECENTLY VISITED</h6>
						<ul class="list-unstyled">
							<li><a href="#"><i class="fa fa-angle-right"></i> Consectetur adipiscing elit amet</a></li>
							<li><a href="#"><i class="fa fa-angle-right"></i> This is a very long text, very very very very very very very very very very very very </a></li>
							<li><a href="#"><i class="fa fa-angle-right"></i> Lorem ipsum dolor sit amet</a></li>
							<li><a href="#"><i class="fa fa-angle-right"></i> Dolor sit amet,consectetur adipiscing elit amet</a></li>
							<li><a href="#"><i class="fa fa-angle-right"></i> Consectetur adipiscing elit amet,consectetur adipiscing elit</a></li>
						</ul>
					</div>

					<div class="col-md-4">
						<h6><i class="icon-envelope"></i> CONTACT INFO</h6>
						<ul class="list-unstyled">
							<li><b>Address:</b> PO Box 21132, Here Weare St, <br /> Melbourne, Vivas 2355 Australia</li>
							<li><b>Phone:</b> +91-9044-530-655</li>
							<li><b>Email:</b> <a href="mailto:bajpaishashank@hotmail.com">bajpaishashank@hotmail.com</a></li>
						</ul>
					</div>

				</div>

			</div>

			<a class="slidetop-toggle" href="#"><!-- toggle button --></a>

		</div>
		<!-- /SLIDE TOP -->


		<!-- wrapper -->
		<div id="wrapper">

			<!-- Top Bar -->
			<div id="topBar">
				<div class="container">

					<!-- right -->
					<ul class="top-links list-inline pull-right">
					
						<li class="text-welcome hidden-xs">Welcome to Car Service, <strong><% session.setAttribute("name",session.getAttribute("name")); if(session.getAttribute("name")!=null){out.print(session.getAttribute("name"));} else {out.print("Please Login");} %></strong></li>
					
						<li>
							<a class="dropdown-toggle no-text-underline" data-toggle="dropdown" href="#"><i class="fa fa-user hidden-xs"></i> MY ACCOUNT</a>
							<ul class="dropdown-menu pull-right">
								<li><a tabindex="-1" href="#"><i class="fa fa-history"></i> ORDER HISTORY</a></li>
								<li class="divider"></li>
								<li><a tabindex="-1" href="#"><i class="fa fa-bookmark"></i> MY WISHLIST</a></li>
								<li><a tabindex="-1" href="#"><i class="fa fa-edit"></i> MY REVIEWS</a></li>
								<li><a tabindex="-1" href="#"><i class="fa fa-cog"></i> MY SETTINGS</a></li>
								<li class="divider"></li>
								<li><a tabindex="-1" href="/logout"><i class="glyphicon glyphicon-off"></i> LOGOUT</a></li>
							</ul>
						</li>
						<li class="hidden-xs"><a data-toggle="modal" data-target="#login">LOGIN</a></li>
						<li class="hidden-xs"><a href="page-register-1.html" data-toggle="modal" data-target="#register">REGISTER</a></li>
					</ul>

					<!-- left -->
					<ul class="top-links list-inline">
						<li class="hidden-xs"><a href="page-faq-1.html">FAQ</a></li>
						<li>
							<a class="dropdown-toggle no-text-underline" data-toggle="dropdown" href="#"><img class="flag-lang" src="/static/images/flags/us.png" width="16" height="11" alt="lang" /> ENGLISH</a>
							<ul class="dropdown-langs dropdown-menu">
								<li><a tabindex="-1" href="#"><img class="flag-lang" src="/static/images/flags/us.png" width="16" height="11" alt="lang" /> ENGLISH</a></li>
								<li class="divider"></li>
								<li><a tabindex="-1" href="#"><img class="flag-lang" src="/static/images/flags/de.png" width="16" height="11" alt="lang" /> GERMAN</a></li>
								<li><a tabindex="-1" href="#"><img class="flag-lang" src="/static/images/flags/ru.png" width="16" height="11" alt="lang" /> RUSSIAN</a></li>
								<li><a tabindex="-1" href="#"><img class="flag-lang" src="/static/images/flags/it.png" width="16" height="11" alt="lang" /> ITALIAN</a></li>
							</ul>
						</li>
						<li>
							<a class="dropdown-toggle no-text-underline" data-toggle="dropdown" href="#">USD</a>
							<ul class="dropdown-langs dropdown-menu">
								<li><a tabindex="-1" href="#">USD</a></li>
								<li class="divider"></li>
								<li><a tabindex="-1" href="#">EUR</a></li>
								<li><a tabindex="-1" href="#">GBP</a></li>
							</ul>
						</li>
						<li>
						
						</li>
					</ul>

				</div>
			</div>
			<!-- /Top Bar -->


			<!-- 
				AVAILABLE HEADER CLASSES

				Default nav height: 96px
				.header-md 		= 70px nav height
				.header-sm 		= 60px nav height

				.noborder 		= remove bottom border (only with transparent use)
				.transparent	= transparent header
				.translucent	= translucent header
				.sticky			= sticky header
				.static			= static header
				.dark			= dark header
				.bottom			= header on bottom
				
				shadow-before-1 = shadow 1 header top
				shadow-after-1 	= shadow 1 header bottom
				shadow-before-2 = shadow 2 header top
				shadow-after-2 	= shadow 2 header bottom
				shadow-before-3 = shadow 3 header top
				shadow-after-3 	= shadow 3 header bottom

				.clearfix		= required for mobile menu, do not remove!

				Example Usage:  class="clearfix sticky header-sm transparent noborder"
			-->
			<div id="header" class="sticky clearfix">

				<!-- SEARCH HEADER -->
				<div class="search-box over-header">
					<a id="closeSearch" href="#" class="glyphicon glyphicon-remove"></a>

					<form action="page-search-result-1.html" method="get">
						<input type="text" class="form-control" placeholder="SEARCH" />
					</form>
				</div> 
				<!-- /SEARCH HEADER -->

				<!-- TOP NAV -->
				<header id="topNav">
					<div class="container">

						<!-- Mobile Menu Button -->
						<button class="btn btn-mobile" data-toggle="collapse" data-target=".nav-main-collapse">
							<i class="fa fa-bars"></i>
						</button>

						<!-- BUTTONS -->
						<ul class="pull-right nav nav-pills nav-second-main">

							

							<!-- QUICK SHOP CART -->
							<li class="quick-cart">
								<a href="#">
									<span class="badge badge-aqua btn-xs badge-corner">0</span>
									<i class="fa fa-shopping-cart"></i> 
								</a>
								<div class="quick-cart-box">
									<h4>Shop Cart</h4>

									

									<!-- quick cart footer -->
									<div class="quick-cart-footer clearfix">
										<a href="#" class="btn btn-primary btn-xs pull-right">VIEW CART</a>
										<span class="pull-left"><strong>TOTAL:</strong> $ 00.00</span>
									</div>
									<!-- /quick cart footer -->

								</div>
							</li>
							<!-- /QUICK SHOP CART -->

						</ul>
						<!-- /BUTTONS -->


						<!-- Logo -->
						<a class="logo pull-left" href="/index">
							<img src="static/images/logo_dark.png" alt="" />
						</a>


						<!-- 
							Top Nav 
							
							AVAILABLE CLASSES:
							submenu-dark = dark sub menu
						-->
						<div class="navbar-collapse pull-right nav-main-collapse collapse">
							<nav class="nav-main">

								<!--
									NOTE
									
									For a regular link, remove "dropdown" class from LI tag and "dropdown-toggle" class from the href.
									Direct Link Example: 

									<li>
										<a href="#">HOME</a>
									</li>
								-->
								<ul id="topMain" class="nav nav-pills nav-main">
									<li class="dropdown"><!-- HOME -->
										<a class="dropdown-toggle" href="#">
											HOME
										</a>
										
										
									</li>
									<li class="dropdown active"><!-- FEATURES -->
										<a class="dropdown-toggle" href="#">
											FEATURES
										</a>
										
											
									</li>
									<li class="dropdown mega-menu"><!-- PORTFOLIO -->
										<a class="dropdown-toggle" href="#">
											PORTFOLIO
										</a>
										
									</li>
									<li class="dropdown"><!-- BLOG -->
										<a class="dropdown-toggle" href="#">
											BLOG
										</a>
										
									</li>
									<li class="dropdown"><!-- SHOP -->
										<a class="dropdown-toggle" href="#">
											SHOP
										</a>
										
									</li>
									<li class="dropdown mega-menu"><!-- SHORTCODES -->
										<a class="dropdown-toggle" href="#">
											ABOUT US
										</a>
																			
									</li>
								</ul>

							</nav>
						</div>

					</div>
				</header>
				<!-- /Top Nav -->
				</div>
				
				
				
				
				
				<!-- Header Modal for login  -->
				
				
								<!-- Large Modal >-->
				
				
					<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" id="login" aria-labelledby="mySmallModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-sm">
						<div class="modal-content">
					<c:choose>
					<c:when test="${failed=='LOGIN_FAILED'}">
					<div class="alert alert-mini alert-danger margin-bottom-30">
								<strong>Oh snap!</strong> Login Incorrect!
					</div>
					</c:when>
					<c:when test="${success=='LOGIN_SUCCESS'}">
					<div class="alert alert-mini alert-success margin-bottom-30">
								<strong>Hello User</strong> You Are Logged In!
					</div>
					</c:when>					
					</c:choose>
					
					
							<!-- header modal -->
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<h4 class="modal-title" id="mySmallModalLabel">Login Here</h4>
							</div>
				
							<!-- body modal -->
							<div class="modal-body">
							
							
				<!-- Form div starts inside modal here -->		
					
								<div class="box-static box-border-top padding-30">
								
								<form class="nomargin" method="POST" action="login-user" autocomplete="off">
									<div class="clearfix">
										
										<!-- Email -->
										<div class="form-group">
											<input type="text" name="email" class="form-control" placeholder="Email" value="${user.email}" required>
										</div>
										
										<!-- Password -->
										<div class="form-group">
											<input type="password" name="password" class="form-control" placeholder="Password" value="${user.password}" required>
										</div>
											
									</div>
									
									<div class="row">
										
										<div class="col-md-6 col-sm-6 col-xs-6">
											
											<!-- Inform Tip -->                                        
											<div class="form-tip pt-20">
												<a class="no-text-decoration size-13 margin-top-10 block" href="#">Forgot Password?</a>
											</div>
											
										</div>
										
										<div class="col-md-6 col-sm-6 col-xs-6 text-right">

											<button type="submit" class="btn btn-primary">LOG IN</button>

										</div>
										
									</div>
									
								</form>

							</div>
							
							<div class="margin-top-30 text-center">
								<a data-toggle="modal" data-target="#register" data-dismiss="modal"><strong>Create Account</strong></a>

							</div>
				<!-- Form tag closes with div box -->			
							
							
							
							
							
							</div>
				
						</div>
					</div>
				</div>


<!-- Header modal login closes here  -->









				
				<!-- Header modal for register  -->
				
				
				<!-- Large Modal >-->
				
				
				<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" id="register" aria-labelledby="myLargeModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-lg" style="width:400px;">
						<div class="modal-content">
				
							<!-- header modal -->
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<br>
							</div>
				
							<!-- body modal -->
							<div class="modal-body">
								
			<!-- Register Form Continues here -->
			
			<ul class="nav nav-tabs nav-top-border">
			<li class="active"><a href="#user" data-toggle="tab">User</a></li>
			<li><a href="#vendor" data-toggle="tab">Vendor</a></li>
		</ul>
		
		<div class="tab-content">
			<div class="tab-pane fade in active" id="user">
		<!-- register form -->
							<form class="nomargin sky-form boxed" autocomplete="off" action="save-user" method="post">
								<header>
									<i class="fa fa-users"></i> Register
								</header>

								<fieldset class="nomargin">					
									<input type="hidden" name="id" value="${user.id}"/>
									<div class="row margin-bottom-10">
										<div class="col-md-6">
											<label class="input">
												<input type="text" name="firstname" value="${user.firstname}" placeholder="First name">
											<b class="tooltip tooltip-bottom-right">First Name</b>
											</label>
										</div>
										<div class="col col-md-6">
											<label class="input">
												<input type="text" name="lastname" value="${user.lastname}" placeholder="Last name">
											<b class="tooltip tooltip-bottom-right">Last Name</b>
											</label>
										</div>
									</div>
									<label class="input margin-bottom-10">
										<i class="ico-append fa fa-phone"></i>
										<input type="tel" name="contact" value="${user.contact}" placeholder="Contact Number">
										<b class="tooltip tooltip-bottom-right">Needed to verify your Contact</b>
									</label>
									
									
									<label class="input margin-bottom-10">
										<i class="ico-append fa fa-envelope"></i>
										<input type="email" name="email" placeholder="Email" placeholder="Email address">
										<b class="tooltip tooltip-bottom-right">Needed to verify your account</b>
									</label>
									
									<label class="input margin-bottom-10">
										<i class="ico-append fa fa-home"></i>
										<input type="textarea" name="address" value="${user.address}" placeholder="Address">
										<b class="tooltip tooltip-bottom-right">Enter Your Full Address</b>
									</label>
								
								
									<label class="input margin-bottom-10">
										<i class="ico-append fa fa-lock"></i>
										<input type="password" name="password" value="${user.password}" placeholder="Password">
										<b class="tooltip tooltip-bottom-right">Only letters, characters and numbers</b>
									</label>
								
									
									
									<div class="margin-top-30">
										<label class="checkbox nomargin"><input class="checked-agree" type="checkbox" name="checkbox"><i></i>I agree to the <a href="#" data-toggle="modal" data-target="#termsModal">Terms of Service</a></label>
										<label class="checkbox nomargin"><input type="checkbox" name="checkbox"><i></i>I want to receive news and  special offers</label>
									</div>
								</fieldset>

								<div class="row margin-bottom-20">
									<div class="col-md-12">
										<button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> REGISTER</button>
									</div>
								</div>

							</form>
							<!-- /register form -->
					</div>
					<div class="tab-pane fade" id="vendor">
							<!-- register form -->
							<form class="nomargin sky-form boxed" autocomplete="off" action="save-vendor" method="post">
								<header>
									<i class="fa fa-users"></i> Register
								</header>

								<fieldset class="nomargin">					
									<input type="hidden" name="id" value="${vendor.vendorid}"/>
									<div class="row margin-bottom-10">
										<div class="col-md-6">
											<label class="input">
												<input type="text" name="firstname" value="${vendor.firstname}" placeholder="First name">
											<b class="tooltip tooltip-bottom-right">First Name</b>
											</label>
										</div>
										<div class="col col-md-6">
											<label class="input">
												<input type="text" name="lastname" value="${vendor.lastname}" placeholder="Last name">
											<b class="tooltip tooltip-bottom-right">Last Name</b>
											</label>
										</div>
									</div>
									<label class="input margin-bottom-10">
										<i class="ico-append fa fa-phone"></i>
										<input type="tel" name="contact" value="${vendor.vendorcontact}" placeholder="Contact Number">
										<b class="tooltip tooltip-bottom-right">Needed to verify your Contact</b>
									</label>
									
									
									<label class="input margin-bottom-10">
										<i class="ico-append fa fa-envelope"></i>
										<input type="email" name="email" placeholder="Email" placeholder="Email address">
										<b class="tooltip tooltip-bottom-right">Needed to verify your account</b>
									</label>
									
									<label class="input margin-bottom-10">
										<i class="ico-append fa fa-home"></i>
										<input type="textarea" name="address" value="${vendor.address}" placeholder="Address">
										<b class="tooltip tooltip-bottom-right">Enter Your Full Address</b>
									</label>
								
								
									<label class="input margin-bottom-10">
										<i class="ico-append fa fa-lock"></i>
										<input type="password" name="password" value="${vendor.password}" placeholder="Password">
										<b class="tooltip tooltip-bottom-right">Only letters, characters and numbers</b>
									</label>
								
									
									
									<div class="margin-top-30">
										<label class="checkbox nomargin"><input class="checked-agree" type="checkbox" name="checkbox"><i></i>I agree to the <a href="#" data-toggle="modal" data-target="#termsModal">Terms of Service</a></label>
										<label class="checkbox nomargin"><input type="checkbox" name="checkbox"><i></i>I want to receive news and  special offers</label>
									</div>
								</fieldset>

								<div class="row margin-bottom-20">
									<div class="col-md-12">
										<button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> REGISTER</button>
									</div>
								</div>

							</form>
							<!-- /register form -->
					</div>
				</div>
			
			
			
			
					<!-- Register Form Ends Here -->
			
							</div>
				
						</div>
					</div>
				</div>
				
				
				
				<!-- Header modal for register closes here  -->
				
				
				
				
				
									<!-- Booking Confirmation >-->
					
					
					<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" id="booked" aria-labelledby="myLargeModalLabel" aria-hidden="true">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
					
								<!-- header modal -->
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									<h4 class="modal-title" id="myLargeModalLabel">Booking Successful for <%out.print(session.getAttribute("name")); %></h4>
								</div>
					
								<!-- body modal -->
								<div class="modal-body">
									<p>Thank you for booking with us. We are looking forward to provide you the best.</p>
								</div>
					
							</div>
						</div>
					</div>
				
				
				
				
				
				
				
				
				
				
				
				