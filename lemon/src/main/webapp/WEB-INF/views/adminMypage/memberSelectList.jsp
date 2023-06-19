<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href="../../css/board.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#box {
	display: flex;
	justify-content: center;
}

.pager {
	display: flex;
	justify-content: center;
}

.pager .pageButton {
	display: inline-block;
	padding: 5px 14px;
	background-color: #fff;
}

.listCenter {
	list-style: none;
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
				<h3>회원조회</h3>
			</div>
		</div>
		
		

		<div id="box">
			<div>
				<jsp:include page="adminMyPageMenu.jsp"></jsp:include>
			</div>
			<div>
				<div id="board-search">
					<div class="container">
						<div class="search-window">
							<form id="frm" action="memberSelect.do" method="post">
								<div class="search-wrap">
									<label for="productSearch" class="blind"></label> <label
										for="search" class="blind">회원 아이디 검색</label> <input
										type="search" id="productSearch" name="memberId"
										placeholder="아이디 검색">
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
							<caption style="color:gray;">총 회원수: ${total } 명</caption>
							<thead>
								<tr>
									<th scope="col">아이디</th>
									<th scope="col">이름</th>
									<th scope="col">연락처</th>
									<th scope="col">등급</th>
									<th scope="col">경고횟수</th>
									<!-- 			<th>삭제</th> -->
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${members }" var="n">
									<tr>
										<td>${n.memberId }</td>
										<td>${n.memberName }</td>
										<td>${n.memberTel }</td>
										<td>${n.memberGrade }</td>
										<td>${n.memberCount }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>


				<div align="center" class="pager">
					<ul class="listCenter">
						<c:forEach var="n" begin="1" end="${totalPage }">
							<li><a href="memberSelectList.do?viewPage=${n }">${n  }
							</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>

	</section>

</body>
</html>