<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <c:url value="/view/admin/static" var="url"></c:url>
		<nav class="navbar-default navbar-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">
					<li class="text-center"><img src="${url}/img/find_user.png"
						class="user-image img-responsive" /></li>


					<li><a class="active-menu" href="#"><i
							class="fa fa-dashboard fa-3x"></i> Dashboard</a></li>
					<li><a href="${pageContext.request.contextPath }/admin/product/list"><i class="fa fa-desktop fa-3x"></i>
							Product Management</a></li>
					<li><a href="${pageContext.request.contextPath }/admin/user/list"><i class="fa fa-qrcode fa-3x"></i>
							USER Management</a></li>
					<li><a href="${pageContext.request.contextPath }/admin/order/list"><i
							class="fa fa-bar-chart-o fa-3x"></i> Order Management</a></li>
					<li><a href="table.html"><i class="fa fa-table fa-3x"></i>
							Table Examples</a></li>
					<li><a href="form.html"><i class="fa fa-edit fa-3x"></i>
							Forms </a></li>


					<li><a href="#"><i class="fa fa-sitemap fa-3x"></i>
							Multi-Level Dropdown<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="#">Second Level Link</a></li>
							<li><a href="#">Second Level Link</a></li>
							<li><a href="#">Second Level Link<span class="fa arrow"></span></a>
								<ul class="nav nav-third-level">
									<li><a href="#">Third Level Link</a></li>
									<li><a href="#">Third Level Link</a></li>
									<li><a href="#">Third Level Link</a></li>

								</ul></li>
						</ul></li>
					<li><a href="blank.html"><i class="fa fa-square-o fa-3x"></i>
							Blank Page</a></li>
				</ul>

			</div>

		</nav>