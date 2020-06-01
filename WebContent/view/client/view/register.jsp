<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:url value="/view/client/static" var="url"></c:url>
<title>Register</title>
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
<!-- <link rel="stylesheet" href="${url}/plugins/sky-forms-pro/skyforms/css/sky-forms.css"> -->
<!-- <link rel="stylesheet" href="${url}/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css"> -->

<!-- CSS Page Styles -->
<link rel="stylesheet" href="${url}/css/pages/log-reg-v3.css">

<!-- Style Switcher -->
<link rel="stylesheet" href="${url}/css/plugins/style-switcher.css">

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
			<jsp:include page="topbar.jsp"></jsp:include>
			<!-- End Topbar v3 -->

			<!-- Navbar -->
			<jsp:include page="navbar.jsp"></jsp:include>
			<!-- End Navbar -->
		</div>
		<!--=== End Header v5 ===-->

		<!--=== Breadcrumbs v4 ===-->
		<div class="breadcrumbs-v4">
			<div class="container">
				<h1>
					SD<span class="shop-green">COMPUTER</span>
				</h1>
				<ul class="breadcrumb-v4-in">
					<li><a href="${pageContext.request.contextPath }/welcome">Trang chủ</a></li>
					<li class="active">Đăng ký tài khoản</li>
				</ul>
			</div>
			<!--/end container-->
		</div>
		<!--=== End Breadcrumbs v4 ===-->

		<!--=== Registre ===-->
		<div class="log-reg-v3 content-md margin-bottom-30">
			<div class="container">
				<div class="row">
					<div class="col-md-7 md-margin-bottom-50">
						<h2 class="welcome-title">Chào mừng đến với SDCOMPUTER</h2>
						<div class="row margin-bottom-50">
							<div class="col-sm-4 md-margin-bottom-20">
								<div class="site-statistics">
									<span>20,039</span> <small>Sản phẩm</small>
								</div>
							</div>
							<div class="col-sm-4 md-margin-bottom-20">
								<div class="site-statistics">
									<span>54,283</span> <small>Đánh giá</small>
								</div>
							</div>
							<div class="col-sm-4">
								<div class="site-statistics">
									<span>376k</span> <small>Đơn hàng</small>
								</div>
							</div>
						</div>
						<div class="members-number">
							<h3>
								Tổng số <span class="shop-green">13,000</span> khách hàng hàng tháng
							</h3>
							<img class="img-responsive" src="${url}/img/map.png" alt="">
						</div>
					</div>

					<div class="col-md-5">
						<form id="sky-form4" class="log-reg-block sky-form"
							action="register" method="post">
							<h2>Đăng ký thành viên</h2>

							<div class="login-input reg-input">
								<section>
									<label class="input"> <input type="text"
										name="username" placeholder="Username" class="form-control">
									</label>
								</section>
								<section>
									<label class="input"> <input type="email" name="email"
										placeholder="Email" class="form-control">
									</label>
								</section>
								<section>
									<label class="input"> <input type="password"
										name="password" placeholder="Password" id="password"
										class="form-control">
									</label>
								</section>
								<section>
									<label class="input"> <input type="password"
										name="passwordConfirm" placeholder="Confirm password"
										class="form-control">
									</label>
								</section>
							</div>

							</label> <label class="checkbox margin-bottom-20"> <input
								type="checkbox" name="checkbox" /> <i></i> Tôi đồng ý với <a href="#">điều khoản &amp; và yêu cầu</a>
							</label>
							<button class="btn-u btn-u-sea-shop btn-block margin-bottom-20"
								type="submit">Đăng ký</button>
						</form>

						<div class="margin-bottom-20"></div>
						<p class="text-center">
							Bạn đã có tài khoản? <a
								href="${pageContext.request.contextPath }/login">Đăng nhập ngay</a>
						</p>
					</div>
				</div>
				<!--/end row-->
			</div>
			<!--/end container-->
		</div>
		<!--=== End Registre ===-->

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
	<script
		src="${url}/plugins/sky-forms-pro/skyforms/js/jquery.validate.min.js"></script>
	<script
		src="${url}/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<!-- JS Customization -->
	<script src="${url}/js/custom.js"></script>
	<!-- JS Page Level -->
	<script src="${url}/js/shop.app.js"></script>
	<script src="${url}/js/forms/page_registration.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			App.initScrollBar();
			Registration.initRegistration();
		});
	</script>

	<!--[if lt IE 9]>
    <script src="${url}/plugins/respond.js"></script>
    <script src="${url}/plugins/html5shiv.js"></script>
    <script src="${url}/js/plugins/placeholder-IE-fixes.js"></script>    
    <script src="${url}/plugins/sky-forms-pro/skyforms/js/sky-forms-ie8.js"></script>
<![endif]-->
	<!--[if lt IE 10]>
    <script src="${url}/plugins/sky-forms-pro/skyforms/js/jquery.placeholder.min.js"></script>
<![endif]-->

</body>

</body>
</html>