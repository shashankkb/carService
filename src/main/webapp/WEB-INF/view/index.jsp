<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp" %>
			<!-- 
				SLIDER

				Classes:
					.fullheight = full height slider
			-->
			<section id="slider" class="fullheight">

				<!--
					SWIPPER SLIDER PARAMS
					
					data-effect="slide|fade|coverflow"
					data-autoplay="2500|false" 						(remove to disable autoplay)
				-->
				<div class="swiper-container" data-effect="slide" data-autoplay="false">
					<div class="swiper-wrapper">

						<!-- SLIDE 1 -->
						<div class="swiper-slide" style="background-image: url('static/images/background2.jpg');">
							<div class="overlay dark-4"><!-- dark overlay [1 to 9 opacity] --></div>
							
							<div class="display-table">
								<div class="display-table-cell vertical-align-middle">
									<div class="container">

										<div class="row">
											<div class="text-center col-md-8 col-xs-12 col-md-offset-2">

												<h1 class="bold font-raleway wow fadeInUp" data-wow-delay="0.4s">WELCOME TO CAR SERVICE</h1>
												
												<div class="btn btn-default btn-lg wow fadeIn" data-wow-delay="1.5s">
												<form class="nomargin sky-form boxed" autocomplete="off" method="post" action="/showvendors">
												<fieldset class="nomargin">
												<label class="input margin-bottom-10">
													<i class="ico-append fa fa-building"></i>
													<input type="text" style="background:#fff;color:#3b3b3b;" name="vendorcity" class="form-control" placeholder="Enter City" value="${vendor.vendorcity}" required>
													
													<b class="tooltip tooltip-bottom-right">Enter City</b>
												</label>
												<label class="input margin-bottom-10">
													<i class="ico-append fa fa-car"></i>
													<input type="text" style="background:#fff;color:#3b3b3b;" name="vendormodel" class="form-control" placeholder="Enter Model" value="${vendor.vendormodel}" required>
													
													<b class="tooltip tooltip-bottom-right">Enter Model</b>
												</label>
												<div class="row margin-bottom-20">
													<div class="col-md-12">
														<button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> SEARCH</button>
													</div>
												</div>
										
												</fieldset>
												
												
												</form>
												
												</div>

											</div>
										</div>
							
									</div>
								</div>
							</div>
							
						</div>
						<!-- /SLIDE 1 -->




						<!-- SLIDE 2 -->
						<div class="swiper-slide" style="background-image: url('static/images/background.jpg');">
							<div class="overlay dark-5"><!-- dark overlay [1 to 9 opacity] --></div>
							
							<div class="display-table">
								<div class="display-table-cell vertical-align-middle">
									<div class="container">

										<div class="row">
											<div class="text-center col-md-8 col-xs-12 col-md-offset-2">

												<h1 class="bold font-raleway wow fadeInUp" data-wow-delay="0.4s">WELCOME TO CAR SERVICE</h1>
												
												<div class="btn btn-default btn-lg wow fadeIn" data-wow-delay="1.5s">
												<form class="nomargin sky-form boxed" autocomplete="off" method="post" action="/showvendors">
												<fieldset class="nomargin">
												<label class="input margin-bottom-10">
													<i class="ico-append fa fa-building"></i>
													<input type="text" style="background:#fff;color:#3b3b3b;" name="vendorcity" class="form-control" placeholder="Enter City" value="${vendor.vendorcity}" required>
													
													<b class="tooltip tooltip-bottom-right">Enter City</b>
												</label>
												<label class="input margin-bottom-10">
													<i class="ico-append fa fa-car"></i>
													<input type="text" style="background:#fff;color:#3b3b3b;" name="vendormodel" class="form-control" placeholder="Enter Model" value="${vendor.vendormodel}" required>
													
													<b class="tooltip tooltip-bottom-right">Enter Model</b>
												</label>
												<div class="row margin-bottom-20">
													<div class="col-md-12">
														<button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> SEARCH</button>
													</div>
												</div>
										
												</fieldset>
												
												
												</form>
												
												</div>

											</div>
										</div>
							
									</div>
								</div>
							</div>
							
						</div>
						<!-- /SLIDE 2 -->

					</div>

					<!-- Swiper Pagination -->
					<div class="swiper-pagination"></div>

					<!-- Swiper Arrows -->
					<div class="swiper-button-next"><i class="fa fa-angle-right"></i></div>
					<div class="swiper-button-prev"><i class="fa fa-angle-left"></i></div>
				</div>
					
			</section>
			<!-- /SLIDER -->

<%@include file="footer.jsp" %>