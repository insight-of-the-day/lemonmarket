<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1 align="center" style="margin-top: 150px;">공지사항 작성</h1>
	<form action="noticeInsert.do" method="post" id="frm" align="center"
		style="margin-top: 60px; margin-left: 0px; margin-right: 0px;">

		<table>
			<thead>
				<tr>
					<th></th>
					<td><input
						style="width: 1004px; margin-bottom: 10px; margin-left: 450px;"
						id="noticeTitle" name="noticeTitle" placeholder="제목을 입력하세요">
					</td>
				</tr>
			</thead>
			<tbody>
			<script>$('#noticeSubject').val().replace(/\n/g, "<br>")</script>
				<tr>
					<td colspan="2"><textarea
							style="width: 1004px; height: 304px; margin-left: 450px;"
							id="noticeSubject" name="noticeSubject" rows="10" cols="60" wrap=on></textarea></td>
				</tr>
			</tbody>
		</table>
		<div align="center">
			<button type="submit">작성완료</button>
		</div>
	</form>
</body>
</html>