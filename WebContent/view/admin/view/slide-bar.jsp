<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <c:url value="/view/admin/static" var="url"></c:url>
		<nav class="navbar-default navbar-side" role="navigation" style="width: 200px; background: dimgray;">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">
					<li><a href="${pageContext.request.contextPath }/admin/user/list" style="padding-left: 20px;"><i class="fa fa-user"></i>User</a></li>
					<li><a href="${pageContext.request.contextPath }/admin/product/list" style="padding-left: 20px;"><i class="fa fa-desktop"></i>Product</a></li>
					<li><a href="${pageContext.request.contextPath }/admin/category/list" style="padding-left: 20px;"><i class="fa fa-archive"></i>Category</a></li>
					<li><a href="${pageContext.request.contextPath }/admin/order/list" style="padding-left: 20px;"><i class="fa fa-qrcode" ></i>Oder</a></li>
				</ul>

			</div>

		</nav>