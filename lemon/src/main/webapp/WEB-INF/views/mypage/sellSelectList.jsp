<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<link href="../../css/board.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<section class="notice">
		<div class="page-title">
			<div class="container">
				<h3>판매내역</h3>
			</div>
		</div>

		<div id="board-search">
			<div class="container">
				<div class="search-window">
					<form id="frm" action="" method="post">
						<div class="search-wrap">
							<label for="search" class="blind"></label> <input
								type="search" id="search" name="memberId" placeholder="조회">
							<button type="submit" class="btn btn-dark"
								style="margin-right: 0px; margin-bottom: 0px">조회</button>
						</div>
					</form>
				</div>
			</div>
		</div>

		<div id="board-list">
			<div class="container">
				<table class="board-table">
					<thead>
						<tr>
							<th scope="col">이미지</th>
							<th scope="col">카테고리</th>
							<th scope="col">제목</th>
							<th scope="col">거래상태</th>
							<th scope="col">작성일자</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${sellList}" var="s">
							<tr>
								<td>이미지</td>
								<td>${s.productCategory}</td>
								<td><a href="#">${s.productTitle}</a></td>
								<td>${s.productState}</td>
								<td>${s.productWdate}</td>
							</tr>
						</c:forEach>
						<c:if test="${empty sellList }">
							<tr>
								<td colspan='6'>판매 내역이 없습니다.</td>
							</tr>
						</c:if>
					</tbody>
				</table>
			</div>
		</div>
		
		
<!-- 		<div id="board-search"> -->
<!-- 			<div class="container"> -->
<!-- 				<div class="search-window" align="center"> -->
<!-- 					<form id="frm" action="memberSelectList.do" method="post"> -->
<!-- 							<button type="submit" class="btn btn-dark" id="search">전체회원보기</button> -->

<!-- 					</form> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
	
	</section>


<!-- 	<div align="center"> -->
<!-- 		<div><h1>판매내역</h1></div> -->
<!-- 		<div> -->
<%-- 			<c:if test="${empty sellList}"> --%>
<!-- 				<p>판매 내역이 없습니다.</p> -->
<%-- 			</c:if>		 --%>
<!-- 				<div> -->
<!-- 					<table> -->
<!-- 						<thead> -->
<!-- 							<tr> -->
<!-- 								<th>카테고리</th> -->
<!-- 								<th>제목</th> -->
<!-- 								<th>거래상태</th> -->
<!-- 								<th>작성일자</th> -->
<!-- 							</tr> -->
							
<!-- 						</thead> -->
<!-- 						<tbody> -->
<%-- 							<c:forEach items="${sellList}" var="s"> --%>
<!-- 								<tr>	 -->
<%-- 									<td>${s.productCategory}</td> --%>
<%-- 									<td><a href="#">${s.productTitle}</a></td> --%>
<%-- 									<td>${s.productState}</td> --%>
<%-- 									<td>${s.productWdate}</td>	 --%>
<!-- 								</tr> -->
<%-- 							</c:forEach> --%>
<!-- 						</tbody> -->
						
<!-- 					</table> -->
<!-- 				</div> -->
<!-- 		</div> -->
<!-- 	</div> -->

	
</body>
</html>