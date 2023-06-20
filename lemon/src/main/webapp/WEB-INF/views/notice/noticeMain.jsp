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
	<c:if test="${message } != null">
		<script type="text/javascript">
		alert("${message }")
		</script>
	</c:if>

	<section class="notice" >
		<div class="page-title">
			<div class="container">
				<h3>공지사항</h3>
			</div>
		</div>
		<div style="margin-left: 5em">
			<c:if test="${grade eq 'A'}">
				<button style="margin-left: 350px; margin-bottom: 5px;"
					type="button" onclick="location.href='noticeInsertForm.do'">
					공지작성</button>
			</c:if>
		</div>
		<div id="board-list">
			<div class="container">
				<table class="board-table">
					<thead>
						<tr>
							<th scope="col" class="th-num">번호</th>
							<th scope="col" class="th-title">제목</th>
							<th scope="col" class="th-date">등록일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${notices }" var="n">
							<tr onclick="noticeChoice(${n.noticeId})">
								<td>${n.noticeId }</td>
								<th>${n.noticeTitle }</th>
								<td>${n.noticeWdate }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<br>
	</section>
	<!-- 		<table> -->
	<!-- 			<thead> -->
	<!-- 				<tr> -->
	<!-- 					<th>순번</th> -->
	<!-- 					<th>제목</th> -->
	<!-- 				</tr> -->
	<!-- 			</thead> -->
	<!-- 			<tbody> -->
	<%-- 				<c:forEach items="${notices}" var="n"> --%>
	<%-- 					<tr onclick="noticeChoice(${n.noticeId})" --%>
	<!-- 						onmouseover='this.style.background="#ffcc00"' -->
	<!-- 						onmouseleave='this.style.background="#FFFFFF"'> -->
	<%-- 						<td>${n.noticeId }</td> --%>
	<%-- 						<td>${n.noticeTitle }</td> --%>
	<!-- 					</tr> -->
	<%-- 				</c:forEach> --%>
	<!-- 			</tbody> -->
	<!-- 		</table> -->


	<script>
	function noticeChoice(noticeId){
		let url="noticeSelect.do?noticeId="+noticeId;
		location.href=url;
	}

	</script>
</body>
</html>