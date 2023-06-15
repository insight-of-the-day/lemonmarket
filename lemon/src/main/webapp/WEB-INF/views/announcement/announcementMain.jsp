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
				<th>순번</th>
				<th>제목</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${notice}" var="n">
				<td>${n.noticeId }</td>
				<td>${n.noticeTitle }</td>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>