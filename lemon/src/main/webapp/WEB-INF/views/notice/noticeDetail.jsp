<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

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
				<tr id= "title">
					<th style="text-align:left; width: 200px; ">${notice.noticeId }</th>
					<th style="text-align:center; width:400px; ">${notice.noticeTitle }</th>
					<th style="text-align:right;width:350px;">${notice.noticeWdate }</th>
				</tr>
<!-- 				<tr id= "title" class="row"> -->
<%-- 					<th scope="col" style="width:350; align:left;">${notice.noticeId }</th> --%>
<%-- 					<th scope="col" style="width:370; align:center;">${notice.noticeTitle }</th> --%>
<%-- 					<th scope="col" style="width:350; align:right;">${notice.noticeWdate }</th> --%>
<!-- 				</tr> -->
			</thead>
			<tbody>
				<tr>
				<%
				pageContext.setAttribute("crcn","\r\n");
				pageContext.setAttribute("br","<br/>");%>
				<td colspan="3" style="line-height: 35px;">${fn:replace(notice.noticeSubject, crcn,br) }
				</td>
				</tr>
			</tbody>
		</table>

		<form id="frm" method="post">
			<div class="text-center">
				<input type="hidden" name="noticeId" value="${notice.noticeId }">
				<c:if test="${grade eq 'A'}">
					<button type="button" onclick="callFunction('E')"
						style="margin-top: 10px;">수정</button>
					<button type="button" onclick="callFunction('D')"
						style="margin-top: 10px;">삭제</button>
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