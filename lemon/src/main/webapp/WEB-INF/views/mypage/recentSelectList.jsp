<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/board.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#box{
	display: flex;
	justify-content: center;
}

.container form{
	display: flex;
  	flex-wrap: wrap;
	align-content: flex-start;
	justify-content: space-evenly;
}
</style>
</head>
<body>

	<section class="notice">
		<div class="page-title">
			<div class="container">
				<h3>최근 본 상품</h3>
			</div>
		</div>
		
		<div id="box">
			<div>
				<jsp:include page="mypageMenu.jsp"></jsp:include>
			</div> 
	
			<div id="board-list">
				<div class="container">
					<form id="frm" method="post">
						<c:forEach items="${recentList}" var="r">				
							<div align="center">
								<div class='myDiv' onclick='productChoice(${r.productId})'><img src="https://via.placeholder.com/120x120"></div>
								<div class='myDiv' onclick='productChoice(${r.productId})'>${r.productTitle}</div>
								<div><button id="deleteRecent" onclick="fnDelete()">삭제</button></div>
								<input type="hidden" name="productId" value="${r.productId}" >
							</div>				
						</c:forEach>
					</form>
					<c:if test="${empty recentList}">
						<p>최근 본 상품이 없습니다.</p>
					</c:if>
					
				</div>
			</div>
		</div>
		
		<div>
			<jsp:include page="clickProductSelect.jsp"></jsp:include>
		</div> 
	</section>

	<script type="text/javascript">
		function fnDelete(){
			let frm = document.getElementById("frm");
			frm.action="deleteCookie.do";
			frm.submit();
		}
	</script>
</body>
</html>
