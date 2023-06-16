<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<div id="fh5co-product">
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-md-offset-1 animate-box">
					<div class="owl-carousel owl-carousel-fullwidth product-carousel">
						<div class="item">
							<div class="active text-center">
								<figure>
									<img src="images/product-single-1.jpg" alt="user">
								</figure>
							</div>
						</div>
						<div class="item">
							<div class="active text-center">
								<figure>
									<img src="images/product-single-2.jpg" alt="user">
								</figure>
							</div>
						</div>
						<div class="item">
							<div class="active text-center">
								<figure>
									<img src="images/product-single-3.jpg" alt="user">
								</figure>
							</div>
						</div>
						<div class="item">
							<div class="active text-center">
								<figure>
									<img src="images/product-single-4.jpg" alt="user">
								</figure>
							</div>
						</div>
						<div class="item">
							<div class="active text-center">
								<figure>
									<img src="images/product-single-5.jpg" alt="user">
								</figure>
							</div>
						</div>
					</div>
					<div class="row animate-box">
						<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
							<h2>${product.productTitle}</h2>
							<h5>${product.productWriter}</h5>
							<p>
								<form id="frm" method="post">
									<input type="hidden" id="productId" name="productId" value="${product.productId}"/>
									<c:if test="${name ne product.productWriter}">
										<form id="frm" method="post">
										<input type="hidden" id="productId" name="productId" value="${product.productId }">
										<c:choose>
											<c:when test="${heartVal eq 0 }">
												<input type="button" id="heart" class="btn btn-primary btn-outline btn-lg" value="찜하기" >
											</c:when>
											<c:otherwise>
												<input type="button" id="heart" class="btn btn-primary btn-outline btn-lg" value="찜취소" >
											</c:otherwise>
										</c:choose>
									  </form>
										<a href="#" class="btn btn-primary btn-outline btn-lg">신고 </a>
									</c:if>
									<c:if test="${name eq product.productWriter || grade eq 'A'}">
										<input type="submit" onclick="javascript: frm.action='productUpdateForm.do'" class="btn btn-primary btn-outline btn-lg" value="수정">
										<input type="submit" onclick="javascript: frm.action='productDelete.do'" class="btn btn-primary btn-outline btn-lg" value="삭제">
									</c:if>
									<c:if test="${name eq product.productWriter}">
										<input type="submit" onclick="javascript: frm.action='productPullUp.do'" class="btn btn-primary btn-outline btn-lg" value="끌올">
									</c:if>
								</form>						
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-10 col-md-offset-1">
					<div class="fh5co-tabs animate-box">
						<ul class="fh5co-tab-nav">
							<li class="active"><a href="#" data-tab="1"><span class="icon visible-xs"><i class="icon-file"></i></span><span class="hidden-xs">상품 소개</span></a></li>
							<li><a href="#" data-tab="2"><span class="icon visible-xs"><i class="icon-bar-graph"></i></span><span class="hidden-xs">댓글</span></a></li>
						</ul>

						<!-- Tabs -->
						<div class="fh5co-tab-content-wrap">

							<div class="fh5co-tab-content tab-content active" data-tab-content="1">
								<div class="col-md-10 col-md-offset-1">
									<span class="price">가격 : ${product.productPrice}</span>
									<h2>${product.productTitle}</h2>
									<div class="row">
										<div class="col-md-6">
											<p>${product.productSubject}</p>
										</div>
									</div>

								</div>
							</div>

							<div class="fh5co-tab-content tab-content" data-tab-content="2">
								<div class="col-md-10 col-md-offset-1">
									<h3>댓글 목록</h3>
									<div class="feed">
										<c:forEach items="${replyList}" var="replyList">
											<c:if test="${replyList.replySecret eq 'y'}">
												<c:choose>
													<c:when test="${name eq product.productWriter || name eq replyList.replyWriter || grade eq 'A'}">
														<div>
															<blockquote>
																<p>${replyList.replySubject}</p>
															</blockquote>
															<h3>&mdash; ${replyList.replyWriter}, ${replyList.replyWdate}</h3>
															<c:if test="${name eq replyList.replyWriter || grade eq 'A'}">
																<form id="editReply" method="post">
																	<input type="hidden" id="replyId" name="replyId" value="${replyList.replyId}" />
																	<button type="button" onclick="callFunction('E')" class="btn btn-primary btn-outline btn-lg">수정</button>
																	<button type="button" onclick="callFunction('D')" class="btn btn-primary btn-outline btn-lg">삭제</button>
																</form>
															</c:if>
														</div>
													</c:when>
													<c:otherwise>
														<div>
															<blockquote>
																<p>비밀 댓글은 게시글, 댓글 작성자와 관리자만 볼 수 있습니다.</p>
															</blockquote>
															<h3>&mdash; ${replyList.replyWdate}</h3>
														</div>
													</c:otherwise>
												</c:choose>
											</c:if>
											<c:if test="${replyList.replySecret eq 'n'}">
												<div>
													<blockquote>
														<p>${replyList.replySubject}</p>
													</blockquote>
													<h3>&mdash; ${replyList.replyWriter}, ${replyList.replyWdate}</h3>
													
													<c:if test="${name eq replyList.replyWriter || grade eq 'A'}">
														<form id="editReply" method="post">
															<input type="hidden" id="replyId" name="replyId" value="${replyList.replyId}" />
															<button type="button" onclick="callFunction('E')" class="btn btn-primary btn-outline btn-lg">수정</button>
															<button type="button" onclick="callFunction('D')" class="btn btn-primary btn-outline btn-lg">삭제</button>
														</form>
													</c:if>
												</div>
											</c:if>
										</c:forEach>
										<c:if test="${not empty id}">
											<form name="replyForm" action="replyInsert.do" method="post">
												<input type="hidden" id="productId" name="productId" value="${product.productId}" />
												<div>
													<label for="replyWriter">댓글 작성자</label><input type="text" id="replyWriter" name="replyWriter" value=${name} readonly="readonly" />
													<br>
													<label for="replySubject">댓글 내용</label><textarea rows="1" cols="100" id="replySubject" name="replySubject"></textarea>
													<br>
													<label for="replySecret">비밀 댓글</label>
													<input type="checkbox" id="replySecret" name="replySecret" />
												</div>
												<div>
													<button type="submit" class="btn btn-primary btn-outline btn-lg">댓글 작성</button>
												</div>
											</form>
										</c:if>
									</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
	<script type="text/javascript">	    
	    let he = document.getElementById("heart");
	   	he.addEventListener("click", clickHeart);
		
		function clickHeart() {
			let frm = document.getElementById("frm");
		    if(he.value == "찜하기") {
				he.value = "찜취소";
				frm.action="addHeart.do";
		    } else {
		    	he.value ="찜하기";
		    	frm.action="deleteHeart.do";
		    }
		    frm.submit();
		}
		
  		function callFunction(str) {
			let frm = document.getElementById("editReply");
			if (str == 'E')
				frm.action = "replyUpdateForm.do";
			else
				if (confirm("정말 삭제 하시겠습니까?"))
					frm.action = "replyDelete.do";
				else
					return false;
			frm.submit();
		}
		
		
	</script>

</body>
</html>