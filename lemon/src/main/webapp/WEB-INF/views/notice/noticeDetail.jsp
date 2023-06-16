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
	<table>
		<thead>
			<tr>
				<th>${notice.noticeId }</th>
				<th>${notice.noticeTitle }</th>
				<th>${notice.noticeWdate }</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${notice.noticeSubject }</td>
			</tr>
		</tbody>
	</table>

	<form id="frm" method="post">
		<input type="hidden" name="noticeId" value="${notice.noticeId }">
		<c:if test="${grade eq 'A'}">
			<button type="button" onclick="callFunction('E')">수정</button>
			<button type="button" onclick="callFunction('D')">삭제</button>
		</c:if>


	</form>

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