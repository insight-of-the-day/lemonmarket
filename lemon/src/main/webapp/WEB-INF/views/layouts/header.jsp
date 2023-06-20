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



	<nav class="fh5co-nav" role="navigation">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-xs-2">
					<div id="fh5co-logo">
						<a href="main.do">LemonMarket</a>
					</div>
				</div>
				<div class="col-md-6 col-xs-6 text-center menu-1">
					<ul>
						<li class="has-dropdown"><a href="#">패션</a>
							<ul class="dropdown">
								<li><a href="fashionproductListBuy.do">삽니다</a></li>
								<li><a href="fashionproductListSell.do">팝니다</a></li>
							</ul></li>
						<li class="has-dropdown"><a href="#">식품</a>
							<ul class="dropdown">
								<li><a href="foodproductListBuy.do">삽니다</a></li>
								<li><a href="foodproductListSell.do">팝니다</a></li>
							</ul></li>


						<li class="has-dropdown"><a href="#">리빙</a>
							<ul class="dropdown">
								<li><a href="livingproductListBuy.do">삽니다</a></li>
								<li><a href="livingproductListSell.do">팝니다</a></li>
							</ul></li>

						<li class="has-dropdown"><a href="#">기타</a>
							<ul class="dropdown">
								<li><a href="guitarproductListBuy.do">삽니다</a></li>
								<li><a href="guitarproductListSell.do">팝니다</a></li>
							</ul></li>
						<li class="has-dropdown"><a href="noticeMain.do">공지사항</a>
					</ul>
				</div>
				<div class="col-md-3 col-xs-4 text-right hidden-xs menu-2">
					<ul>
						<li class="search">
							<div class="input-group">
								<form id="frmAll"action="mainPageSearch.do">
									<input type="text" name="mainPageSearch" placeholder="Search.."> <span
										class="input-group-btn">
										<button class="btn btn-primary" type="button">
											<i class="icon-search"></i>
										</button>
									</span>
								</form>
							</div>
						</li>
						<c:if test="${empty id }">
							<li><a href="memberInsertForm.do">회원가입</a></li>
							<li><a href="memberLoginForm.do">로그인</a></li>
						</c:if>
						<c:if test="${not empty id }">
							<c:choose>
								<c:when test="${grade == 'A' }">
									<li><a href="adminMypage.do" style="padding-bottom: 0px;">${name}</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="updateGrade.do">${name}</a></li>
								</c:otherwise>
							</c:choose>
							<li><a href="memberLogout.do" style="padding-top: 0px;">로그아웃</a></li>
						</c:if>
					</ul>
				</div>
			</div>

		</div>
	</nav>
</body>
</html>