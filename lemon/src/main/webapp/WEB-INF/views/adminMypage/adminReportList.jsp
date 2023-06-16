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
	<section class="notice">
		<div class="page-title">
			<div class="container">
				<h3>신고조회</h3>
			</div>
		</div>
		<div id="board-list">
			<div class="container">
				<table class="board-table">
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
							<tr onclick="reportChoice(${n.reportId },${n.reportSuspect })">
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
	</section>
	
	<script type="text/javascript">
	
		function reportChoice(reportId, reportSuspect) {
			let url="reportSelect.do?reportId="+reportId+"+reportSuspect="+reportSuspect;
			location.href=url;
		}
	</script>
</body>
</html>