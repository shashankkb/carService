<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<footer id="footer">
	<div class="container">

		<div class="row">
			
			<div class="col-md-3">
				<!-- Footer Logo -->
				<img class="footer-logo" src="static/images/logo-footer.png" alt="" />

				<!-- Short Description -->
				<p>Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>

				<!-- Contact Address -->
				<address>
					<ul class="list-unstyled">
						<li class="footer-sprite address">
							PO Box 21132<br>
							Here Weare St, Melbourne<br>
							Vivas 2355 Australia<br>
						</li>
						<li class="footer-sprite phone">
							Phone: 1-800-565-2390
						</li>
						<li class="footer-sprite email">
							<a href="mailto:support@yourname.com">support@yourname.com</a>
						</li>
					</ul>
				</address>
				<!-- /Contact Address -->

			</div>

			<div class="col-md-3">

				<!-- Latest Blog Posts -->
				<h4 class="letter-spacing-1">LATEST NEWS</h4>
				<ul class="footer-posts list-unstyled">
					<li>
						<a href="#">Donec sed odio dui. Nulla vitae elit libero, a pharetra augue</a>
						<small>29 June 2015</small>
					</li>
					<li>
						<a href="#">Nullam id dolor id nibh ultricies</a>
						<small>29 June 2015</small>
					</li>
					<li>
						<a href="#">Duis mollis, est non commodo luctus</a>
						<small>29 June 2015</small>
					</li>
				</ul>
				<!-- /Latest Blog Posts -->

			</div>

			<div class="col-md-2">

				<!-- Links -->
				<h4 class="letter-spacing-1">EXPLORE SMARTY</h4>
				<ul class="footer-links list-unstyled">
					<li><a href="#">Home</a></li>
					<li><a href="#">About Us</a></li>
					<li><a href="#">Our Services</a></li>
					<li><a href="#">Our Clients</a></li>
					<li><a href="#">Our Pricing</a></li>
					<li><a href="#">Smarty Tour</a></li>
					<li><a href="#">Contact Us</a></li>
				</ul>
				<!-- /Links -->

			</div>

			<div class="col-md-4">

				<!-- Newsletter Form -->
				<h4 class="letter-spacing-1">KEEP IN TOUCH</h4>
				<p>Subscribe to Our Newsletter to get Important News & Offers</p>

				<form action="php/newsletter.php" role="form" method="post">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-envelope"></i></span>
						<input type="email" id="email" name="email" class="form-control" placeholder="Enter your Email" required="required">
						<span class="input-group-btn">
							<button class="btn btn-success" type="submit">Subscribe</button>
						</span>
					</div>
				</form>
				<!-- /Newsletter Form -->

				<!-- Social Icons -->
				<div class="margin-top-20">

					<a href="#" class="social-icon social-icon-border social-facebook pull-left" data-toggle="tooltip" data-placement="top" title="Facebook">
						<i class="icon-facebook"></i>
						<i class="icon-facebook"></i>
					</a>

					<a href="#" class="social-icon social-icon-border social-twitter pull-left" data-toggle="tooltip" data-placement="top" title="Twitter">
						<i class="icon-twitter"></i>
						<i class="icon-twitter"></i>
					</a>

					<a href="#" class="social-icon social-icon-border social-gplus pull-left" data-toggle="tooltip" data-placement="top" title="Google plus">
						<i class="icon-gplus"></i>
						<i class="icon-gplus"></i>
					</a>

					<a href="#" class="social-icon social-icon-border social-linkedin pull-left" data-toggle="tooltip" data-placement="top" title="Linkedin">
						<i class="icon-linkedin"></i>
						<i class="icon-linkedin"></i>
					</a>

					<a href="#" class="social-icon social-icon-border social-rss pull-left" data-toggle="tooltip" data-placement="top" title="Rss">
						<i class="icon-rss"></i>
						<i class="icon-rss"></i>
					</a>
		
				</div>
				<!-- /Social Icons -->

			</div>

		</div>

	</div>

	<div class="copyright">
		<div class="container">
			<ul class="pull-right nomargin list-inline mobile-block">
				<li><a href="#">Terms & Conditions</a></li>
				<li>&bull;</li>
				<li><a href="#">Privacy</a></li>
			</ul>
			&copy; All Rights Reserved, Company LTD
		</div>
	</div>
</footer>

		</div>
		<!-- /wrapper -->


		<!-- SCROLL TO TOP -->
		<a href="#" id="toTop"></a>


		<!-- PRELOADER -->
		<div id="preloader">
			<div class="inner">
				<span class="loader"></span>
			</div>
		</div><!-- /PRELOADER -->

<!-- JAVASCRIPT FILES -->
		<script type="text/javascript">var plugin_path = 'static/plugins/';</script>
		<script type="text/javascript" src="static/plugins/jquery/jquery-2.1.4.min.js"></script>

		<script type="text/javascript" src="static/js/scripts.js"></script>
		
		<script type="text/javascript" src="static/js/view/demo.shop.js"></script>
		

		<!-- SWIPER SLIDER -->
		<script type="text/javascript" src="static/plugins/slider.swiper/dist/js/swiper.min.js"></script>
		<script type="text/javascript" src="static/js/view/demo.swiper_slider.js"></script>

<c:choose>
<c:when test="${failed=='LOGIN_FAILED'}">
<script type="text/javascript">
    $(window).on('load',function(){
        $('#login').modal('show');
    });
</script>
</c:when>


<c:when test="${booked=='BOOKING_SUCCESSFUL'}">
<script type="text/javascript">
    $(window).on('load',function(){
        $('#booked').modal('show');
    });
</script>
</c:when>
</c:choose>
</body>



</html>