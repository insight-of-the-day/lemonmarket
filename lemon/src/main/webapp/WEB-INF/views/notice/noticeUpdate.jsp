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
	<h1 align="center" style="margin-top: 150px;">공지사항 수정</h1>
	<form action="noticeUpdate.do" id="frm" method="post" align="center"
		style="margin-top: 60px; margin-left: 0px; margin-right: 0px; border-color:light-gray;">
		<table>
			<thead>
				<tr>
					<td><input
						style="width: 1004px; margin-bottom: 10px; margin-left: 450px;"
						type="text" id="noticeTitle" name="noticeTitle" placeholder="수정할 제목을 입력하세요"
						"></td>
				</tr>
			</thead>
			<tbody>
			<script>$('#noticeSubject').val().replace(/\n/g, "<br>")</script>
				<tr>
					<td><textarea 
					style="width: 1004px; height: 304px; margin-left: 450px;"
					id="noticeSubject" name="noticeSubject" rows="10" cols="60" wrap=on placeholder="공지를 입력하세요"></textarea></td>
				</tr>
			</tbody>
		</table>
		<input type="hidden" name="noticeId" value="${notice.noticeId }"
			align="center"> <input type="submit" value="수정하기" class="btn-primary">
	</form>
</body>
</html>