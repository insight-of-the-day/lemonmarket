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

#recentList{
	display: flex;
  	flex-wrap: wrap;
	align-content: flex-start;
	justify-content: space-around;
}
.recentForm{
	width: 120px;
	height: 200px;
}
.recentImg {
    width: 120px;
    height: 120px;
}
.divTitle p{
	overflow: hidden; 
	font-size: 14px;
	text-overflow: ellipsis;
 	white-space: nowrap; 	
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
				<div id="recentList" class="container">
					
					<c:forEach items="${recentList}" var="r">	
						<form id="frm" method="post" class="recentForm">			
							<div align="center">
								<div class='divImg' onclick='productChoice(${r.productId})'><img class="recentImg" src="attach/${r.productImg1}"></div>
								<div class='divTitle' onclick='productChoice(${r.productId})'><p>${r.productTitle}</p></div>
								
								<input type="hidden" name="productId" value="${r.productId}" >
								<div><button id="deleteRecent" onclick="fnDelete(this.form)">삭제</button></div>
							</div>	
						</form>			
					</c:forEach>
					
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
		function fnDelete(frm){
			//let frm = document.getElementById("frm");  -> forEach로 폼 여러개 생성되어있는 상태 -> fnDelete(this.form)이용해 각 form에 fnDelete()적용
			frm.action="deleteCookie.do";
			frm.submit();
		}
	</script>
</body>
</html>
