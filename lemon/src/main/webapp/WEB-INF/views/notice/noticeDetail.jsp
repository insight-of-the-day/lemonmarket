<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body >
<div class="container">


	<table class="table">
		<thead >
			<tr class="row">
				<th class="col">${notice.noticeId }</th>
				<th class="col-5">${notice.noticeTitle }</th>
				<th class="col">${notice.noticeWdate }</th>
			</tr>
		</thead>
		<tbody  >
			<tr>
				<td colspan="3" style="line-height: 300px;">${notice.noticeSubject }</td>
			</tr>
		</tbody>
	</table>

	<form id="frm" method="post" >
	<div class="text-center">
		<input type="hidden" name="noticeId" value="${notice.noticeId }">
		<c:if test="${grade eq 'A'}">
			<button type="button" onclick="callFunction('E')"  style="margin-top:10px;">수정</button>
			<button type="button" onclick="callFunction('D')"  style="margin-top:10px;">삭제</button>
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