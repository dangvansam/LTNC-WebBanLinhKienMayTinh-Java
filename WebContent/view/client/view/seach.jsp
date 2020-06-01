<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<div class="col-md-3 filter-by-block md-margin-bottom-60">
					<h1>Filter By</h1>
					<div class="panel-group" id="accordion">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h2 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseOne">Tìm theo tên<i class="fa fa-angle-down"></i>
									</a>
								</h2>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">
									<ul class="list-unstyled checkbox-list">				
										<form action="${pageContext.request.contextPath }/product/seach" method="get">
											<input type="text" name="name" />
											<input type="submit" value="Tìm kiếm" >
										</form>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!--/end panel group-->

					<div class="panel-group" id="accordion-v2">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h2 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion-v2"
										href="#collapseTwo">Loại sản phẩm<i
										class="fa fa-angle-down"></i>
									</a>
								</h2>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse in">
								<div class="panel-body">
									<ul class="list-unstyled checkbox-list">
										<a href="${pageContext.request.contextPath }/product/category?cate_id=1" >RAM</a>
										<br>
										<a href="${pageContext.request.contextPath }/product/category?cate_id=2" >VGA</a>
										<br>
										<a href="${pageContext.request.contextPath }/product/category?cate_id=3" >HDD</a>
										<br>
										<a href="${pageContext.request.contextPath }/product/category?cate_id=4" >SSD</a>
										<br>	
										<a href="${pageContext.request.contextPath }/product/category?cate_id=5" >Bàn phím</a>
										<br>
										<a href="${pageContext.request.contextPath }/product/category?cate_id=6" >Chuột</a>
										<br>
										<a href="${pageContext.request.contextPath }/product/category?cate_id=7" >Màn hình</a>
										<br>
										<a href="${pageContext.request.contextPath }/product/category?cate_id=8" >CPU</a>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!--/end panel group-->

					<div class="panel-group margin-bottom-30" id="accordion-v6">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h2 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion-v6"
										href="#collapseSix"> Rating <i class="fa fa-angle-down"></i>
									</a>
								</h2>
							</div>
							<div id="collapseSix" class="panel-collapse collapse in">
								<div class="panel-body">
									<div class="stars-ratings stars-ratings-label">
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
								</div>
							</div>
						</div>
					</div>
					<!--/end panel group-->
					<button type="button"
						class="btn-u btn-brd btn-brd-hover btn-u-lg btn-u-sea-shop btn-block">Reset</button>
				</div>