<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/styles.css" rel="stylesheet" />
<style>
.btnHeart {
	margin-right: 4px;
	margin-bottom: 4px;
	font-family: "Montserrat", Arial, sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 18px 36px;
	background: transparent;
	color: #d1c286;
	border: 2px solid #d1c286;
	border-bottom-left-radius: 0px;
	border-bottom-right-radius: 0px;
	border-top-left-radius: 0px;
	border-top-right-radius: 0px;
}

.btnHeart:hover {
	background: #d1c286;
	border-color: #d1c286;
	color: #fff
}

.heartActive {
	background: #d1c286 !important;
	color: #fff !important;
	border: 2px solid #d1c286 !important;
}

.datsise {
	font-size: 20px;
	color: #d1c286;
}

.datsise2 {
	font-size: 20px;
	color: #000;
}

.dat {
	border-style: solid;
	margin: 50px;
	padding: 20px;
	border-width: 5px;
	border-color: #d1c286;
	width: 1000px;
}
.btnself{
display: inline-block;
  padding: 0 30px;
  font-size: 15px;
  font-weight: 400;
  background: transparent;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  -ms-touch-action: manipulation;
  touch-action: manipulation;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  border: 1px solid transparent;
  text-transform: uppercase;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
  -webkit-transition: all 0.3s;
  -moz-transition: all 0.3s;
  -ms-transition: all 0.3s;
  -o-transition: all 0.3s;
  transition: all 0.3s;
}

