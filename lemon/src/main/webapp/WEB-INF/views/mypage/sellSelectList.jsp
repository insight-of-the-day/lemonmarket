<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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

.pager{
	display:flex;
	justify-content: center;
}

.pager .pageButton{
    display: inline-block;
    padding: 5px 14px;
    background-color: #fff;
}
.listCenter {
	
    list-style:none;
}
 
.listCenter li {
	margin-left: 5px;
    margin-right: 5px;
}
</style>
</head>
<body>

	<section class="notice">
		<div class="page-title">
			<div class="container">
				<h3>판매 내역</h3>
			</div>
		</div>
		
		<div id="box">
			<div>
				<jsp:include page="mypageMenu.jsp"></jsp:include>
			</div>
			
			<div>
				<div id="board-search">
					<div class="container">
						<div class="search-window">
							<form id="frm" action="sellSelect.do" method="get">
								<div class="search-wrap">
									<label for="productSearch" class="blind"></label> 
									<input type="search" id="productSearch" name="productSearch" 
											placeholder="검색할 내용을 입력하세요" value="${param.productSearch}">
									<button type="submit" class="btn btn-dark"
										style="margin-right: 0px; margin-bottom: 0px">검색</button>
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
									<th scope="col">카테고리</th>
									<th scope="col">이미지</th>
									<th scope="col">제목</th>
									<th scope="col">거래상태</th>
									<th scope="col">작성일자</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${sellList}" var="s">
									<tr>
										<td>${s.productCategory}</td>
										<td><div class='myDiv' onclick='productChoice(${s.productId})'>이미지</div></td>
										<td><div class='myDiv' onclick='productChoice(${s.productId})'>${s.productTitle}</div></td>
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
				
				
				<c:set var="page" value="${(empty param.page)? 1 : param.page}"/>
				<c:set var="startNum" value="${page-(page-1)%5}"/>
				<c:set var="lastNum" value="${fn:substringBefore(Math.ceil(fn:length(sellList2)/10), '.')}"/>
					
				<div align="right">
					<div style="margin-right: 30px;"><span>${(empty param.page)? 1 : param.page}</span> / ${lastNum} pages</div>
				</div>
				
				<div align="center" class="pager">				
					<div class="pageButton">
						<c:if test="${startNum>1}">
							<a href="?page=${startNum-1}&productSearch=${param.productSearch}">이전</a>
						</c:if>
						<c:if test="${startNum<=1}">
							<span onclick="alert('이전 페이지가 없습니다.')">이전</span>
						</c:if>
					</div>
	
					<ul class="listCenter">
						<c:forEach var="i" begin="0" end="4">
							<c:if test="${(startNum+i)<=lastNum}">
								<li><a style="background-color: ${(page==(startNum+i))?'#595959':''};" href="?page=${startNum+i}&productSearch=${param.productSearch}">${startNum+i}</a></li>
							</c:if>
						</c:forEach>
					</ul>
			
					<div class="pageButton">
						<c:if test="${(startNum+4)<lastNum}">
							<a href="?page=${startNum+5}&productSearch=">다음</a>
						</c:if>
						<c:if test="${(startNum+4)>=lastNum}">
							<span onclick="alert('다음 페이지가 없습니다.')">다음</span>
						</c:if>
					</div>	
				</div>
				
			</div>	
			
		</div>
		
		
		<div>
			<jsp:include page="clickProductSelect.jsp"></jsp:include>
		</div> 
	</section>

</body>
</html>