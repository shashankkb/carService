<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@include file="header.jsp" %>

			<section class="page-header page-header-xs">
				<div class="container">

					<h1>SHOP</h1>

					<!-- breadcrumbs -->
					<ol class="breadcrumb">
						<li><a href="/index">Home</a></li>
						<li><a href="javascript:void(0);">Shop</a></li>
						
					</ol><!-- /breadcrumbs -->

				</div>
			</section>
	<section>
				<div class="container">
					
					<!-- LIST OPTIONS -->
					<div class="clearfix shop-list-options margin-bottom-20">

						<ul class="pagination nomargin pull-right">
							<li><a href="#">«</a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">»</a></li>
						</ul>

						<div class="options-left">
							<select>
								<option value="pos_asc">Position ASC</option>
								<option value="pos_desc">Position DESC</option>
								<option value="name_asc">Name ASC</option>
								<option value="name_desc">Name DESC</option>
								<option value="price_asc">Price ASC</option>
								<option value="price_desc">Price DESC</option>
							</select>
							
							<a class="btn fa fa-th" href="shop-4col-left.html"><!-- grid --></a>
							<a class="btn active fa fa-list" style="background-color: #8ab933;" href="shop-1col-left.html"><!-- list --></a>
						</div>

					</div>
					<!-- /LIST OPTIONS -->
		
		<c:forEach var="vendor" items="${showthem}">
			
	


					<ul class="shop-item-list row list-inline nomargin">

					

						

						<!-- ITEM -->
						<li class="col-lg-12">

							<div class="shop-item clearfix">

								<div class="thumbnail">
									<!-- product image(s) -->
									<a class="shop-item-image" href="shop-single-left.html">
										<!-- CAROUSEL -->
										<div class="owl-carousel buttons-autohide controlls-over nomargin owl-theme owl-carousel-init" data-plugin-options="{&quot;singleItem&quot;: true, &quot;autoPlay&quot;: 3500, &quot;navigation&quot;: false, &quot;pagination&quot;: false, &quot;transitionStyle&quot;:&quot;fadeUp&quot;}" style="opacity: 1; display: block;">
											<div class="owl-wrapper-outer"><div class="owl-wrapper" style="width: 760px; left: 0px; display: block; transition: all 0ms ease; transform: translate3d(-190px, 0px, 0px); transform-origin: 285px center 0px; perspective-origin: 285px center;"><div class="owl-item" style="width: 190px;"><img class="img-responsive" src="static/images/p5.jpg" alt=""></div><div class="owl-item" style="width: 190px;"><img class="img-responsive" src="static/images/p1.jpg" alt=""></div></div></div>
											
										</div>
										<!-- /CAROUSEL -->
									</a>
									<!-- /product image(s) -->
								</div>
								
								<div class="shop-item-summary">
									<h2>${vendor.vendorname}</h2>
									
									<!-- rating -->
									<div class="rating rating-${vendor.vendorrating} size-13"><!-- rating-0 ... rating-5 --></div>
									<!-- /rating -->

									<p><!-- product short description -->
									${vendor.vendoraddress}
									</p><!-- /product short description -->
									
									
									<div class="shop-item-price">
										Model: ${vendor.vendormodel}
									</div>
									

									<!-- buttons -->
									<div class="shop-item-buttons">
										<a class="btn btn-default" href="/singlevendor?vendorid=${vendor.vendorid}"><i class="fa fa-cart-plus"></i> BOOK NOW</a>
										<!-- replace data-item-id width the real item ID - used by js/view/demo.shop.js -->
									</div>
									<!-- /buttons -->
								</div>

							</div>

						</li>
						<!-- /ITEM -->

						

						

						

					</ul>

					<hr>

					
			
		</c:forEach>	
		
<!-- Pagination Default -->
					<div class="text-center">
						<ul class="pagination">
							<li><a href="#">«</a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">»</a></li>
						</ul>
					</div>
					<!-- /Pagination Default -->
					
				</div>
			</section>








<%@include file="footer.jsp" %>