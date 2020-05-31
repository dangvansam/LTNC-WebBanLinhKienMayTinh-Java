<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<c:url value="/view/client/static" var="url"></c:url>
<meta charset="ISO-8859-1">
<title>Product Details</title>
<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico">

<!-- Web Fonts -->
<link rel='stylesheet' type='text/css'
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

<!-- CSS Global Compulsory -->
<link rel="stylesheet"
	href="${url}/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${url}/css/shop.style.css">

<!-- CSS Header and Footer -->
<link rel="stylesheet" href="${url}/css/headers/header-v5.css">
<link rel="stylesheet" href="${url}/css/footers/footer-v4.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet" href="${url}/plugins/animate.css">
<link rel="stylesheet" href="${url}/plugins/line-icons/line-icons.css">
<link rel="stylesheet"
	href="${url}/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${url}/plugins/scrollbar/css/jquery.mCustomScrollbar.css">
<link rel="stylesheet"
	href="${url}/plugins/owl-carousel/owl-carousel/owl.carousel.css">
<link rel="stylesheet"
	href="${url}/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
<link rel="stylesheet"
	href="${url}/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">
<link rel="stylesheet"
	href="${url}/plugins/master-slider/quick-start/masterslider/style/masterslider.css">
<link rel='stylesheet'
	href="${url}/plugins/master-slider/quick-start/masterslider/skins/default/style.css">

<!-- Style Switcher -->
<link rel="stylesheet" href="${url}/css/plugins/style-switcher.css">

<!-- CSS Theme -->
<link rel="stylesheet" href="${url}/css/theme-colors/default.css"
	id="style_color">

