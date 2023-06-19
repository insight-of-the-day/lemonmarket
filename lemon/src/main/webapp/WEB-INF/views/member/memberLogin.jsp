<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div align="center">
		<div><h1>로그인</h1></div>
		<div>
			<form id="frm" action="memberLogin.do" method="post">
				<div>
					<table border="1">
						<tr>
							<th width="150">아이디</th>
							<td width="300">
								<input type="email" id="memberId" name="memberId" required="required">
							</td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td>
								<input type="password" id="memberPw" name="memberPw" required="required">
							</td>
						</tr>
					</table>
				</div><br>
				<div>
					<input type="submit" value="로그인">&nbsp;&nbsp;
					<button type="submit" class="btn btn-primary">로그인</button>
					<img height="38px" src="../webapp/images/kakaoLogin.png" />
					<input type="reset" value="취소">
				</div>
			</form>
		</div>
	</div>

	
</body>
</html>