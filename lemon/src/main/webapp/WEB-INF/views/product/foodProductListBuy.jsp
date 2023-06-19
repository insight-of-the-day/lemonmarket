<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Shop Homepage - Start Bootstrap Template</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!--         Bootstrap icons -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
</head>
<body>
	<!-- 	<!-- Section-->
	-->
	<!-- 	<section class="py-5"> -->
	<!-- 		<div class="container px-4 px-lg-5 mt-5"> -->
	<!-- 			<div -->
	<!-- 				class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center"> -->
	<!-- 				<div class="col mb-5"> -->
	<!-- 					<div class="card h-100"> -->
	<!-- 						Product image -->
	<!-- 						<img class="card-img-top" -->
	<!-- 							src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." /> -->
	<!-- 						Product details -->
	<!-- 						<div class="card-body p-4"> -->
	<!-- 							<div class="text-center"> -->
	<!-- 								Product name -->
	<!-- 								<h5 class="fw-bolder">Fancy Product</h5> -->
	<!-- 								Product price -->
	<!-- 								$40.00 - $80.00 -->
	<!-- 							</div> -->
	<!-- 						</div> -->
	<!-- 						Product actions -->
	<!-- 						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent"> -->
	<!-- 							<div class="text-center"> -->
	<!-- 								<a class="btn btn-outline-dark mt-auto" href="#">View -->
	<!-- 									options</a> -->
	<!-- 							</div> -->
	<!-- 						</div> -->
	<!-- 					</div> -->
	<!-- 				</div> -->
	<!-- 				<div class="col mb-5"> -->
	<!-- 					<div class="card h-100"> -->
	<!-- 						Sale badge -->
	<!-- 						<div class="badge bg-dark text-white position-absolute" -->
	<!-- 							style="top: 0.5rem; right: 0.5rem">Sale</div> -->
	<!-- 						Product image -->
	<!-- 						<img class="card-img-top" -->
	<!-- 							src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." /> -->
	<!-- 						Product details -->
	<!-- 						<div class="card-body p-4"> -->
	<!-- 							<div class="text-center"> -->
	<!-- 								Product name -->
	<!-- 								<h5 class="fw-bolder">Special Item</h5> -->
	<!-- 								Product reviews -->
	<!-- 								<div -->
	<!-- 									class="d-flex justify-content-center small text-warning mb-2"> -->
	<!-- 									<div class="bi-star-fill"></div> -->
	<!-- 									<div class="bi-star-fill"></div> -->
	<!-- 									<div class="bi-star-fill"></div> -->
	<!-- 									<div class="bi-star-fill"></div> -->
	<!-- 									<div class="bi-star-fill"></div> -->
	<!-- 								</div> -->
	<!-- 								Product price -->
	<!-- 								<span class="text-muted text-decoration-line-through">$20.00</span> -->
	<!-- 								$18.00 -->
	<!-- 							</div> -->
	<!-- 						</div> -->
	<!-- 						Product actions -->
	<!-- 						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent"> -->
	<!-- 							<div class="text-center"> -->
	<!-- 								<a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a> -->
	<!-- 							</div> -->
	<!-- 						</div> -->
	<!-- 					</div> -->
	<!-- 				</div> -->
	<!-- 				<div class="col mb-5"> -->
	<!-- 					<div class="card h-100"> -->
	<!-- 						Sale badge -->
	<!-- 						<div class="badge bg-dark text-white position-absolute" -->
	<!-- 							style="top: 0.5rem; right: 0.5rem">Sale</div> -->
	<!-- 						Product image -->
	<!-- 						<img class="card-img-top" -->
	<!-- 							src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." /> -->
	<!-- 						Product details -->
	<!-- 						<div class="card-body p-4"> -->
	<!-- 							<div class="text-center"> -->
	<!-- 								Product name -->
	<!-- 								<h5 class="fw-bolder">Sale Item</h5> -->
	<!-- 								Product price -->
	<!-- 								<span class="text-muted text-decoration-line-through">$50.00</span> -->
	<!-- 								$25.00 -->
	<!-- 							</div> -->
	<!-- 						</div> -->
	<!-- 						Product actions -->
	<!-- 						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent"> -->
	<!-- 							<div class="text-center"> -->
	<!-- 								<a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a> -->
	<!-- 							</div> -->
	<!-- 						</div> -->
	<!-- 					</div> -->
	<!-- 				</div> -->
	<!-- 				<div class="col mb-5"> -->
	<!-- 					<div class="card h-100"> -->
	<!-- 						Product image -->
	<!-- 						<img class="card-img-top" -->
	<!-- 							src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." /> -->
	<!-- 						Product details -->
	<!-- 						<div class="card-body p-4"> -->
	<!-- 							<div class="text-center"> -->
	<!-- 								Product name -->
	<!-- 								<h5 class="fw-bolder">Popular Item</h5> -->
	<!-- 								Product reviews -->
	<!-- 								<div -->
	<!-- 									class="d-flex justify-content-center small text-warning mb-2"> -->
	<!-- 									<div class="bi-star-fill"></div> -->
	<!-- 									<div class="bi-star-fill"></div> -->
	<!-- 									<div class="bi-star-fill"></div> -->
	<!-- 									<div class="bi-star-fill"></div> -->
	<!-- 									<div class="bi-star-fill"></div> -->
	<!-- 								</div> -->
	<!-- 								Product price -->
	<!-- 								$40.00 -->
	<!-- 							</div> -->
	<!-- 						</div> -->
	<!-- 						Product actions -->
	<!-- 						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent"> -->
	<!-- 							<div class="text-center"> -->
	<!-- 								<a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a> -->
	<!-- 							</div> -->
	<!-- 						</div> -->
	<!-- 					</div> -->
	<!-- 				</div> -->
	<!-- 				<div class="col mb-5"> -->
	<!-- 					<div class="card h-100"> -->
	<!-- 						Sale badge -->
	<!-- 						<div class="badge bg-dark text-white position-absolute" -->
	<!-- 							style="top: 0.5rem; right: 0.5rem">Sale</div> -->
	<!-- 						Product image -->
	<!-- 						<img class="card-img-top" -->
	<!-- 							src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." /> -->
	<!-- 						Product details -->
	<!-- 						<div class="card-body p-4"> -->
	<!-- 							<div class="text-center"> -->
	<!-- 								Product name -->
	<!-- 								<h5 class="fw-bolder">Sale Item</h5> -->
	<!-- 								Product price -->
	<!-- 								<span class="text-muted text-decoration-line-through">$50.00</span> -->
	<!-- 								$25.00 -->
	<!-- 							</div> -->
	<!-- 						</div> -->
	<!-- 						Product actions -->
	<!-- 						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent"> -->
	<!-- 							<div class="text-center"> -->
	<!-- 								<a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a> -->
	<!-- 							</div> -->
	<!-- 						</div> -->
	<!-- 					</div> -->
	<!-- 				</div> -->
	<!-- 				<div class="col mb-5"> -->
	<!-- 					<div class="card h-100"> -->
	<!-- 						Product image -->
	<!-- 						<img class="card-img-top" -->
	<!-- 							src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." /> -->
	<!-- 						Product details -->
	<!-- 						<div class="card-body p-4"> -->
	<!-- 							<div class="text-center"> -->
	<!-- 								Product name -->
	<!-- 								<h5 class="fw-bolder">Fancy Product</h5> -->
	<!-- 								Product price -->
	<!-- 								$120.00 - $280.00 -->
	<!-- 							</div> -->
	<!-- 						</div> -->
	<!-- 						Product actions -->
	<!-- 						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent"> -->
	<!-- 							<div class="text-center"> -->
	<!-- 								<a class="btn btn-outline-dark mt-auto" href="#">View -->
	<!-- 									options</a> -->
	<!-- 							</div> -->
	<!-- 						</div> -->
	<!-- 					</div> -->
	<!-- 				</div> -->
	<!-- 				<div class="col mb-5"> -->
	<!-- 					<div class="card h-100"> -->
	<!-- 						Sale badge -->
	<!-- 						<div class="badge bg-dark text-white position-absolute" -->
	<!-- 							style="top: 0.5rem; right: 0.5rem">Sale</div> -->
	<!-- 						Product image -->
	<!-- 						<img class="card-img-top" -->
	<!-- 							src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." /> -->
	<!-- 						Product details -->
	<!-- 						<div class="card-body p-4"> -->
	<!-- 							<div class="text-center"> -->
	<!-- 								Product name -->
	<!-- 								<h5 class="fw-bolder">Special Item</h5> -->
	<!-- 								Product reviews -->
	<!-- 								<div -->
	<!-- 									class="d-flex justify-content-center small text-warning mb-2"> -->
	<!-- 									<div class="bi-star-fill"></div> -->
	<!-- 									<div class="bi-star-fill"></div> -->
	<!-- 									<div class="bi-star-fill"></div> -->
	<!-- 									<div class="bi-star-fill"></div> -->
	<!-- 									<div class="bi-star-fill"></div> -->
	<!-- 								</div> -->
	<!-- 								Product price -->
	<!-- 								<span class="text-muted text-decoration-line-through">$20.00</span> -->
	<!-- 								$18.00 -->
	<!-- 							</div> -->
	<!-- 						</div> -->
	<!-- 						Product actions -->
	<!-- 						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent"> -->
	<!-- 							<div class="text-center"> -->
	<!-- 								<a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a> -->
	<!-- 							</div> -->
	<!-- 						</div> -->
	<!-- 					</div> -->
	<!-- 				</div> -->
	<!-- 				<div class="col mb-5"> -->
	<!-- 					<div class="card h-100"> -->
	<!-- 						Product image -->
	<!-- 						<img class="card-img-top" -->
	<!-- 							src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." /> -->
	<!-- 						Product details -->
	<!-- 						<div class="card-body p-4"> -->
	<!-- 							<div class="text-center"> -->
	<!-- 								Product name -->
	<!-- 								<h5 class="fw-bolder">Popular Item</h5> -->
	<!-- 								Product reviews -->
	<!-- 								<div -->
	<!-- 									class="d-flex justify-content-center small text-warning mb-2"> -->
	<!-- 									<div class="bi-star-fill"></div> -->
	<!-- 									<div class="bi-star-fill"></div> -->
	<!-- 									<div class="bi-star-fill"></div> -->
	<!-- 									<div class="bi-star-fill"></div> -->
	<!-- 									<div class="bi-star-fill"></div> -->
	<!-- 								</div> -->
	<!-- 								Product price -->
	<!-- 								$40.00 -->
	<!-- 							</div> -->
	<!-- 						</div> -->
	<!-- 						Product actions -->
	<!-- 						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent"> -->
	<!-- 							<div class="text-center"> -->
	<!-- 								<a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a> -->
	<!-- 							</div> -->
	<!-- 						</div> -->
	<!-- 					</div> -->
	<!-- 				</div> -->
	<!-- 			</div> -->
	<!-- 		</div> -->
	<!-- 	</section> -->




	<div id="fh5co-product">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
					<span>LEMON MARKET</span>
					<h2>식품 구매</h2>
					<p>먹을 수 있는 만큼만 구매하는 멋진 레몬인들의 장</p>
				</div>
			</div>
			<c:forEach items="${products}" var="p">
				<!-- 				<div class="product"> -->
				<div onclick="productChoice(${p.productId})">
					<!-- Section-->
					<section class="py-5">
						<div class="container px-4 px-lg-5 mt-5">
							<div
								class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
								<div class="col mb-5">
									<div class="card h-100">
										<!-- Product image-->
										<img class="card-img-top" src="attach/${p.productImg}"
											alt="..." />
										<!-- Product details-->
										<div class="card-body p-4">
											<div class="text-center">
												<!-- Product name-->
												<h5 class="fw-bolder">${p.productTitle }</h5>
												<!-- Product price-->
												${p.productPrice }
											</div>
										</div>
										<!-- Product actions-->
										<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
											<div class="text-center">
												<a class="btn btn-outline-dark mt-auto" href="#">상세보기</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</section>
				</div>
				<!-- 				<div class="desc"> -->
				<!-- 					<h3> -->
				<%-- 						<a onclick="productChoice(${p.productId})">${p.productTitle}</a> --%>
				<!-- 					</h3> -->
				<%-- 					<span class="price">${p.productPrice}</span> --%>
				<!-- 				</div> -->
			</c:forEach>
		</div>

		<br>
		<div align="center">
			<c:if test="${not empty id }">
				<p>
					<a href="productInsertForm.do"
						class="btn btn-primary btn-outline btn-lg">글 작성</a>
				</p>
			</c:if>
		</div>
		<div>
			<form id="frm" action="productSelect.do" method="post">
				<input type="hidden" id="productId" name="productId">
			</form>
		</div>
	</div>


	<script type="text/javascript"> 
			function productChoice(id) {
			let frm = document.getElementById("frm");
			frm.productId.value = id;
			frm.submit();
			}
  		</script>

	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>

</body>
</html>