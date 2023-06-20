<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body
>		<div id="fh5co-product">
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-md-offset-1 animate-box">
					<div class="owl-carousel owl-carousel-fullwidth product-carousel">
						<div class="item">
							<div class="active text-center">
								<figure>
									<img src="attach/${product.productImg}" alt="user">
								</figure>
							</div>
						</div>
						<div class="item">
							<div class="active text-center">
								<figure>
									<img src="attach/${product.productImg}" alt="user">
								</figure>
							</div>
						</div>
						<div class="item">
							<div class="active text-center">
								<figure>
									<img src="attach/${product.productImg}" alt="user">
								</figure>
							</div>
						</div>
						<div class="item">
							<div class="active text-center">
								<figure>
									<img src="attach/${product.productImg}" alt="user">
								</figure>
							</div>
						</div>
						<div class="item">
							<div class="active text-center">
								<figure>
									<img src="attach/${product.productImg}" alt="user">
								</figure>
							</div>
						</div>
					</div>
					<div class="row animate-box">
						<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
							<h2>${product.productTitle}</h2>
							<h3>거래 상태 : ${product.productState}</h3>
							<h5>${product.productWriter}</h5>
							<p>
								<form id="frm" method="post">
									<input type="hidden" id="productId" name="productId" value="${product.productId}"/>
									<input type="hidden" id="productWdate" name="productWdate" value="${product.productWdate}"/>
									<c:if test="${name ne product.productWriter}">
										<c:if test="${not empty id}">
											<c:choose>						
												<c:when test="${heartVal eq 0 }">
													<input type="button" id="heart" class="btn btn-primary btn-outline btn-lg" value="찜하기" >
												</c:when>
												<c:otherwise>
													<input type="button" id="heart" class="btn btn-primary btn-outline btn-lg" value="찜취소" >
												</c:otherwise>
											</c:choose>
										</c:if>
										<button type="button" onclick="productReport()" class="btn btn-primary btn-outline btn-lg">신고</button>
									</c:if>
									<c:if test="${name eq product.productWriter || grade eq 'A'}">
										<input type="submit" onclick="javascript: frm.action='productUpdateForm.do'" class="btn btn-primary btn-outline btn-lg" value="수정">
										<input type="submit" onclick="javascript: frm.action='productDelete.do'" class="btn btn-primary btn-outline btn-lg" value="삭제">
									</c:if>
									<c:if test="${name eq product.productWriter}">
										<input type="button" onclick="pullUpCheck()" class="btn btn-primary btn-outline btn-lg" value="끌올">
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
									<form id="replyForm" method="post">
										<input type="hidden" id="productId" name="productId" value="${product.productId}" />
										<input type="hidden" id="replyId" name="replyId">
										<input type="hidden" id="productBuyer" name="productBuyer">
										<input type="hidden" id="productKeepGoing" name="productKeepGoing">
										<c:forEach items="${replyList}" var="replyList">
										<c:choose>
											<c:when test="${(replyList.replySecret eq 'n') || ((replyList.replySecret eq 'y') && (name eq product.productWriter || name eq replyList.replyWriter || grade eq 'A'))}">
												<div>
													<blockquote>
														<p>${replyList.replySubject}</p>
													</blockquote>
													<h3>&mdash; ${replyList.replyWriter}, ${replyList.replyWdate}</h3>
													<c:if test="${name eq replyList.replyWriter || grade eq 'A'}">
															<button type="button" onclick="replyUpdate(${replyList.replyId})" class="btn btn-primary btn-outline btn-lg">수정</button>
															<button type="button" onclick="replyDelete(${replyList.replyId})" class="btn btn-primary btn-outline btn-lg">삭제</button>
													</c:if>
													<c:if test="${name eq product.productWriter && name ne replyList.replyWriter}">
															<c:choose>
																<c:when test="${product.productState eq '거래중'}">
																	<button type="button" onclick="sellCheck('${replyList.replyWriter}')" class="btn btn-primary btn-outline btn-lg">거래완료</button>
																	<button type="button" onclick="sellCancel('${replyList.replyWriter}')" class="btn btn-primary btn-outline btn-lg">거래취소</button>
																</c:when>
																<c:when test="${product.productState eq '거래전'}">
																	<button type="button" onclick="sellCheck('${replyList.replyWriter}')" class="btn btn-primary btn-outline btn-lg">거래하기</button>
																</c:when>
															</c:choose>
													</c:if>
													<c:if test="${not empty id && name ne replyList.replyWriter}">
														<button type="button" onclick="replyReport('${replyList.replyId}')" class="btn btn-primary btn-outline btn-lg">신고</button>
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
										</c:forEach>
										</form>
										<c:if test="${not empty id}">
											<form name="replyInsertForm" action="replyInsert.do" method="post">
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
	    let heart = document.getElementById("heart");
