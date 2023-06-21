<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href="../../css/board.css" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />

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
				<h3 style="margin-bottom:2px;">공지사항</h3>
			</div>
		</div>
<!-- 		공지글 작성 버튼 -->
		<div align="center">
				<c:if test="${not empty id }">
					<p>
						<button type="button" onclick="location.href='noticeInsertForm.do'"
							class="btn btn-primary btn-outline btn-lg"
							style="border-radius:0.375rem; background: transparent; width:113.906px; padding-left: 0px; margin-bottom:30px;">작성</button>
					</p>
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
							<tr onclick="noticeChoice(${n.noticeId})" style="color:black; cursor:pointer;" class="hover">
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