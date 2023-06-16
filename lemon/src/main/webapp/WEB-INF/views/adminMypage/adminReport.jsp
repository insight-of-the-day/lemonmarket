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
		<div id="board-list" >
			<div class="container">
				<table border="1" class="board-table">
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
						<tr>
							<td>${reports.reportId }</td>
							<td>${reports.productId }</td>
							<td>${reports.reportReporter }</td>
							<td>${reports.reportSuspect }</td>
							<td>${members.memberCount}</td>
							<td>${reports.reportCategory }</td>
						</tr>
						<tr>

						</tr>
					</tbody>
				</table>
			</div>
		</div>


		<div class="page-title">
			<div class="container">
				<h3></h3>
			</div>
		</div>



		<div id="board-list">
			<div class="container">
				<table border="1" class="board-table">
					<thead style="">
						<tr>
							<th scope="col">신고내용</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>${reports.reportContent }</td>
						</tr>
						<tr>

						</tr>
					</tbody>
				</table>
			</div>
		</div>


<h1></h1>



		<div id="board-list">
			<div class="container">
				<table border="1" class="board-table">
					<thead style="">
						<tr>
							<th scope="col">기타내용</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>${reports.reportReason }</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

		
		<div class="page-title">
			<div class="container">
				<h3></h3>
			</div>
		</div>
		
		
		
		<div id="board-search">
			<div class="container">
				<div class="search-window" align="center">
					<form id="frm" action="" method="post">
						<button type="submit" class="btn btn-dark" id="search">신고처리</button>
						<button type="button" class="btn btn-dark" id="search" onclick="reportList()">목록보기</button>
					</form>
				</div>
			</div>
		</div>
	</section>
	
	<script type="text/javascript">
	function reportList() {
		let url="memberReportList.do";
		location.href=url;
	}
	
	</script>

</body>
</html>