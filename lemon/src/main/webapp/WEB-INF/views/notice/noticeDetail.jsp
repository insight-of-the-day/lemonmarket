<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<div class="container">


		<table class="table">
			<thead>
				<tr id="title">
					<th style="text-align: left; width: 200px;">${notice.noticeId }</th>
					<th style="text-align: center; width: 400px;">${notice.noticeTitle }</th>
					<th style="text-align: right; width: 216px;">${notice.noticeWdate }</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td colspan="3" style="line-height: 30px; height:250px; border:none;background-color:transparent;">
						<div style="width: 100%; overflow-x: auto;">
							<pre>${fn:replace(notice.noticeSubject, crcn, br)}</pre></div>
					</td>
			</tbody>
		</table>

		<form id="frm" method="post">
			<div class="text-center">
				<input type="hidden" name="noticeId" value="${notice.noticeId }">
				<c:if test="${grade eq 'A'}">
					<button type="button" class="btn btn-primary btn-outline btn-lg"
						onclick="callFunction('E')"
						style="margin-top: 30px; margin-bottom: 50px;">수정</button>
					<button type="button" class="btn btn-primary btn-outline btn-lg"
						onclick="callFunction('D')"
						style="margin-top: 30px; margin-bottom: 50px;">삭제</button>
				</c:if>
			</div>
		</form>
	</div>
	<script type="text/javascript">
		function callFunction(str) {
			let frm = document.getElementById("frm");
			if (str == 'E') {
				frm.action = "noticeUpdateForm.do";
			} else {
				frm.action = "noticeDelete.do";
			}
			frm.submit();
		}
	</script>

</body>
</html>