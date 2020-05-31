<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:url value="/view/client/static" var="url"></c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shop online</title>
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
	href="${url}/plugins/revolution-slider/rs-plugin/css/settings.css">

<!-- CSS Theme -->
<link rel="stylesheet" href="${url}/css/theme-colors/default.css"
	id="style_color">

<!-- CSS Customization -->
<link rel="stylesheet" href="${url}/css/custom.css">
</head>
<body>
	<!-- Subiz -->
	<script>
		(function(s, u, b, i, z) {
			u[i] = u[i] || function() {
				u[i].t = +new Date();
				(u[i].q = u[i].q || []).push(arguments);
			};
			z = s.createElement('script');
			var zz = s.getElementsByTagName('script')[0];
			z.async = 1;
			z.src = b;
			z.id = 'subiz-script';
			zz.parentNode.insertBefore(z, zz);
		})(document, window, 'https://widgetv4.subiz.com/static/js/app.js',
				'subiz');
		subiz('setAccount', 'acqetkhujxyunuatbxzw');
	</script>
	<!-- End Subiz -->
<body class="header-fixed">
	<div class="wrapper">
		<!--=== Header v5 ===-->
		<div class="header-v5 header-static">
			<!-- Topbar v3 -->
			<jsp:include page="/view/client/view/topbar.jsp"></jsp:include>
			<!-- End Topbar v3 -->

			<!-- Navbar -->
			<jsp:include page="/view/client/view/navbar.jsp"></jsp:include>
			<!-- End Navbar -->
		</div>
		<!--=== End Header v5 ===-->

		<!--=== Slider ===-->
		<div class="tp-banner-container">
			<div class="tp-banner">
				<ul>
					<!-- SLIDE -->
					<li class="revolution-mch-1" data-transition="fade"
						data-slotamount="5" data-masterspeed="1000" data-title="Slide 1">
						<!-- MAIN IMAGE --> <img src="${url}/img/1.jpg" alt="darkblurbg"
						data-bgfit="cover" data-bgposition="left top"
						data-bgrepeat="no-repeat">

						<div class="tp-caption revolution-ch1 sft start" data-x="center"
							data-hoffset="0" data-y="100" data-speed="1500" data-start="500"
							data-easing="Back.easeInOut" data-endeasing="Power1.easeIn"
							data-endspeed="300">
							The New <br> <strong>Collection</strong><br> is here
						</div> <!-- LAYER -->
						<div class="tp-caption sft" data-x="center" data-hoffset="0"
							data-y="380" data-speed="1600" data-start="1800"
							data-easing="Power4.easeOut" data-endspeed="300"
							data-endeasing="Power1.easeIn" data-captionhidden="off"
							style="z-index: 6">
							<a href="#" class="btn-u btn-brd btn-brd-hover btn-u-light">Shop
								Now</a>
						</div>
					</li>
					<!-- END SLIDE -->

					<!-- SLIDE -->
					<li class="revolution-mch-1" data-transition="fade"
						data-slotamount="5" data-masterspeed="1000" data-title="Slide 2">
						<!-- MAIN IMAGE --> <img src="${url}/img/5.jpg" alt="darkblurbg"
						data-bgfit="cover" data-bgposition="left top"
						data-bgrepeat="no-repeat">

						<div class="tp-caption revolution-ch3 sft start" data-x="center"
							data-hoffset="0" data-y="140" data-speed="1500" data-start="500"
							data-easing="Back.easeInOut" data-endeasing="Power1.easeIn"
							data-endspeed="300">
							Latest <strong>Fashion</strong> Trends
						</div> <!-- LAYER -->
						<div class="tp-caption revolution-ch4 sft" data-x="center"
							data-hoffset="-14" data-y="210" data-speed="1400"
							data-start="2000" data-easing="Power4.easeOut"
							data-endspeed="300" data-endeasing="Power1.easeIn"
							data-captionhidden="off" style="z-index: 6">
							Cras non dui et quam auctor pretium.<br> Aenean enim tortr,
							tempus et iteus m
						</div> <!-- LAYER -->
						<div class="tp-caption sft" data-x="center" data-hoffset="0"
							data-y="300" data-speed="1600" data-start="1800"
							data-easing="Power4.easeOut" data-endspeed="300"
							data-endeasing="Power1.easeIn" data-captionhidden="off"
							style="z-index: 6">
							<a href="#" class="btn-u btn-brd btn-brd-hover btn-u-light">Shop
								Now</a>
						</div>
					</li>
					<!-- END SLIDE -->

					<!-- SLIDE -->
					<li class="revolution-mch-1" data-transition="fade"
						data-slotamount="5" data-masterspeed="1000" data-title="Slide 3">
						<!-- MAIN IMAGE --> <img src="${url}/img/3.jpg" alt="darkblurbg"
						data-bgfit="cover" data-bgposition="right top"
						data-bgrepeat="no-repeat">

						<div class="tp-caption revolution-ch3 sft start" data-x="right"
							data-hoffset="5" data-y="130" data-speed="1500" data-start="500"
							data-easing="Back.easeInOut" data-endeasing="Power1.easeIn"
							data-endspeed="300">
							<strong>Luxury</strong> Watches
						</div> <!-- LAYER -->
						<div class="tp-caption revolution-ch4 sft" data-x="right"
							data-hoffset="0" data-y="210" data-speed="1400" data-start="2000"
							data-easing="Power4.easeOut" data-endspeed="300"
							data-endeasing="Power1.easeIn" data-captionhidden="off"
							style="z-index: 6">
							lectus. Cras non dui et quam auctor.<br> Aenean enim tortor,
							tempus et im
						</div> <!-- LAYER -->
						<div class="tp-caption sft" data-x="right" data-hoffset="0"
							data-y="300" data-speed="1600" data-start="2800"
							data-easing="Power4.easeOut" data-endspeed="300"
							data-endeasing="Power1.easeIn" data-captionhidden="off"
							style="z-index: 6">
							<a href="#" class="btn-u btn-brd btn-brd-hover btn-u-light">Shop
								Now</a>
						</div>
					</li>
					<!-- END SLIDE -->

					<!-- SLIDE -->
					<li class="revolution-mch-1" data-transition="fade"
						data-slotamount="5" data-masterspeed="1000" data-title="Slide 4">
						<!-- MAIN IMAGE --> <img src="${url}/img/2.jpg" alt="darkblurbg"
						data-bgfit="cover" data-bgposition="left top"
						data-bgrepeat="no-repeat">

						<div class="tp-caption revolution-ch1 sft start" data-x="center"
							data-hoffset="0" data-y="100" data-speed="1500" data-start="500"
							data-easing="Back.easeInOut" data-endeasing="Power1.easeIn"
							data-endspeed="300">Girl's Accesories</div> <!-- LAYER -->
						<div class="tp-caption revolution-ch2 sft" data-x="center"
							data-hoffset="0" data-y="280" data-speed="1400" data-start="2000"
							data-easing="Power4.easeOut" data-endspeed="300"
							data-endeasing="Power1.easeIn" data-captionhidden="off"
							style="z-index: 6">Super Promo</div> <!-- LAYER -->
						<div class="tp-caption sft" data-x="center" data-hoffset="0"
							data-y="370" data-speed="1600" data-start="2800"
							data-easing="Power4.easeOut" data-endspeed="300"
							data-endeasing="Power1.easeIn" data-captionhidden="off"
							style="z-index: 6">
							<a href="#" class="btn-u btn-brd btn-brd-hover btn-u-light">View
								More</a> <a href="#" class="btn-u btn-brd btn-brd-hover btn-u-light">Shop
								Now</a>
						</div>
					</li>
					<!-- END SLIDE -->

					<!-- SLIDE -->
					<li class="revolution-mch-1" data-transition="fade"
						data-slotamount="5" data-masterspeed="1000" data-title="Slide 5">
						<!-- MAIN IMAGE --> <img src="${url}/img/4.jpg" alt="darkblurbg"
						data-bgfit="cover" data-bgposition="right top"
						data-bgrepeat="no-repeat">

						<div class="tp-caption revolution-ch5 sft start" data-x="right"
							data-hoffset="5" data-y="130" data-speed="1500" data-start="500"
							data-easing="Back.easeInOut" data-endeasing="Power1.easeIn"
							data-endspeed="300">
							<strong>Jeans</strong> Collection
						</div> <!-- LAYER -->
						<div class="tp-caption revolution-ch4 sft" data-x="right"
							data-hoffset="-14" data-y="210" data-speed="1400"
							data-start="2000" data-easing="Power4.easeOut"
							data-endspeed="300" data-endeasing="Power1.easeIn"
							data-captionhidden="off" style="z-index: 6">
							Cras non dui et quam auctor pretium.<br> Aenean enim tortr,
							tempus et iteus m
						</div> <!-- LAYER -->
						<div class="tp-caption sft" data-x="right" data-hoffset="0"
							data-y="300" data-speed="1600" data-start="2800"
							data-easing="Power4.easeOut" data-endspeed="300"
							data-endeasing="Power1.easeIn" data-captionhidden="off"
							style="z-index: 6">
							<a href="#" class="btn-u btn-brd btn-brd-hover btn-u-light">Shop
								Now</a>
						</div>
					</li>
					<!-- END SLIDE -->
				</ul>
				<div class="tp-bannertimer tp-bottom"></div>
			</div>
		</div>
		<!--=== End Slider ===-->

		<!--=== Product Content ===-->
		<div class="container content-md">
			<!--=== Illustration v1 ===-->
			<div class="row margin-bottom-60">
				<div class="col-md-6 md-margin-bottom-30">
					<div class="overflow-h">
						<div class="illustration-v1 illustration-img1">
							<div class="illustration-bg">
								<div class="illustration-ads ad-details-v1">
									<h3>
										NEW YEAR <strong>SALE</strong> 30% - 60% <strong>off</strong>
									</h3>
									<a class="btn-u btn-brd btn-brd-hover btn-u-light" href="#">Shop
										Now</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="overflow-h">
						<a class="illustration-v1 illustration-img2" href="#"> <span
							class="illustration-bg"> <span
								class="illustration-ads ad-details-v2"> <span
									class="item-time">Spring 2014</span> <span class="item-name">Lacoste</span>
							</span>
						</span>
						</a>
					</div>
				</div>
			</div>
			<!--/end row-->
			<!--=== End Illustration v1 ===-->

			<div class="heading heading-v1 margin-bottom-20">
				<h2>Featured products</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed
					odio elit, ultrices vel cursus sed, placerat ut leo. Phasellus in
					magna erat. Etiam gravida convallis augue non tincidunt. Nunc
					lobortis dapibus neque quis lacinia. Nam dapibus tellus sit amet
					odio venenatis</p>
			</div>

			<!--=== Illustration v2 ===-->
			<div class="illustration-v2 margin-bottom-60">
				<div class="customNavigation margin-bottom-25">
					<a class="owl-btn prev rounded-x"><i class="fa fa-angle-left"></i></a>
					<a class="owl-btn next rounded-x"><i class="fa fa-angle-right"></i></a>
				</div>

				<ul class="list-inline owl-slider">

					<c:forEach items="${pwelcome }" var="p">
						<c:url value="/image?fname=${p.image }" var="imgUrl"></c:url>
						<li class="item">
							<div class="product-img">
								<a
									href="${pageContext.request.contextPath }/product/detail?id=${p.id}"><img
									width="314" height="414" src="${imgUrl }" alt=""></a> <a
									class="product-review"
									href="${pageContext.request.contextPath }/product/detail?id=${p.id}">Quick
									review</a> <a class="add-to-cart"
									href="${pageContext.request.contextPath }/product/detail?id=${p.id}"><i
									class="fa fa-shopping-cart"></i>Add to cart</a>
								<div class="shop-rgba-red rgba-banner">Out of stock</div>
							</div>
							<div class="product-description product-description-brd">
								<div class="overflow-h margin-bottom-5">
									<div class="pull-left">${p.name }</a>
										</h4>
										<span class="gender text-uppercase">${p.category.name }</span>
										<span class="gender">best selling</span>
									</div>
									<div class="product-price">
										<span class="title-price">$ ${p.price }</span>

									</div>
								</div>
								<ul class="list-inline product-ratings">
									<li><i class="rating-selected fa fa-star"></i></li>
									<li><i class="rating-selected fa fa-star"></i></li>
									<li><i class="rating-selected fa fa-star"></i></li>
									<li><i class="rating fa fa-star"></i></li>
									<li><i class="rating fa fa-star"></i></li>
									<li class="like-icon"><a
										data-original-title="Add to wishlist" data-toggle="tooltip"
										data-placement="left" class="tooltips" href="#"><i
											class="fa fa-heart"></i></a></li>
								</ul>
							</div>
						</li>
					</c:forEach>
				</ul>

			</div>
			<!--=== End Illustration v2 ===-->

			<!--=== Illustration v3 ===-->
			<div class="row margin-bottom-50">
				<div class="col-md-4 md-margin-bottom-30">
					<div class="overflow-h">
						<a class="illustration-v3 illustration-img1"
							href="${pageContext.request.contextPath }/product/category?cate_id=1">
							<span class="illustration-bg"> <span
								class="illustration-ads"> <span
									class="illustration-v3-category"> <span
										class="product-category">Men</span> <span
										class="product-amount">56 Items</span>
								</span>
							</span>
						</span>
						</a>
					</div>
				</div>
				<div class="col-md-4 md-margin-bottom-30">
					<div class="overflow-h">
						<a class="illustration-v3 illustration-img2"
							href="${pageContext.request.contextPath }/product/category?cate_id=2">
							<span class="illustration-bg"> <span
								class="illustration-ads"> <span
									class="illustration-v3-category"> <span
										class="product-category">Women</span> <span
										class="product-amount">56 Items</span>
								</span>
							</span>
						</span>
						</a>
					</div>
				</div>
				<div class="col-md-4">
					<div class="overflow-h">
						<a class="illustration-v3 illustration-img3"
							href="${pageContext.request.contextPath }/product/category?cate_id=3">
							<span class="illustration-bg"> <span
								class="illustration-ads"> <span
									class="illustration-v3-category"> <span
										class="product-category">Children</span> <span
										class="product-amount">56 Items</span>
								</span>
							</span>
						</span>
						</a>
					</div>
				</div>
			</div>
			<!--=== End Illustration v3 ===-->

			<div class="heading heading-v1 margin-bottom-40">
				<h2>Latest products</h2>
			</div>

			<!--=== Illustration v2 ===-->
			<div class="row illustration-v2">

				<c:forEach items="${pwelcome }" var="p">
					<c:url value="/image?fname=${p.image }" var="imgUrl"></c:url>

					<div class="col-md-3 col-sm-6 md-margin-bottom-30">
						<div class="product-img">
							<a
								href="${pageContext.request.contextPath }/product/detail?id=${p.id}"><img
								width="314" height="414" src="${imgUrl }" alt=""
								"
							alt=""></a> <a class="product-review"
								href="${pageContext.request.contextPath }/product/detail?id=${p.id}">Quick
								review</a> <a class="add-to-cart"
								href="${pageContext.request.contextPath }/product/detail?id=${p.id}"><i
								class="fa fa-shopping-cart"></i>Add to cart</a>
						</div>
						<div class="product-description product-description-brd">
							<div class="overflow-h margin-bottom-5">
								<div class="pull-left">
									<h4 class="title-price">
										<a
											href="${pageContext.request.contextPath }/product/detail?id=${p.id}">${p.name }</a>

									</h4>
									<span class="gender text-uppercase">${p.category.name }</span>
									<span class="gender">${p.des }</span>

								</div>
								<div class="product-price">
									<span class="title-price">$ ${p.price }</span>
								</div>
							</div>
							<ul class="list-inline product-ratings">
								<li><i class="rating-selected fa fa-star"></i></li>
								<li><i class="rating-selected fa fa-star"></i></li>
								<li><i class="rating-selected fa fa-star"></i></li>
								<li><i class="rating fa fa-star"></i></li>
								<li><i class="rating fa fa-star"></i></li>
								<li class="like-icon"><a
									data-original-title="Add to wishlist" data-toggle="tooltip"
									data-placement="left" class="tooltips" href="#"><i
										class="fa fa-heart"></i></a></li>
							</ul>
						</div>
					</div>
				</c:forEach>


			</div>
			<!--=== End Illustration v2 ===-->
		</div>
		<!--=== End Product Content ===-->

		<!--=== Twitter-Block ===-->
		<div class="parallaxBg twitter-block margin-bottom-60">
			<div class="container">
				<div class="heading heading-v1 margin-bottom-20">
					<h2>Latest Tweets</h2>
				</div>

				<div id="carousel-example-generic-v5" class="carousel slide"
					data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li class="active rounded-x"
							data-target="#carousel-example-generic-v5" data-slide-to="0"></li>
						<li class="rounded-x" data-target="#carousel-example-generic-v5"
							data-slide-to="1"></li>
						<li class="rounded-x" data-target="#carousel-example-generic-v5"
							data-slide-to="2"></li>
					</ol>

					<div class="carousel-inner">
						<div class="item active">
							<p>
								Unify has reached 10000 plus sales and we just want to thank you
								to our all customers for being part of the Unify Template
								success <a href="http://bit.ly/1c0UN3Y">http://bit.ly/1c0UN3Y</a>
							<p>
							<p>
								<a href="https://twitter.com/htmlstream">@htmlstream</a>
							</p>
							<ul class="list-inline twitter-icons">
								<li><a href="#"><i class="fa fa-reply"></i></a></li>
								<li><a href="#"><i class="fa fa-retweet"></i></a></li>
								<li><a href="#"><i class="fa fa-star"></i></a></li>
							</ul>
						</div>
						<div class="item">
							<p>the majority have suffered #alteration in some form, by
								injected humour, or randomised words which don't look even
								slightly believable. If you are going to use a passage of Lorem
								Ipsum</p>
							<p>
								<a href="https://twitter.com/htmlstream">@twbootstrap</a>
							</p>
							<ul class="list-inline twitter-icons">
								<li><a href="#"><i class="fa fa-reply"></i></a></li>
								<li><a href="#"><i class="fa fa-retweet"></i></a></li>
								<li><a href="#"><i class="fa fa-star"></i></a></li>
							</ul>
						</div>
						<div class="item">
							<p>
								New 100% Free Stock Photos. Every. Single. Day. Everything you
								need for your creative projects. <a href="#">http://publicdomainarchive.com</a>
							</p>
							<p>
								<a href="https://twitter.com/htmlstream">@wrapbootstrap</a>
							</p>
							<ul class="list-inline twitter-icons">
								<li><a href="#"><i class="fa fa-reply"></i></a></li>
								<li><a href="#"><i class="fa fa-retweet"></i></a></li>
								<li><a href="#"><i class="fa fa-star"></i></a></li>
							</ul>
						</div>
					</div>

					<div class="carousel-arrow">
						<a class="left carousel-control"
							href="#carousel-example-generic-v5" data-slide="prev"> <i
							class="fa fa-angle-left"></i>
						</a> <a class="right carousel-control"
							href="#carousel-example-generic-v5" data-slide="next"> <i
							class="fa fa-angle-right"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
		<!--=== End Twitter-Block ===-->

		<div class="container">
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

			<!--=== Illustration v4 ===-->
			<div class="row illustration-v4 margin-bottom-40">
				<div class="col-md-4">
					<div class="heading heading-v1 margin-bottom-20">
						<h2>Top Rated</h2>
					</div>
					<div class="thumb-product">
						<img class="thumb-product-img" src="${url}/img/thumb/08.jpg"
							alt="">
						<div class="thumb-product-in">
							<h4>
								<a href="shop-ui-inner.html">Yuketen</a> – <a
									href="shop-ui-inner.html">Derby Shoe</a>
							</h4>
							<span class="thumb-product-type">Footwear - Oxfords</span>
						</div>
						<ul class="list-inline overflow-h">
							<li class="thumb-product-price line-through">$75.00</li>
							<li class="thumb-product-price">$65.00</li>
							<li class="thumb-product-purchase"><a href="#"><i
									class="fa fa-shopping-cart"></i></a> | <a href="#"><i
									class="fa fa-heart"></i></a></li>
						</ul>
					</div>
					<div class="thumb-product">
						<img class="thumb-product-img" src="${url}/img/thumb/09.jpg"
							alt="">
						<div class="thumb-product-in">
							<h4>
								<a href="shop-ui-inner.html">Yuketen</a> – <a
									href="shop-ui-inner.html">Derby Shoe</a>
							</h4>
							<span class="thumb-product-type">Footwear - Oxfords</span>
						</div>
						<ul class="list-inline overflow-h">
							<li class="thumb-product-price">$75.00</li>
							<li class="thumb-product-purchase"><a href="#"><i
									class="fa fa-shopping-cart"></i></a> | <a href="#"><i
									class="fa fa-heart"></i></a></li>
						</ul>
					</div>
					<div class="thumb-product">
						<img class="thumb-product-img" src="${url}/img/thumb/03.jpg"
							alt="">
						<div class="thumb-product-in">
							<h4>
								<a href="shop-ui-inner.html">Yuketen</a> – <a
									href="shop-ui-inner.html">Derby Shoe</a>
							</h4>
							<span class="thumb-product-type">Footwear - Oxfords</span>
						</div>
						<ul class="list-inline overflow-h">
							<li class="thumb-product-price">$75.00</li>
							<li class="thumb-product-purchase"><a href="#"><i
									class="fa fa-shopping-cart"></i></a> | <a href="#"><i
									class="fa fa-heart"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-4">
					<div class="heading heading-v1 margin-bottom-20">
						<h2>Best Sellers</h2>
					</div>
					<div class="thumb-product">
						<img class="thumb-product-img" src="${url}/img/thumb/02.jpg"
							alt="">
						<div class="thumb-product-in">
							<h4>
								<a href="shop-ui-inner.html">Yuketen</a> – <a
									href="shop-ui-inner.html">Derby Shoe</a>
							</h4>
							<span class="thumb-product-type">Footwear - Oxfords</span>
						</div>
						<ul class="list-inline overflow-h">
							<li class="thumb-product-price">$75.00</li>
							<li class="thumb-product-purchase"><a href="#"><i
									class="fa fa-shopping-cart"></i></a> | <a href="#"><i
									class="fa fa-heart"></i></a></li>
						</ul>
					</div>
					<div class="thumb-product">
						<img class="thumb-product-img" src="${url}/img/thumb/10.jpg"
							alt="">
						<div class="thumb-product-in">
							<h4>
								<a href="shop-ui-inner.html">Yuketen</a> – <a
									href="shop-ui-inner.html">Derby Shoe</a>
							</h4>
							<span class="thumb-product-type">Footwear - Oxfords</span>
						</div>
						<ul class="list-inline overflow-h">
							<li class="thumb-product-price">$75.00</li>
							<li class="thumb-product-purchase"><a href="#"><i
									class="fa fa-shopping-cart"></i></a> | <a href="#"><i
									class="fa fa-heart"></i></a></li>
						</ul>
					</div>
					<div class="thumb-product">
						<img class="thumb-product-img" src="${url}/img/thumb/06.jpg"
							alt="">
						<div class="thumb-product-in">
							<h4>
								<a href="shop-ui-inner.html">Yuketen</a> – <a
									href="shop-ui-inner.html">Derby Shoe</a>
							</h4>
							<span class="thumb-product-type">Footwear - Oxfords</span>
						</div>
						<ul class="list-inline overflow-h">
							<li class="thumb-product-price line-through">$75.00</li>
							<li class="thumb-product-price">$65.00</li>
							<li class="thumb-product-purchase"><a href="#"><i
									class="fa fa-shopping-cart"></i></a> | <a href="#"><i
									class="fa fa-heart"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-4 padding">
					<div class="heading heading-v1 margin-bottom-20">
						<h2>Sale Items</h2>
					</div>
					<div class="thumb-product">
						<img class="thumb-product-img" src="${url}/img/thumb/07.jpg"
							alt="">
						<div class="thumb-product-in">
							<h4>
								<a href="shop-ui-inner.html">Yuketen</a> – <a
									href="shop-ui-inner.html">Derby Shoe</a>
							</h4>
							<span class="thumb-product-type">Footwear - Oxfords</span>
						</div>
						<ul class="list-inline overflow-h">
							<li class="thumb-product-price line-through">$75.00</li>
							<li class="thumb-product-price">$65.00</li>
							<li class="thumb-product-purchase"><a href="#"><i
									class="fa fa-shopping-cart"></i></a> | <a href="#"><i
									class="fa fa-heart"></i></a></li>
						</ul>
					</div>
					<div class="thumb-product">
						<img class="thumb-product-img" src="${url}/img/thumb/04.jpg"
							alt="">
						<div class="thumb-product-in">
							<h4>
								<a href="shop-ui-inner.html">Yuketen</a> – <a
									href="shop-ui-inner.html">Derby Shoe</a>
							</h4>
							<span class="thumb-product-type">Footwear - Oxfords</span>
						</div>
						<ul class="list-inline overflow-h">
							<li class="thumb-product-price">$75.00</li>
							<li class="thumb-product-purchase"><a href="#"><i
									class="fa fa-shopping-cart"></i></a> | <a href="#"><i
									class="fa fa-heart"></i></a></li>
						</ul>
					</div>
					<div class="thumb-product">
						<img class="thumb-product-img" src="${url}/img/thumb/05.jpg"
							alt="">
						<div class="thumb-product-in">
							<h4>
								<a href="shop-ui-inner.html">Yuketen</a> – <a
									href="shop-ui-inner.html">Derby Shoe</a>
							</h4>
							<span class="thumb-product-type">Footwear - Oxfords</span>
						</div>
						<ul class="list-inline overflow-h">
							<li class="thumb-product-price">$75.00</li>
							<li class="thumb-product-purchase"><a href="#"><i
									class="fa fa-shopping-cart"></i></a> | <a href="#"><i
									class="fa fa-heart"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
			<!--/end row-->
			<!--=== End Illustration v4 ===-->
		</div>
		<!--/end cotnainer-->

		<!--=== Collection Banner ===-->
		<div class="collection-banner">
			<div class="container">
				<div class="col-md-7 md-margin-bottom-50">
					<h2>Makeup collection</h2>
					<p>
						Duis in posuere risus. Vivamus sed dignissim tellus. In vehicula
						justo tempor commodo. <br> Nunc lobortis dapibus neque quis
						lacinia
					</p>
					<br> <a href="#"
						class="btn-u btn-brd btn-brd-hover btn-u-light">Shop Now</a>
				</div>
				<div class="col-md-5">
					<div class="overflow-h">
						<span class="percent-numb">50</span>
						<div class="percent-off">
							<span class="discount-percent">%</span> <span
								class="discount-off">off</span>
						</div>
						<div class="new-offers shop-bg-green rounded-x">
							<p>new</p>
							<span>Products</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--=== End Collection Banner ===-->

		<!--=== Sponsors ===-->
		<div class="container content">
			<div class="heading heading-v1 margin-bottom-40">
				<h2>Sponsors</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed
					odio elit, ultrices vel cursus sed, placerat ut leo. Phasellus in
					magna erat. Etiam gravida convallis augue non tincidunt. Nunc
					lobortis dapibus neque quis lacinia. Nam dapibus tellus sit amet
					odio venenatis</p>
			</div>

			<ul class="list-inline owl-slider-v2">
				<li class="item first-child"><img
					src="${url}/img/clients/07.png" alt=""></li>
				<li class="item"><img src="${url}/img/clients/08.png" alt="">
				</li>
				<li class="item"><img src="${url}/img/clients/10.png" alt="">
				</li>
				<li class="item"><img src="${url}/img/clients/11.png" alt="">
				</li>
				<li class="item"><img src="${url}/img/clients/09.png" alt="">
				</li>
				<li class="item"><img src="${url}/img/clients/12.png" alt="">
				</li>
				<li class="item"><img src="${url}/img/clients/07.png" alt="">
				</li>
				<li class="item"><img src="${url}/img/clients/08.png" alt="">
				</li>
				<li class="item"><img src="${url}/img/clients/09.png" alt="">
				</li>
				<li class="item"><img src="${url}/img/clients/10.png" alt="">
				</li>
				<li class="item"><img src="${url}/img/clients/11.png" alt="">
				</li>
				<li class="item"><img src="${url}/img/clients/12.png" alt="">
				</li>
			</ul>
			<!--/end owl-carousel-->
		</div>
		<!--=== End Sponsors ===-->

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
		<jsp:include page="/view/client/view/footer.jsp"></jsp:include>
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
	<script src="${url}/plugins/jquery.parallax.js"></script>
	<script src="${url}/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
	<script
		src="${url}/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script
		src="${url}/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
	<script
		src="${url}/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
	<!-- JS Customization -->
	<script src="${url}/js/custom.js"></script>
	<!-- JS Page Level -->
	<script src="${url}/js/shop.app.js"></script>
	<script src="${url}/js/plugins/owl-carousel.js"></script>
	<script src="${url}/js/plugins/revolution-slider.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			App.initScrollBar();
			App.initParallaxBg();
			OwlCarousel.initOwlCarousel();
			RevolutionSlider.initRSfullWidth();
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