</style>
</head>
<body>
	<div id="fh5co-product">
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-md-offset-1 ">
					<div class="owl-carousel owl-carousel-fullwidth product-carousel">
						<div class="item">
								<c:if test="${product.productImg1  eq null}">
									<img class="card-img-top" src="attach/기본이미지.png" alt="..." style="width: 850px; height: 700px; margin-left: 150px; margin-top: 100px;"/>
								</c:if>
								<c:if test="${product.productImg1 ne null}">
									<img class="card-img-top" src="attach/${product.productImg1}"
										alt="..." style="width: 850px; height: 700px; margin-left: 150px; margin-top: 100px;"/>
								</c:if>
						</div>
						<div class="item">
								<c:if test="${product.productImg1  eq null}">
									<img class="card-img-top" src="attach/기본이미지.png" alt="..." style="width: 850px; height: 700px; margin-left: 150px; margin-top: 100px;"/>
								</c:if>
								<c:if test="${product.productImg1 ne null}">
									<img class="card-img-top" src="attach/${product.productImg1}"
										alt="..." style="width: 850px; height: 700px; margin-left: 150px; margin-top: 100px;"/>
								</c:if>
						</div>
						<div class="item">
								<c:if test="${product.productImg1  eq null}">
									<img class="card-img-top" src="attach/기본이미지.png" alt="..." style="width: 850px; height: 700px; margin-left: 150px; margin-top: 100px;"/>
								</c:if>
								<c:if test="${product.productImg1 ne null}">
									<img class="card-img-top" src="attach/${product.productImg1}"
										alt="..." style="width: 850px; height: 700px; margin-left: 150px; margin-top: 100px;"/>
								</c:if>
						</div>
						<div class="item">
								<c:if test="${product.productImg1  eq null}">
									<img class="card-img-top" src="attach/기본이미지.png" alt="..." style="width: 850px; height: 700px; margin-left: 150px; margin-top: 100px;"/>
								</c:if>
								<c:if test="${product.productImg1 ne null}">
									<img class="card-img-top" src="attach/${product.productImg1}"
										alt="..." style="width: 850px; height: 700px; margin-left: 150px; margin-top: 100px;"/>
								</c:if>
						</div>
						<div class="item">
								<c:if test="${product.productImg1  eq null}">
									<img class="card-img-top" src="attach/기본이미지.png" alt="..." style="width: 850px; height: 700px; margin-left: 150px; margin-top: 100px;"/>
								</c:if>
								<c:if test="${product.productImg1 ne null}">
									<img class="card-img-top" src="attach/${product.productImg1}"
										alt="..." style="width: 850px; height: 700px; margin-left: 150px; margin-top: 100px;"/>
								</c:if>
						</div>
					</div>
					<div class="row animate-box">
						<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
							<h2>${product.productTitle}</h2>
							<h3>거래 상태 : ${product.productState}</h3>
							<h5>${product.productWriter}</h5>
							<h5>조회수 : ${product.productView}</h5>
							<form id="frm" method="post">
								<input type="hidden" id="productId" name="productId"
									value="${product.productId}" /> <input type="hidden"
									id="productWdate" name="productWdate"
									value="${product.productWdate}" />
								<c:if test="${name ne product.productWriter && not empty id}">
									<c:choose>
										<c:when test="${heartVal eq 0 }">
											<input type="button" id="heart" class="btnHeart" value="찜하기"
												style="width: 114px; padding-right: 0px; padding-left: 0px; padding-bottom: 0px; height: 62px; padding-top: 0px;">
										</c:when>
										<c:otherwise>
											<input type="button" id="heart" class="btnHeart" value="찜취소">
										</c:otherwise>
									</c:choose>
									<c:if
										test="${not empty id && grade ne 'A' && name ne product.productWriter}">
										<button type="button"
											onclick="productReport('${product.productId}')"
											class="btn btn-primary btn-outline btn-lg">신고</button>
									</c:if>
								</c:if>
								<c:if test="${name eq product.productWriter}">
									<input type="submit"
										onclick="javascript: frm.action='productUpdateForm.do'"
										class="btn btn-primary btn-outline btn-lg" value="수정">
								</c:if>
								<c:if test="${name eq product.productWriter || grade eq 'A'}">
									<input type="submit"
										onclick="javascript: frm.action='productDelete.do'"
										class="btn btn-primary btn-outline btn-lg" value="삭제">
								</c:if>
								<c:if test="${name eq product.productWriter}">
									<input type="button" onclick="pullUpCheck()"
										class="btn btn-primary btn-outline btn-lg" value="끌올">
								</c:if>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-10 col-md-offset-1">
					<div class="fh5co-tabs animate-box">
						<ul class="fh5co-tab-nav" style="text-align: center">
							<li class="active"><a href="#" data-tab="1"
								style="margin-left: 80px;"><span class="icon visible-xs"><i
										class="icon-file"></i></span><span class="hidden-xs"> 상품소개</span></a></li>
							<li><a href="#" data-tab="2"><span
									class="icon visible-xs"><i class="icon-bar-graph"></i></span><span
									class="hidden-xs">댓글</span></a></li>
						</ul>

						<!-- Tabs -->
						<div class="fh5co-tab-content-wrap">

							<div class="fh5co-tab-content tab-content active"
								data-tab-content="1">
								<div class="col-md-10 col-md-offset-1">
									<span class="price">가격 : ${product.productPrice}</span>
									<h2>${product.productTitle}</h2>
									<div class="row">
										<div class="col-md-6">
											<%
											pageContext.setAttribute("crcn", "\r\n");
											pageContext.setAttribute("br", "<br/>");
											%>
											<p style="width: 800px">${fn:replace(product.productSubject, crcn,br) }</p>
										</div>
									</div>

								</div>
							</div>

							<div class="fh5co-tab-content tab-content" data-tab-content="2">
								<div class="col-md-10 col-md-offset-1">
									<h3>댓글 목록</h3>
									<div class="feed">
										<form id="replyForm" method="post">
											<input type="hidden" id="productId" name="productId"
												value="${product.productId}" /> <input type="hidden"
												id="replyId" name="replyId"> <input type="hidden"
												id="productBuyer" name="productBuyer"> <input
												type="hidden" id="productKeepGoing" name="productKeepGoing">
											<c:forEach items="${replyList}" var="replyList">
												<c:choose>
													<c:when
														test="${(replyList.replySecret eq 'n') || ((replyList.replySecret eq 'y') && (name eq product.productWriter || name eq replyList.replyWriter || grade eq 'A'
																|| name eq replyList.parentWriter))}">
														<div>
															<c:if test="${replyList.replyLevel > 1}">
															&nbsp;&nbsp;&nbsp;&nbsp;<p>Re:</p>
															</c:if>
															<blockquote>
																<p>${replyList.replySubject}</p>
															</blockquote>
															<h3>&mdash; ${replyList.replyWriter},
																${replyList.replyWdate}</h3>
															<c:if test="${not empty id && replyList.replyLevel == 1}">
																<button type="button"
																	onclick="recommentInsert('${replyList.productId}', '${replyList.replyId}')"
																	class="btn btn-primary btn-outline btn-lg">대댓</button>
															</c:if>
															<c:if test="${name eq replyList.replyWriter}">
																<button type="button"
																	onclick="replyUpdate(${replyList.replyId})"
																	class="btn btn-primary btn-outline btn-lg">수정</button>
															</c:if>
															<c:if
																test="${name eq replyList.replyWriter || grade eq 'A'}">
																<button type="button"
																	onclick="replyDelete(${replyList.replyId})"
																	class="btn btn-primary btn-outline btn-lg">삭제</button>
															</c:if>
															<c:if
																test="${name eq product.productWriter && name ne replyList.replyWriter}">
																<c:choose>
																	<c:when test="${product.productState eq '거래중'}">
																		<button type="button"
																			onclick="sellCheck('${replyList.replyWriter}')"
																			class="btn btn-primary btn-outline btn-lg">거래완료</button>
																		<button type="button"
																			onclick="sellCancel('${replyList.replyWriter}')"
																			class="btn btn-primary btn-outline btn-lg">거래취소</button>
																	</c:when>
																	<c:when test="${product.productState eq '거래전'}">
																		<button type="button"
																			onclick="sellCheck('${replyList.replyWriter}')"
																			class="btn btn-primary btn-outline btn-lg">거래하기</button>
																	</c:when>
																</c:choose>
															</c:if>
															<c:if
																test="${not empty id && grade ne 'A' && name ne replyList.replyWriter}">
																<button type="button"
																	onclick="replyReport('${replyList.replyId}')"
																	class="btn btn-primary btn-outline btn-lg">신고</button>
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
											<form id="replyInsertForm">
												<input type="hidden" id="productId" name="productId"
													value="${product.productId}" />
												<div class="dat">
													<label for="replyWriter" class="datsise">댓글 작성자: </label><input
														class="datsise2" style="border: 0 solid black;"
														type="text" id="replyWriter" name="replyWriter"
														value=${name } readonly="readonly" /> <br> <label
														for="replySubject" class="datsise">댓글 내용:</label>
													<textarea class="datsise2" class="form-control" rows="1"
														cols="100" id="replySubject" name="replySubject"></textarea>
													<br> <label for="replySecret">비밀 댓글</label> <input
														type="checkbox" id="replySecret" name="replySecret" />
													<button  type="button" onclick="replyInsert()" 
														class="btn btn-primary btn-outline btn-lg" style="margin-left:752px;">댓글 작성</button>
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
			let id = '<%=(String) session.getAttribute("id")%>';
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
				heart.classList.add("heartActive");
