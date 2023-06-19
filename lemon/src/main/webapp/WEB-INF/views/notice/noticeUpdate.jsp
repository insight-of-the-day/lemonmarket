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
	<h1 align="center">공지사항 수정</h1>
	<form action="noticeUpdate.do" id="frm" method="post">
		<table>
		<tr>
		<td>제목: <input type="text" id="noticeTitle" name="noticeTitle" value="${notice.noticeTitle }"></td>
		</tr>
		<tr>
		<td><textarea id="noticeSubject" name="noticeSubject" >${notice.noticeSubject }</textarea></td>
		</tr>
		</table>
		<input type="hidden" name="noticeId" value="${notice.noticeId }">
		<input type="submit" value="등록">
	</form>
</body>
</html>