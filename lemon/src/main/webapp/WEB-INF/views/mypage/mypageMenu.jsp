<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/board.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
<style>


#myPageMenu{
	width: 200px;
	padding-left: 50px;
	padding-right: 0px;
	float: left;
}

.menu{
	height: 50px
}

</style>
</head>

<body>
	<div id="myPageMenu">
		<div class="menu"><a href="updateGrade.do">마이페이지</a></div>
		<div class="menu"><a href="sellSelectList.do">판매 내역</a></div>
		<div class="menu"><a href="buySelectList.do">구매 내역</a></div>
		<div class="menu"><a href="heartSelectList.do">찜한 상품</a></div>
		<div class="menu"><a href="recentSelectList.do">최근 본 상품</a></div>	
	</div>
</body>
</html>