//	   	heart.addEventListener("click", clickHeart);
		heart.addEventListener("click", heartCheck);
		
// 		function clickHeart() {
// 			let frm = document.getElementById("frm");
// 		    if(heart.value == "찜하기") {
// 				heart.value = "찜취소";
// 				frm.action="addHeart.do";
// 		    } else {
// 		    	heart.value ="찜하기";
// 		    	frm.action="deleteHeart.do";
// 		    }
// 		    frm.submit();
// 		}

		function heartCheck(){
			let id = '<%=(String)session.getAttribute("id")%>';
			let productId = ${product.productId}
			let url = "ajaxHeart.do?id=" + id + "&productId=" + productId  ;			
			fetch(url)   
				.then(response => response.text())	
				.then(text => htmlProcess(text));
		}
		
  		function htmlProcess(data){
  			let frm = document.getElementById("frm");
			if(data == 'Heart'){
				alert("관심 상품이 등록되었습니다.");
				heart.value = "찜취소";
// 				frm.action="addHeart.do";	
				
			}else{
				alert("관심 상품이 해제되었습니다.")
				heart.value ="찜하기";
// 		    	frm.action="deleteHeart.do";
				
			}
		}
  		

		function replyUpdate(key) {
			let frm = document.getElementById("replyForm");
			frm.replyId.value = key;
			frm.action = "replyUpdateForm.do";
			frm.submit();
		}
		
		function replyDelete(key) {
			let frm = document.getElementById("replyForm");
			frm.replyId.value = key;
			if (confirm("정말 삭제 하시겠습니까?"))
				frm.action = "replyDelete.do";
			else
				return false;
			frm.submit();
		}
		
		function pullUpCheck() {
			let frm = document.getElementById("frm");
			let wDate = new Date(frm.productWdate.value).toLocaleDateString();
			let today = new Date().toLocaleDateString();
			
			if (wDate == today) {
				alert("끌올은 하루에 한번만 할 수 있습니다.");
				return false;
			} else {
				alert("끌올을 완료 했습니다.");
				frm.action = "productPullUp.do";
				frm.submit();
			}
		}
	
		function sellCheck(data) {
			  let frm = document.getElementById("replyForm");
			  
			  if ("${product.productState}" == "거래중") {
				  if (confirm(data + "님과의 거래를 완료 하시겠습니까?")) {
						frm.productBuyer.value = data;
					    frm.action = "productSell.do";
					    frm.submit();
					  } else {
					    return false;
					  }
			  } else {
				  if (confirm(data + "님과 거래 하시겠습니까?")) {
						frm.productBuyer.value = data;
					    frm.action = "productSell.do";
					    frm.submit();
					  } else {
					    return false;
					  }
				}
		}

		
		function sellCancel(data) {
			 let frm = document.getElementById("replyForm");
			 
			 if (confirm(data + "님과 거래를 취소 하시겠습니까?")) {
				 frm.productKeepGoing.value = 'n';
				 frm.action = "productSell.do";
				 frm.submit();
			 } else {
				 return false;
			 }
			
		}
		
		function productReport() {
				let frm = document.getElementById("frm");
				frm.action = "productReportForm.do";
				frm.submit();
		}
		
		
		function replyReport(data) {
				let frm = document.getElementById("replyForm");
				frm.replyId.value = data;
				frm.action = "replyReportForm.do";
				frm.submit();
		}
	</script>

</body>
</html>