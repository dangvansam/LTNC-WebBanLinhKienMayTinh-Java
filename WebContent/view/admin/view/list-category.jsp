<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<c:url value="/view/admin/static" var="url"></c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Category Management</title>
<!-- BOOTSTRAP STYLES-->
<link href="${url}/css/bootstrap.css" rel="stylesheet" />
<!-- FONTAWESOME STYLES-->
<link href="${url}/css/font-awesome.css" rel="stylesheet" />
<!-- MORRIS CHART STYLES-->

<!-- CUSTOM STYLES-->
<link href="${url}/css/custom.css" rel="stylesheet" />
<!-- GOOGLE FONTS-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<!-- TABLE STYLES-->
<link href="${url}/js/dataTables/dataTables.bootstrap.css"
	rel="stylesheet" />
</head>
<body>
	<div id="wrapper">

		<jsp:include page="/view/admin/view/nav-bar.jsp"></jsp:include>

		<!-- /. NAV TOP  -->
		<jsp:include page="/view/admin/view/slide-bar.jsp"></jsp:include>
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h2>All Categories</h2>
						<h5>You can management category in here</h5>

					</div>
				</div>
				<!-- /. ROW  -->
				<hr />

				<div class="row">
				<div>
					<button class="btn-primary" style="width: 260px;border: none;border-radius: 3px;height: 30px;margin-bottom: 20px;"
					 onclick="window.location.href='<c:url value='/admin/category/add'/>';">New Category</button>
				</div>
					<div class="col-md-12">
						<!-- Advanced Tables -->
						<div class="panel panel-default">
							<div class="panel-heading">Data Tables</div>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover"
										id="dataTables-example">
										<thead>
											<tr>
												<th>ID </th>
												<th>Name</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody>
										<c:forEach items="${catList}" var="cat" >
											<tr class="odd gradeX">
												<td>${cat.id }</td>
												<td>${cat.name }</td>
												<td><a
														href="<c:url value='/category/detail?id=${cat.id }'/>"
														class="center">Detail</a> | <a
														href="<c:url value='/admin/category/edit?id=${cat.id }'/>"
														class="center">Edit</a>
														| <a
														href="<c:url value='/admin/category/delete?id=${cat.id }'/>"
														class="center">Delete</a></td>
												
											</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>

							</div>
						</div>
						<!--End Advanced Tables -->
					</div>
				</div>

			</div>

		</div>
		<!-- /. PAGE INNER  -->
	</div>
	<!-- /. PAGE WRAPPER  -->
	<!-- /. WRAPPER  -->
	<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
	<!-- JQUERY SCRIPTS -->
	<script src="${url}/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS -->
	<script src="${url}/js/bootstrap.min.js"></script>
	<!-- METISMENU SCRIPTS -->
	<script src="${url}/js/jquery.metisMenu.js"></script>
	<!-- DATA TABLE SCRIPTS -->
	<script src="${url}/js/dataTables/jquery.dataTables.js"></script>
	<script src="${url}/js/dataTables/dataTables.bootstrap.js"></script>
	<script>
		$(document).ready(function() {
			$('#dataTables-example').dataTable();
		});
	</script>
	<!-- CUSTOM SCRIPTS -->
	<script src="${url}/js/custom.js"></script>

</body>
</html>