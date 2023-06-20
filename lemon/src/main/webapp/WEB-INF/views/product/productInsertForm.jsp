<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
					<h3>레몬에서 판매하기</h3>
					<form action="productInsert.do" method="post"
						enctype="multipart/form-data">
						<div class="row form-group">
							<div class="col-md-6">
								<!-- <label for="fname">First Name</label> -->
								<span>* 상품 분류 <select id="productCategory"
									name="productCategory" style="margin-right: 50px;">
										<option value="패션">패션</option>
										<option value="식품">식품</option>
										<option value="리빙">리빙</option>
										<option value="기타">기타</option>
								</select></span>
							</div>
							<div class="col-md-6">
								<!-- <label for="lname">Last Name</label> -->
								<span>* 거래유형 선택 <select id="productInfo"
									name="productInfo">
										<option value="삽니다">삽니다</option>
										<option value="팝니다">팝니다</option>
								</select></span>
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<!-- <label for="email">Email</label> -->
								<input type="text" id="productTitle" name="productTitle"
									required="required" class="form-control" placeholder="제목"
									style="width: 844px;">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<!-- <label for="subject">Subject</label> -->
								<span style="margin-right: 500px;">* 상품 가격 <input
									type="number" id="productPrice" name="productPrice"
									required="required"></span>
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<!-- <label for="message">Message</label> -->
								<textarea id="productSubject" name="productSubject"
									required="required"  rows=10 cols=60 wrap=on class="form-control"
									placeholder="내용 작성" style="width: 844px;"></textarea>
								<input type="hidden" id="productWriter" name="productWriter"
									value=${name }>
							</div>
						</div>
						
						
						<div class="form-group">
							<input type="file" id="pfile" name="pfile" accept="image/*">
							
<%-- 								<c:if test="${pfile eq null }"> --%>
<!-- 								< -->
<%-- 								</c:if> --%>
							
							
							<input type="submit" value="작성하기" class=" btn-primary" style="">
						</div>

					</form>
				</div>
			</div>

		</div>
	</div>

</body>
</html>