// 				frm.action="addHeart.do";	
				
			}else{
				alert("관심 상품이 해제되었습니다.")
				heart.value ="찜하기";
				heart.classList.remove("heartActive");
// 		    	frm.action="deleteHeart.do";	
			}
		}
  		

  		var httpRequest = null;
  		
  	    function getXMLHttpRequest(){
  	        var httpRequest = null;
  	    
  	        if(window.ActiveXObject){
  	            try{
  	                httpRequest = new ActiveXObject("Msxml2.XMLHTTP");    
  	            } catch(e) {
  	                try{
  	                    httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
  	                } catch (e2) { httpRequest = null; }
  	            }
  	        }
  	        else if(window.XMLHttpRequest){
  	            httpRequest = new window.XMLHttpRequest();
  	        }
  	        return httpRequest;    
  	    }
  		
        function replyInsert() {
            var form = document.getElementById("replyInsertForm");
            
            var productId = form.productId.value;
            var replyWriter = form.replyWriter.value;
            var replySubject = form.replySubject.value;
            var replySecretCheckbox = form.replySecret;
            var replySecret = replySecretCheckbox.checked ? "on" : "";
            
            if(!replySubject)
            {
                alert("내용을 입력하세요.");
                return false;
            }
            else
            {    
        		var param= "productId=" + productId + "&replyWriter=" + replyWriter +
        		"&replySubject=" + replySubject + "&replySecret=" + replySecret;
                    
                httpRequest = getXMLHttpRequest();
                httpRequest.onreadystatechange = checkFunc;
                httpRequest.open("POST", "replyInsert.do", true);    
                httpRequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded;charset=UTF-8'); 
                httpRequest.send(param);
            }
        }
        
        function checkFunc(){
            if(httpRequest.readyState == 4){
                var resultText = httpRequest.responseText;
                if(resultText == 1){ 
                    document.location.reload();
                }
            }
        }
  		

		function replyUpdate(replyId) {
			window.name = "parentForm";
			window.open("replyUpdateForm.do?replyId=" + replyId,
						"replyUpdateForm", "width=570, height=350, resizable = no, scrollbars = no");
		}
		
		function replyDelete(replyId) {
			let frm = document.getElementById("replyForm");
			frm.replyId.value = replyId;
			if (confirm("정말 삭제 하시겠습니까?")) {
				var param = "replyId="+replyId;
			
            	httpRequest = getXMLHttpRequest();
            	httpRequest.onreadystatechange = checkFunc;
           		httpRequest.open("POST", "replyDelete.do", true);    
            	httpRequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded;charset=EUC-KR'); 
            	httpRequest.send(param);
			}
			else {
				return false;
			}
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
		
		function productReport(productId) {
			window.name = "parentForm";
			window.open("productReportForm.do?productId=" + productId,
						"productReportForm", "width=800, height=800, resizable = no, scrollbars = no");
		}
		
		
		function replyReport(replyId) {
			window.name = "parentForm";
			window.open("replyReportForm.do?replyId=" + replyId,
						"replyReportForm", "width=800, height=800, resizable = no, scrollbars = no");
		}
		
		function recommentInsert(productId, replyId) {
			window.name = "parentForm";
			window.open("recommentInsertForm.do?productId=" + productId + "&replyId=" + replyId,
						"recommentForm", "width=570, height=350, resizable = no, scrollbars = no");
		}
		
	</script>

</body>
</html>