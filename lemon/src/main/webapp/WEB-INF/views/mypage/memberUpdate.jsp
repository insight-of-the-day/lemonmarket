<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<div><h1>회원 정보 수정</h1></div>
		
		<div>
			<form id="frm" action="memberUpdate.do" method="post" onsubmit="return pwCheck()" onreset="return fnReset()">		
				<div>
					<table>
						<tr>
							<td>아이디</td>	
							<td>
								<input type="text" id="memberId" name="memberId" value="${id}" disabled>
							</td>
						</tr>
						<tr>
							<td>별명</td>
							<td>
								<input type="text" id="memberName" name="memberName" value="${name}" disabled>
							</td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td>
								<input type="password" id="memberPw" name="memberPw" required="required">
							</td>
						</tr>
						<tr>
							<td>비밀번호 확인</td>
							<td>
								<input type="password" id="passwordCheck" name="passwordCheck" required="required">
							</td>
						</tr>
						<tr>
							<td>연락처</td>
							<td>
								<input type="text" id="memberTel" name="memberTel" value="${tel}" required="required">
							</td>
						</tr>
					</table><br>
				</div>
				<div>
					<input type="submit" value="수정">&nbsp;&nbsp;
					<input type="reset" value="초기화">
				</div>
			</form>
			<div><a href="memberDeleteForm.do">회원탈퇴</a></div>
		</div>
	</div>	
	
	<script type="text/javascript">
		function pwCheck(){
			let frm = document.getElementById("frm");
			if(frm.memberPw.value != frm.passwordCheck.value){
				alert("비밀번호가 일치하지 않습니다.");
				frm.memberPw.value ="";
				frm.passwordCheck.value="";
				frm.memberPw.focus();
				return false;
			} 
			return true;
		}
	
	</script>
</body>


</html>