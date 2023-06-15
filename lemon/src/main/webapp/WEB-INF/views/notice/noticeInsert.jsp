<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">공지사항 작성</h1>
	<form action="noticeInsert.do" method="post" id="frm">
		<table>
			<thead>
				<tr>
					<th></th>
					<td><input style="width: 1004px; margin-bottom: 10px; margin-left: 450px;"
						id="noticeTitle" name="noticeTitle" placeholder="제목을 입력하세요">
					</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td colspan="2"><textarea
							style="width: 1004px; height: 304px; margin-left: 450px;" id="noticeSubject"
							name="noticeSubject"></textarea></td>
				</tr>
			</tbody>
		</table>
		<div align="center">
			<button type="submit">작성완료</button>
		</div>
	</form>
</body>
</html>