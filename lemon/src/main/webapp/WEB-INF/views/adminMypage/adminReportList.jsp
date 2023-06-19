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
				<h3>신고조회</h3>
			</div>
		</div>

		<div id="box">
			<div>
				<jsp:include page="adminMyPageMenu.jsp"></jsp:include>
			</div>
			<div>
				<div id="board-list">
					<div class="container">
						<table class="board-table">
							<caption>총 신고건수: ${total } 건</caption>
							<thead>
								<tr>
									<th scope="col">신고번호</th>
									<th scope="col">제품번호</th>
									<th scope="col">신고자</th>
									<th scope="col">신고당한사람</th>
									<th scope="col">신고종류</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${reports }" var="n">
									<tr
										onclick="reportChoice('${n.reportId }','${n.reportSuspect }')">
										<td>${n.reportId }</td>
										<td>${n.productId }</td>
										<td>${n.reportReporter }</td>
										<td>${n.reportSuspect }</td>
										<td>${n.reportCategory }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>


				<div align="center" class="pager">
					<ul class="listCenter">
						<c:forEach var="n" begin="1" end="${totalPage }">
							<li><a href="memberReportList.do?viewPage=${n }">${n  } </a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
		
		
	</section>

	<script type="text/javascript">
		function reportChoice(reportId, reportSuspect) {
			let url = "reportSelect.do?reportId=" + reportId
					+ "&reportSuspect=" + reportSuspect;
			location.href = url;
		}
	</script>
</body>
</html>