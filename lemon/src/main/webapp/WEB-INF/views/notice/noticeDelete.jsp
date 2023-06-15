<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h1>공지사항 삭제</h1>
	</div>
	<div>
		<input type="hidden" id="noticeId" name="noticeId" value="${notice.noticeId }">
	</div>
	<div>
		<input type=button id="noticeId" name="noticeId" value="삭제"
			onclick="location.href='noticeMain'">
	</div>
</body>
</html>