<!-- CSS Customization -->
<link rel="stylesheet" href="${url}/css/custom.css">
</head>
<body>
<body class="header-fixed">
	<div class="wrapper">
		<!--=== Header v5 ===-->
		<div class="header-v5 header-static">
			<!-- Topbar v3 -->
			<jsp:include page="topbar.jsp"></jsp:include>
			<!-- End Topbar v3 -->

			<!-- Navbar -->
			<jsp:include page="navbar.jsp"></jsp:include>
			<!-- End Navbar -->
		</div>
		<!--=== End Header v5 ===-->

		<!--=== Shop Product ===-->
		<div class="shop-product">
			<!-- Breadcrumbs v5 -->
			<div class="container">
				<ul class="breadcrumb-v5">
					<li><a href="index.html"><i class="fa fa-home"></i></a></li>
					<li><a href="#">Products</a></li>
					<li class="active">Detail</li>
				</ul>
			</div>
			<!-- End Breadcrumbs v5 -->

			<div class="container">
				<div class="row">
					<div class="col-md-6 md-margin-bottom-50">
						<div class="ms-showcase2-template">
							<!-- Master Slider -->
							<div class="master-slider ms-skin-default" id="masterslider">
								<div class="ms-slide">
									<c:url value="/image?fname=${product.image }" var="imgUrl"></c:url>
									<img class="ms-brd" src="${url}/img/blank.gif"
										data-src="${imgUrl}" alt="${product.name }">

								</div>


							</div>
							<!-- End Master Slider -->
						</div>
					</div>

					<div class="col-md-6">
						<div class="shop-product-heading">
							<h2>${product.name }</h2>
							<ul class="list-inline shop-product-social">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
							</ul>
						</div>
						<!--/end shop product social-->

						<ul class="list-inline product-ratings margin-bottom-30">
							<li><i class="rating-selected fa fa-star"></i></li>
							<li><i class="rating-selected fa fa-star"></i></li>
							<li><i class="rating-selected fa fa-star"></i></li>
							<li><i class="rating fa fa-star"></i></li>
							<li><i class="rating fa fa-star"></i></li>
							<li class="product-review-list"><span>(1) <a href="#">Review</a>
									| <a href="#"> Add Review</a></span></li>
						</ul>
						<!--/end shop product ratings-->
						${product.des } <br>
						<ul class="list-inline shop-product-prices margin-bottom-30">
							<li class="shop-red">$ ${product.price }.0</li>
							<li class="line-through">${product.price * 1.25 }</li>
							<li><small class="shop-bg-red time-day-left"> Best
									Sale </small></li>
						</ul>
						<!--/end shop product prices-->

						<h3 class="shop-product-title">Size</h3>
						<ul class="list-inline product-size margin-bottom-30">
							<li><input type="radio" id="size-1" name="size"> <label
								for="size-1">S</label></li>
							<li><input type="radio" id="size-2" name="size"> <label
								for="size-2">M</label></li>
							<li><input type="radio" id="size-3" name="size" checked>
								<label for="size-3">L</label></li>
							<li><input type="radio" id="size-4" name="size"> <label
								for="size-4">XL</label></li>
						</ul>
						<!--/end product size-->

						<h3 class="shop-product-title">Color</h3>
						<ul class="list-inline product-color margin-bottom-30">
							<li><input type="radio" id="color-1" name="color"> <label
								class="color-one" for="color-1"></label></li>
							<li><input type="radio" id="color-2" name="color" checked>
								<label class="color-two" for="color-2"></label></li>
							<li><input type="radio" id="color-3" name="color"> <label
								class="color-three" for="color-3"></label></li>
						</ul>
						<!--/end product color-->

						<h3 class="shop-product-title">Quantity</h3>
						<div class="margin-bottom-40">

							<form name="f1" class="product-quantity sm-margin-bottom-20"
								method="get" action="<c:url value="/member/cart/add"></c:url>">
								<input type="text" value="${product.id }" name="pId" hidden="">
								<button type='button' class="quantity-button" name='subtract'
									onclick='javascript: subtractQty();' value='-'>-</button>
								<input type='text' class="quantity-field" name='quantity'
									value="1" id='qty' />
								<button type='button' class="quantity-button" name='add'
									onclick='javascript: document.getElementById("qty").value++;'
									value='+'>+</button>
								<button type="submit" class="btn-u btn-u-sea-shop btn-u-lg">Add
									to Cart</button>
							</form>


						</div>
						<!--/end product quantity-->

						<ul class="list-inline add-to-wishlist add-to-wishlist-brd">
							<li class="wishlist-in"><i class="fa fa-heart"></i> <a
								href="#">Add to Wishlist</a></li>
							<li class="compare-in"><i class="fa fa-exchange"></i> <a
								href="#">Add to Compare</a></li>
						</ul>
						<p class="wishlist-category">
							<strong>Categories:</strong> <a href="#">${product.category.name },</a>
						</p>
					</div>
				</div>
				<!--/end row-->
			</div>
		</div>
		<!--=== End Shop Product ===-->

		<!--=== Content Medium ===-->
		<div class="content-md container">
			<!--=== Product Service ===-->
			<div class="row margin-bottom-60">
				<div class="col-md-4 product-service md-margin-bottom-30">
					<div class="product-service-heading">
						<i class="fa fa-truck"></i>
					</div>
					<div class="product-service-in">
						<h3>Free Delivery</h3>
						<p>Integer mattis lacinia felis vel molestie. Ut eu euismod
							erat, tincidunt pulvinar semper veliUt porta, leo...</p>
						<a href="#">+Read More</a>
					</div>
				</div>
				<div class="col-md-4 product-service md-margin-bottom-30">
					<div class="product-service-heading">
						<i class="icon-earphones-alt"></i>
					</div>
					<div class="product-service-in">
						<h3>Customer Service</h3>
						<p>Integer mattis lacinia felis vel molestie. Ut eu euismod
							erat, tincidunt pulvinar semper veliUt porta, leo...</p>
						<a href="#">+Read More</a>
					</div>
				</div>
				<div class="col-md-4 product-service">
					<div class="product-service-heading">
						<i class="icon-refresh"></i>
					</div>
					<div class="product-service-in">
						<h3>Free Returns</h3>
						<p>Integer mattis lacinia felis vel molestie. Ut eu euismod
							erat, tincidunt pulvinar semper veliUt porta, leo...</p>
						<a href="#">+Read More</a>
					</div>
				</div>
			</div>
			<!--/end row-->
			<!--=== End Product Service ===-->

			<div class="tab-v5">
				<ul class="nav nav-tabs" role="tablist">
					<li class="active"><a href="#description" role="tab"
						data-toggle="tab">Description</a></li>
					<li><a href="#reviews" role="tab" data-toggle="tab">Reviews
							(1)</a></li>
				</ul>

				<div class="tab-content">
					<!-- Description -->
					<div class="tab-pane fade in active" id="description">
						<div class="row">
							<div class="col-md-7">
								<p>Morbi non semper est, eget tincidunt turpis. Vivamus
									sollicitudin sodales nisi, et venenatis turpis Vivamus
									sollicitudin ultricies eget. Fusce vitae neque blandit lectus
									faucibus aliquet nec vel ipsum. Integer mattis lacinia felis
									vel sollicitudin molestie.</p>
								<br>

								<h3 class="heading-md margin-bottom-20">Specifies</h3>
								<div class="row">
									<div class="col-sm-6">
										<ul class="list-unstyled specifies-list">
											<li><i class="fa fa-caret-right"></i>Brand Name: <span>Lacoste</span></li>
											<li><i class="fa fa-caret-right"></i>Technics: <span>Computer</span>
												Knitted</li>
											<li><i class="fa fa-caret-right"></i>Sleeve Length: <span>Full</span></li>
											<li><i class="fa fa-caret-right"></i>Sleeve Style: <span>Regular</span></li>
											<li><i class="fa fa-caret-right"></i>Pattern Type: <span>PAID</span></li>
											<li><i class="fa fa-caret-right"></i>Style: <span>Casual</span></li>
										</ul>
									</div>
									<div class="col-sm-6">
										<ul class="list-unstyled specifies-list">
											<li><i class="fa fa-caret-right"></i>Material: <span>Cotton,Nylon</span></li>
											<li><i class="fa fa-caret-right"></i>Item Type: <span>Pullovers</span></li>
											<li><i class="fa fa-caret-right"></i>Thickness: <span>Thin</span></li>
											<li><i class="fa fa-caret-right"></i>Model Number: <span>TM-11013
											</span></li>
											<li><i class="fa fa-caret-right"></i>Gender: <span>Men</span></li>
											<li><i class="fa fa-caret-right"></i>MATERIAL: <span>80%COTTON+10%NYLON</span></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-md-5">
								<div class="responsive-video">
									<iframe src="//player.vimeo.com/video/72343553" frameborder="0"
										webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>
								</div>
							</div>
						</div>
					</div>
					<!-- End Description -->

					<!-- Reviews -->
					<div class="tab-pane fade" id="reviews">
						<div class="product-comment margin-bottom-40">
							<div class="product-comment-in">
								<img class="product-comment-img rounded-x"
									src="${url}/img/team/01.jpg" alt="">
								<div class="product-comment-dtl">
									<h4>
										Mickel <small>22 days ago</small>
									</h4>
									<p>I like the green colour, it's very likeable and reminds
										me of Hollister. A little loose though but I am very skinny</p>
									<ul class="list-inline product-ratings">
										<li class="reply"><a href="#">Reply</a></li>
										<li class="pull-right">
											<ul class="list-inline">
												<li><i class="rating-selected fa fa-star"></i></li>
												<li><i class="rating-selected fa fa-star"></i></li>
												<li><i class="rating-selected fa fa-star"></i></li>
												<li><i class="rating fa fa-star"></i></li>
												<li><i class="rating fa fa-star"></i></li>
											</ul>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<h3 class="heading-md margin-bottom-30">Add a review</h3>
						<form action="${url}/php/demo-contacts-process.php" method="post"
							id="sky-form3" class="sky-form sky-changes-4">
							<fieldset>
								<div class="margin-bottom-30">
									<label class="label-v2">Name</label> <label class="input">
										<input type="text" name="name" id="name">
									</label>
								</div>

								<div class="margin-bottom-30">
									<label class="label-v2">Email</label> <label class="input">
										<input type="email" name="email" id="email">
									</label>
								</div>

								<div class="margin-bottom-30">
									<label class="label-v2">Review</label> <label class="textarea">
										<textarea rows="7" name="message" id="message"></textarea>
									</label>
								</div>
							</fieldset>

							<footer class="review-submit">
								<label class="label-v2">Review</label>
								<div class="stars-ratings">
									<input type="radio" name="stars-rating" id="stars-rating-5">
									<label for="stars-rating-5"><i class="fa fa-star"></i></label>
									<input type="radio" name="stars-rating" id="stars-rating-4">
									<label for="stars-rating-4"><i class="fa fa-star"></i></label>
									<input type="radio" name="stars-rating" id="stars-rating-3">
									<label for="stars-rating-3"><i class="fa fa-star"></i></label>
									<input type="radio" name="stars-rating" id="stars-rating-2">
									<label for="stars-rating-2"><i class="fa fa-star"></i></label>
									<input type="radio" name="stars-rating" id="stars-rating-1">
									<label for="stars-rating-1"><i class="fa fa-star"></i></label>
								</div>
								<button type="button"
									class="btn-u btn-u-sea-shop btn-u-sm pull-right">Submit</button>
							</footer>
						</form>
					</div>
					<!-- End Reviews -->
				</div>
			</div>
		</div>
		<!--/end container-->
		<!--=== End Content Medium ===-->

		<!--=== Illustration v2 ===-->
		<div class="container">
			<div class="heading heading-v1 margin-bottom-20">
				<h2>Product you may like</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed
					odio elit, ultrices vel cursus sed, placerat ut leo. Phasellus in
					magna erat. Etiam gravida convallis augue non tincidunt. Nunc
					lobortis dapibus neque quis lacinia. Nam dapibus tellus sit amet
					odio venenatis</p>
			</div>

			<div class="illustration-v2 margin-bottom-60">
				<div class="customNavigation margin-bottom-25">
					<a class="owl-btn prev rounded-x"><i class="fa fa-angle-left"></i></a>
					<a class="owl-btn next rounded-x"><i class="fa fa-angle-right"></i></a>
				</div>

				<ul class="list-inline owl-slider-v4">
					<li class="item"><a href="#"><img class="img-responsive"
							src="${url}/img/thumb/09.jpg" alt=""></a>
						<div class="product-description-v2">
							<div class="margin-bottom-5">
								<h4 class="title-price">
									<a href="#">Double-breasted</a>
								</h4>
								<span class="title-price">$95.00</span>
							</div>
							<ul class="list-inline product-ratings">
								<li><i class="rating-selected fa fa-star"></i></li>
								<li><i class="rating-selected fa fa-star"></i></li>
								<li><i class="rating-selected fa fa-star"></i></li>
								<li><i class="rating fa fa-star"></i></li>
								<li><i class="rating fa fa-star"></i></li>
							</ul>
						</div></li>
					<li class="item"><a href="#"><img class="img-responsive"
							src="${url}/img/thumb/07.jpg" alt=""></a>
						<div class="product-description-v2">
							<div class="margin-bottom-5">
								<h4 class="title-price">
									<a href="#">Double-breasted</a>
								</h4>
								<span class="title-price">$60.00</span> <span
									class="title-price line-through">$95.00</span>
							</div>
							<ul class="list-inline product-ratings">
								<li><i class="rating-selected fa fa-star"></i></li>
								<li><i class="rating-selected fa fa-star"></i></li>
								<li><i class="rating-selected fa fa-star"></i></li>
								<li><i class="rating fa fa-star"></i></li>
								<li><i class="rating fa fa-star"></i></li>
							</ul>
						</div></li>
					<li class="item"><a href="#"><img class="img-responsive"
							src="${url}/img/thumb/08.jpg" alt=""></a>
						<div class="product-description-v2">
							<div class="margin-bottom-5">
								<h4 class="title-price">
									<a href="#">Double-breasted</a>
								</h4>
								<span class="title-price">$95.00</span>
							</div>
							<ul class="list-inline product-ratings">
								<li><i class="rating-selected fa fa-star"></i></li>
								<li><i class="rating-selected fa fa-star"></i></li>
								<li><i class="rating-selected fa fa-star"></i></li>
								<li><i class="rating fa fa-star"></i></li>
								<li><i class="rating fa fa-star"></i></li>
							</ul>
						</div></li>
					<li class="item"><a href="#"><img class="img-responsive"
							src="${url}/img/thumb/06.jpg" alt=""></a>
						<div class="product-description-v2">
							<div class="margin-bottom-5">
								<h4 class="title-price">
									<a href="#">Double-breasted</a>
								</h4>
								<span class="title-price">$95.00</span>
							</div>
							<ul class="list-inline product-ratings">
								<li><i class="rating-selected fa fa-star"></i></li>
								<li><i class="rating-selected fa fa-star"></i></li>
								<li><i class="rating-selected fa fa-star"></i></li>
								<li><i class="rating fa fa-star"></i></li>
								<li><i class="rating fa fa-star"></i></li>
							</ul>
						</div></li>
					<li class="item"><a href="#"><img class="img-responsive"
							src="${url}/img/thumb/04.jpg" alt=""></a>
						<div class="product-description-v2">
							<div class="margin-bottom-5">
								<h4 class="title-price">
									<a href="#">Double-breasted</a>
								</h4>
								<span class="title-price">$95.00</span>
							</div>
							<ul class="list-inline product-ratings">
								<li><i class="rating-selected fa fa-star"></i></li>
								<li><i class="rating-selected fa fa-star"></i></li>
								<li><i class="rating-selected fa fa-star"></i></li>
								<li><i class="rating fa fa-star"></i></li>
								<li><i class="rating fa fa-star"></i></li>
							</ul>
						</div></li>
					<li class="item"><a href="#"><img class="img-responsive"
							src="${url}/img/thumb/03.jpg" alt=""></a>
						<div class="product-description-v2">
							<div class="margin-bottom-5">
								<h4 class="title-price">
									<a href="#">Double-breasted</a>
								</h4>
								<span class="title-price">$95.00</span>
							</div>
							<ul class="list-inline product-ratings">
								<li><i class="rating-selected fa fa-star"></i></li>
								<li><i class="rating-selected fa fa-star"></i></li>
								<li><i class="rating-selected fa fa-star"></i></li>
								<li><i class="rating fa fa-star"></i></li>
								<li><i class="rating fa fa-star"></i></li>
							</ul>
						</div></li>
				</ul>
			</div>
		</div>
		<!--=== End Illustration v2 ===-->

		<!--=== Shop Suvbscribe ===-->
		<div class="shop-subscribe">
			<div class="container">
				<div class="row">
					<div class="col-md-8 md-margin-bottom-20">
						<h2>
							subscribe to our weekly <strong>newsletter</strong>
						</h2>
					</div>
					<div class="col-md-4">
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Email your email..."> <span
								class="input-group-btn">
								<button class="btn" type="button">
									<i class="fa fa-envelope-o"></i>
								</button>
							</span>
						</div>
					</div>
				</div>
			</div>
			<!--/end container-->
		</div>
		<!--=== End Shop Suvbscribe ===-->

		<!--=== Footer v4 ===-->
		<jsp:include page="footer.jsp"></jsp:include>
		<!--=== End Footer v4 ===-->
	</div>
	<!--/wrapper-->

	<!-- JS Global Compulsory -->
	<script src="${url}/plugins/jquery/jquery.min.js"></script>
	<script src="${url}/plugins/jquery/jquery-migrate.min.js"></script>
	<script src="${url}/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script src="${url}/plugins/back-to-top.js"></script>
	<script src="${url}/plugins/smoothScroll.js"></script>
	<script src="${url}/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
	<script
		src="${url}/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<!-- Master Slider -->
	<script
		src="${url}/plugins/master-slider/quick-start/masterslider/masterslider.min.js"></script>
	<script
		src="${url}/plugins/master-slider/quick-start/masterslider/jquery.easing.min.js"></script>
	<!-- JS Customization -->
	<script src="${url}/js/custom.js"></script>
	<!-- JS Page Level -->
	<script src="${url}/js/shop.app.js"></script>
	<script src="${url}/js/plugins/owl-carousel.js"></script>
	<script src="${url}/js/plugins/master-slider.js"></script>
	<script src="${url}/js/forms/product-quantity.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			App.initScrollBar();
			OwlCarousel.initOwlCarousel();
			MasterSliderShowcase2.initMasterSliderShowcase2();
		});
	</script>

	<!--[if lt IE 9]>
    <script src="${url}/plugins/respond.js"></script>
    <script src="${url}/plugins/html5shiv.js"></script>
    <script src="${url}/js/plugins/placeholder-IE-fixes.js"></script>    
<![endif]-->

</body>
</body>
</html>