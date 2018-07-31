<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp" %>


<section>
				<div class="container">
					
					<div class="row">
					
						<!-- IMAGE -->
						<div class="col-lg-4 col-sm-4">
							
							<div class="thumbnail relative margin-bottom-3">

								<!-- 
									IMAGE ZOOM 
									
									data-mode="mouseover|grab|click|toggle"
								-->
								<figure class="zoom" id="zoom-primary" style="overflow: hidden; position: relative;" data-mode="mouseover">
									<!-- 
										zoom buttton
										
										positions available:
											.bottom-right
											.bottom-left
											.top-right
											.top-left
									-->
									<a class="lightbox bottom-right" href="static/images/p5.jpg" data-plugin-options='{"type":"image"}'><i class="glyphicon glyphicon-search"></i></a>

									<!-- 
										image 
										
										Extra: add .image-bw class to force black and white!
									-->
									<img width="1200" height="1500" class="img-responsive" alt="This is the product title" src="static/images/p5.jpg">
								<img class="zoomImg" style="border: medium; border-image: none; left: -508.85px; top: -11.14px; width: 1000px; height: 1500px; position: absolute; max-height: none; max-width: none; opacity: 0;" src="static/images/p1.jpg"></figure>

							</div>

							

						</div>
						<!-- /IMAGE -->

						<!-- ITEM DESC -->
						<div class="col-lg-5 col-sm-8">

							<!-- buttons -->
							<div class="pull-right">
								<!-- replace data-item-id width the real item ID - used by js/view/demo.shop.js -->
								<a title="" class="btn btn-default add-wishlist" href="#" data-toggle="tooltip" data-original-title="Add To Wishlist" data-item-id="1"><i class="fa fa-heart nopadding"></i></a>
								<a title="" class="btn btn-default add-compare" href="#" data-toggle="tooltip" data-original-title="Add To Compare" data-item-id="1"><i class="fa fa-bar-chart-o nopadding" data-toggle="tooltip"></i></a>
							</div>
							<!-- /buttons -->

							<!-- price -->
							<div class="shop-item-price">
								<span class="line-through nopadding-left">Rs. 1500.00</span>
								Rs. 1000.00
							</div>
							<!-- /price -->

							<hr>

							<div class="clearfix margin-bottom-30">
								<span class="pull-right text-success"><i class="fa fa-check"></i> Service & Maintenance</span>
								<!--
								<span class="pull-right text-danger"><i class="glyphicon glyphicon-remove"></i> Out of Stock</span>
								-->

								<strong>Model:</strong> <c:out value="${vendors.vendormodel}" />
							</div>


							<!-- short description -->
							<p><c:out value="${vendors.vendordescription}" /></p>
							<!-- /short description -->
							
							
							<!-- short description -->
							<p><c:out value="${vendors.vendorcontact}" /></p>
							<!-- /short description -->

												
							<!-- countdown -->
							<div class="text-center">
								<h5>Limited Offer</h5>
								<div class="countdown is-countdown" data-labels="years,months,weeks,days,hour,min,sec" data-from="January 31, 2018 15:03:26"><span class="countdown-row countdown-show3"><span class="countdown-section"><span class="countdown-amount">0</span><span class="countdown-period">hour</span></span><span class="countdown-section"><span class="countdown-amount">0</span><span class="countdown-period">min</span></span><span class="countdown-section"><span class="countdown-amount">0</span><span class="countdown-period">sec</span></span></span></div>
							</div>
							<!-- /countdown -->


							<hr>

							<!-- FORM -->
							<form class="clearfix form-inline nomargin" action="/booking" method="POST">
								

								<!-- see assets/js/view/demo.shop.js -->
								
								<input name="bookingvendorid"  type="hidden" value="${vendors.vendorid}">
								<input name="bookingvendorname"  type="hidden" value="${vendors.vendorname}">
								<input name="bookingvendoremail"  type="hidden" name="vendoremail" value="${vendors.vendoremail}">
								<input name="bookingvendorcontact" type="hidden" value="${vendors.vendorcontact}">
								<input name="bookingvendoraddress" type="hidden" value="${vendors.vendoraddress}">
								<input name="userid" type="hidden" value="${id}">
								<input name="useremail" type="hidden" value="${username}">
								<!-- see assets/js/view/demo.shop.js -->
								
								

								

								

								<button type="submit" class="btn btn-primary pull-left product-add-cart noradius">Book Now</button>
							
							</form>
							<!-- /FORM -->


							<hr>

							<!-- Share -->
							<div class="pull-right">

								<a title="" class="social-icon social-icon-sm social-icon-transparent social-facebook pull-left" href="#" data-toggle="tooltip" data-placement="top" data-original-title="Facebook">
									<i class="icon-facebook"></i>
									<i class="icon-facebook"></i>
								</a>

								<a title="" class="social-icon social-icon-sm social-icon-transparent social-twitter pull-left" href="#" data-toggle="tooltip" data-placement="top" data-original-title="Twitter">
									<i class="icon-twitter"></i>
									<i class="icon-twitter"></i>
								</a>

								<a title="" class="social-icon social-icon-sm social-icon-transparent social-gplus pull-left" href="#" data-toggle="tooltip" data-placement="top" data-original-title="Google plus">
									<i class="icon-gplus"></i>
									<i class="icon-gplus"></i>
								</a>

								<a title="" class="social-icon social-icon-sm social-icon-transparent social-linkedin pull-left" href="#" data-toggle="tooltip" data-placement="top" data-original-title="Linkedin">
									<i class="icon-linkedin"></i>
									<i class="icon-linkedin"></i>
								</a>

							</div>
							<!-- /Share -->


							<!-- rating -->
							<div class="rating rating-${vendors.vendorrating} size-13 margin-top-10 width-100"><!-- rating-0 ... rating-5 --></div>
							<!-- /rating -->

						</div>
						<!-- /ITEM DESC -->

						<!-- INFO -->
						<div class="col-sm-4 col-md-3">

							<h4 class="size-18">
								<i class="fa fa-paper-plane-o"></i> 
								FREE SHIPPING
							</h4>
							<p>The vendor is providing free shipping for a limited period of time.</p>

							<h4 class="size-18">
								<i class="fa fa-clock-o"></i>
								30 DAYS MONEY BACK
							</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas metus nulla.</p>

							<h4 class="size-18">
								<i class="fa fa-users"></i> 
								CUSTOMER SUPPORT
							</h4>
						
							<!-- short description -->
							<p><c:out value="${vendors.vendoremail}" /></p>
							<p><i class="fa fa-address"></i><c:out value="${vendors.vendoraddress}" /></p>
							
							<p><i class="fa fa-mobile"></i> <c:out value="${vendors.vendorcontact}" /></p>
							<!-- /short description -->
							

							<hr>

							<p class="size-11">
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas metus nulla, commodo a sodales sed, dignissim pretium nunc. Nam et lacus neque.
							</p>
						</div>
						<!-- /INFO -->

					</div>



					<ul class="nav nav-tabs nav-top-border margin-top-80" id="myTab" role="tablist">
						<li class="active" role="presentation"><a role="tab" href="#description" data-toggle="tab">Description</a></li>
						<li role="presentation"><a role="tab" href="#specs" data-toggle="tab">Specifications</a></li>
						<li role="presentation"><a role="tab" href="#reviews" data-toggle="tab">Reviews (2)</a></li>
					</ul>


					<div class="tab-content padding-top-20">

						<!-- DESCRIPTION -->
						<div class="tab-pane fade in active" id="description" role="tabpanel">
							<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Aliquam fermentum commodo magna, id pretium nisi elementum at. Nulla molestie, ligula in fringilla rhoncus, risus leo dictum est, nec egestas nunc sem tincidunt turpis. Sed posuere consectetur est at lobortis.</p>
							<p>Donec blandit ultrices condimentum. Aliquam fermentum commodo magna, id pretium nisi elementum at. Nulla molestie, ligula in fringilla rhoncus, risus leo dictum est, nec egestas nunc sem tincidunt turpis. Sed posuere consectetur est at lobortis.</p>
						</div>
						
						<!-- SPECIFICATIONS -->
						<div class="tab-pane fade" id="specs" role="tabpanel">
							<div class="table-responsive">
								<table class="table table-hover">
									<thead>
										<tr>
											<th>Column name</th>
											<th>Column name</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Size</td>
											<td>2XL</td>
										</tr>
										<tr>
											<td>Color</td>
											<td>Red</td>
										</tr>
										<tr>
											<td>Weight</td>
											<td>132lbs</td>
										</tr>
										<tr>
											<td>Height</td>
											<td>74cm</td>
										</tr>
										<tr>
											<td>Bluetooth</td>
											<td><i class="fa fa-check text-success"></i> YES</td>
										</tr>
										<tr>
											<td>Wi-Fi</td>
											<td><i class="glyphicon glyphicon-remove text-danger"></i> NO</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						
						<!-- REVIEWS -->
						<div class="tab-pane fade" id="reviews" role="tabpanel">
							<!-- REVIEW ITEM -->
							<div class="block margin-bottom-60">

								<span class="user-avatar"><!-- user-avatar -->
									<img width="64" height="64" class="pull-left media-object" alt="" src="assets/images/avatar2.jpg">
								</span>

								<div class="media-body">
									<h4 class="media-heading size-14">
										John Doe – 
										<span class="text-muted">June 29, 2014 - 11:23</span> –
										<span class="size-14 text-muted"><!-- stars -->
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star-o"></i>
										</span>
									</h4>
									
									<p>
										Proin eget tortor risus. Cras ultricies ligula sed magna dictum porta. Pellentesque in ipsum id orci porta dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas metus nulla, commodo a sodales sed, dignissim pretium nunc. Nam et lacus neque.
									</p>

								</div>

							</div>
							<!-- /REVIEW ITEM -->

							<!-- REVIEW ITEM -->
							<div class="block margin-bottom-60">

								<span class="user-avatar"><!-- user-avatar -->
									<img width="64" height="64" class="pull-left media-object" alt="" src="assets/images/avatar2.jpg">
								</span>

								<div class="media-body">
									<h4 class="media-heading size-14">
										John Doe – 
										<span class="text-muted">June 29, 2014 - 11:23</span> –
										<span class="size-14 text-muted"><!-- stars -->
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star-o"></i>
											<i class="fa fa-star-o"></i>
										</span>
									</h4>
									
									<p>
										Proin eget tortor risus. Cras ultricies ligula sed magna dictum porta. Pellentesque in ipsum id orci porta dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas metus nulla, commodo a sodales sed, dignissim pretium nunc. Nam et lacus neque.
									</p>

								</div>

							</div>
							<!-- /REVIEW ITEM -->


							<!-- REVIEW FORM -->
							<h4 class="page-header margin-bottom-40">ADD A REVIEW</h4>
							<form id="form" action="#" method="post">
								
								<div class="row margin-bottom-10">
									
									<div class="col-md-6 margin-bottom-10">
										<!-- Name -->
										<input name="name" class="form-control" id="name" required="" type="text" maxlength="100" placeholder="Name *">
									</div>
									
									<div class="col-md-6">
										<!-- Email -->
										<input name="email" class="form-control" id="email" required="" type="email" maxlength="100" placeholder="Email *">
									</div>
									
								</div>
								
								<!-- Comment -->
								<div class="margin-bottom-30">
									<textarea name="text" class="form-control" id="text" maxlength="1000" placeholder="Comment" rows="6"></textarea>
								</div>

								<!-- Stars -->
								<div class="product-star-vote clearfix">

									<label class="radio pull-left">
										<input name="product-review-vote" type="radio" value="1">
										<i></i> 1 Star
									</label>

									<label class="radio pull-left">
										<input name="product-review-vote" type="radio" value="2">
										<i></i> 2 Stars
									</label>

									<label class="radio pull-left">
										<input name="product-review-vote" type="radio" value="3">
										<i></i> 3 Stars
									</label>

									<label class="radio pull-left">
										<input name="product-review-vote" type="radio" value="4">
										<i></i> 4 Stars
									</label>

									<label class="radio pull-left">
										<input name="product-review-vote" type="radio" value="5">
										<i></i> 5 Stars
									</label>

								</div>

								<!-- Send Button -->
								<button class="btn btn-primary" type="submit"><i class="fa fa-check"></i> Send Review</button>
								
							</form>
							<!-- /REVIEW FORM -->

						</div>
					</div>


					<hr class="margin-top-80 margin-bottom-80">



				</div>
			</section>



<%@include file="footer.jsp" %>