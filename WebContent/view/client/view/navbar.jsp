<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<c:url value="/view/client/static" var="url"></c:url>

<div class="navbar navbar-default mega-menu" role="navigation">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-responsive-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<div style="margin-top: 20px;">
			<h1>SD<span class="shop-green">COMPUTER</span></h1>
			</div>
			<ahref="${pageContext.request.contextPath }"></a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse navbar-responsive-collapse">
			<!-- Shopping Cart -->
			<jsp:include page="/view/client/view/cart.jsp"></jsp:include>
			<!-- End Shopping Cart -->

			<!-- Nav Menu -->
			<ul class="nav navbar-nav">
				<!-- Pages -->
				<li class="dropdown active"><a href="javascript:void(0);"
					class="dropdown-toggle" data-hover="dropdown"
					data-toggle="dropdown"> Pages </a>
					<ul class="dropdown-menu">
						<li><a href="${pageContext.request.contextPath }">Index</a></li>
						<li><a
							href="${pageContext.request.contextPath }/product/list">Product
								Page</a></li>
						<li><a
							href="${pageContext.request.contextPath }/product/list">Build
								PC</a></li>
						<li><a href="${pageContext.request.contextPath }/member/cart">Cart</a></li>
						<li><a
							href="${pageContext.request.contextPath }/member/order">Checkout</a></li>
						<li><a href="${pageContext.request.contextPath }/login">Login</a></li>
						<li class="active"><a
							href="${pageContext.request.contextPath }/register">Register</a></li>
					</ul></li>
				<!-- End Pages -->

				<!-- Products -->
				<li class="dropdown"><a href="javascript:void(0);"
					class="dropdown-toggle" data-hover="dropdown"
					data-toggle="dropdown"> Build PC </a>
					<ul class="dropdown-menu">
						<li class="dropdown-submenu"><a href="javascript:void(0);">PC
								Gaming</a>
							<ul class="dropdown-menu">
								<li><a href="#">CPU Intel</a>
									<ul class="list-unstyled style-list">
										<li><a href="#">i3</a></li>
										<li><a href="#">i5</a></li>
										<li><a href="#">i7</a></li>
										<li><a href="#">i9</a></li>
									</ul></li>
								<li><a href="#">CPU AMD</a>
									<ul class="list-unstyled style-list">
										<li><a href="#">AMD Ryzen 3</a></li>
										<li><a href="#">AMD Ryzen 5</a></li>
										<li><a href="#">AMD Ryzen 7</a></li>
									</ul></li>
							</ul></li>
						<li class="dropdown-submenu"><a href="javascript:void(0);">Office
								Computer </a></li>
					</ul></li>
				<!-- End Promotion -->

				<!-- Build Pc -->
				<li class="dropdown mega-menu-fullwidth"><a
					href="javascript:void(0);" class="dropdown-toggle"
					data-hover="dropdown" data-toggle="dropdown"> Compare </a>
					<ul class="dropdown-menu">
						<li><a href="#">Laptop</a></li>
						<li><a href="#">PC</a></li>
						<li><a href="#">Gear</a></li>
						<li><a href="#">Monitor</a></li>
						<li><a href="#">Other</a></li>
					</ul> <!--/end dropdown-menu--></li>
				<!-- End Gifts -->

				<!-- Compare -->
				<li class="dropdown mega-menu-fullwidth"><a
					href="javascript:void(0);" class="dropdown-toggle"
					data-hover="dropdown" data-toggle="dropdown"> Products </a>
					<ul class="dropdown-menu">
						<li>
							<div class="mega-menu-content">
								<div class="container">
									<div class="row">
										<div class="col-md-2 col-sm-6">
											<h3 class="mega-menu-heading">Laptop</h3>
											<ul class="list-unstyled style-list">
												<li><a href="#">Asus</a></li>
												<li><a href="#">Acer</a></li>
												<li><a href="#">Dell</a></li>
												<li><a href="#">Lenovo</a></li>
												<li><a href="#">Mac</a> <span
													class="label label-danger-shop">New</span></li>
												<li><a href="#">HP</a></li>
												<li><a href="#">Microsoft Surface</a></li>
											</ul>
											<h3 class="mega-menu-heading">PC</h3>
											<ul class="list-unstyled style-list">
												<li><a href="#">Gaming</a></li>
												<li><a href="#">Office</a></li>
												<li><a href="#">i3</a></li>
												<li><a href="#">i5</a></li>
												<li><a href="#">i7</a></li>
												<li><a href="#">i9</a></li>
												<li><a href="#">AMD Ryzen 3</a></li>
												<li><a href="#">AMD Ryzen 5</a></li>
												<li><a href="#">AMD Ryzen 7</a></li>
											</ul>
										</div>

										<div class="col-md-2 col-sm-6">
											<h3 class="mega-menu-heading">Gears</h3>
											<ul class="list-unstyled style-list">
												<li><a href="#">Mouse</a></li>
												<li><a href="#">Key Board</a></li>
												<li><a href="#">Radiator fan</a></li>
												<li><a href="#">VGA-Card</a></li>
												<li><a href="#">Ram</a></li>
												<li><a href="#">Main Board</a></li>
												<li><a href="#">SSD</a></li>
												<li><a href="#">HDD</a></li>
												<li><a href="#">CPU</a></li>
												<li><a href="#">PSU</a></li>
											</ul>
											<h3 class="mega-menu-heading">Monitor</h3>
											<ul class="list-unstyled style-list">
												<li><a href="#">SamSung</a></li>
												<li><a href="#">LG</a></li>
												<li><a href="#">HP</a></li>
												<li><a href="#">Dell</a></li>
												<li><a href="#">Acer</a></li>
												<li><a href="#">Asus</a></li>
											</ul>
										</div>
										<!--/end row-->
									</div>
									<!--/end container-->
								</div>
								<!--/end mega menu content-->
						</li>
					</ul> <!--/end dropdown-menu--></li>
				<!-- End Books -->

				<!-- My cart -->
				<li class="dropdown"><a href="${pageContext.request.contextPath }/member/cart">My Cart</a></li>
				<!-- End Clothes -->

				<!-- Main Demo -->
				<!--                         <li><a href="${pageContext.request.contextPath }">Main Demo</a></li> -->
				<!-- Main Demo -->
			</ul>
			<!-- End Nav Menu -->
		</div>
	</div>
</div>
