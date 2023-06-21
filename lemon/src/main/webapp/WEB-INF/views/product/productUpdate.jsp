<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="fh5co-contact">
		<div class="container">
			<div class="row">
				<div class=" animate-box" align="center">
					<h3>글 수정하기</h3>
					<form id="productUpdate" action="productUpdate.do" method="post"
						enctype="multipart/form-data">
						<div class="row form-group">
							<div class="col-md-6">
								<!-- <label for="fname">First Name</label> -->
								<span>* 상품 분류 <select id="productCategory"
									name="productCategory" style="margin-right: 50px;">
										<option value="패션" ${product.productCategory == '패션' ? 'selected="selected"' : ''}>패션</option>
										<option value="식품" ${product.productCategory == '식품' ? 'selected="selected"' : ''}>식품</option>
										<option value="리빙" ${product.productCategory == '리빙' ? 'selected="selected"' : ''}>리빙</option>
										<option value="기타" ${product.productCategory == '기타' ? 'selected="selected"' : ''}>기타</option>
								</select></span>
							</div>
							<div class="col-md-6">
								<!-- <label for="lname">Last Name</label> -->
								<span>* 거래유형 선택 <select id="productInfo"
									name="productInfo" >
										<option value="삽니다" ${product.productInfo == '삽니다' ? 'selected="selected"' : ''}>삽니다</option>
										<option value="팝니다" ${product.productInfo == '팝니다' ? 'selected="selected"' : ''}>팝니다</option>
								</select></span>
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<!-- <label for="email">Email</label> -->
								<input type="text" id="productTitle" name="productTitle"
									required="required" class="form-control" placeholder="제목"
									value="${product.productTitle}" style="width: 844px;">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<!-- <label for="subject">Subject</label> -->
								<span style="margin-right: 500px;">* 상품 가격 <input
									type="number" id="productPrice" name="productPrice" value="${product.productPrice}"></span>
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<!-- <label for="message">Message</label> -->
								<textarea id="productSubject" name="productSubject"
									required="required" cols="30" rows="10" class="form-control"
									placeholder="내용 작성" style="width: 844px;">${product.productSubject}</textarea>
								<input type="hidden" id="productWriter" name="productWriter"
									value="${product.productWriter}">
									<input type="hidden" id="productId" name="productId" value="${product.productId}">
							</div>
						</div>
						<div class="form-group">
							<p>기존 파일 : &nbsp;&nbsp; ${product.productImg1}</p>
							<input type="file" id="pfile" name="pfile" accept="image/*">
							<input type="submit" value="수정하기" class=" btn-primary" >
						</div>

					</form>
				</div>
			</div>

		</div>
	</div>
</body>
</html>