<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/board.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#box{
	display: flex;
	justify-content: center;
}
table input{
	width: 500px;
}
#updateButton{
	float: right;
}
</style>
</head>
<body>

	<section class="notice">
		<div class="page-title">
			<div class="container">
				<h3>회원 정보 수정</h3>
			</div>
		</div>
		
		<div id="box">	
			<div>
				<jsp:include page="mypageMenu.jsp"></jsp:include>
			</div> 		
			<div id="board-list">
				<div class="container">
					<form id="frm" action="memberUpdate.do" method="post" onsubmit="return pwCheck()" onreset="return fnReset()">		
						<div>
							<table class="board-table">
								<tr>
									<td width="300px">아이디 (*수정 불가)</td>	
									<td class="inputLeft"><input type="text" id="memberId" name="memberId" value="${id}" disabled></td>
								</tr>
								<tr>
									<td>별명 (*수정 불가)</td>
									<td class="inputLeft"><input type="text" id="memberName" name="memberName" value="${name}" disabled></td>
								</tr>
								<tr>
									<td>비밀번호</td>
									<td class="inputLeft"><input type="password" id="memberPw" name="memberPw" required="required"></td>
								</tr>
								<tr>
									<td>비밀번호 확인</td>
									<td class="inputLeft"><input type="password" id="passwordCheck" name="passwordCheck" required="required"></td>
								</tr>
								<tr>
									<td>연락처</td>
									<td class="inputLeft"><input type="text" id="memberTel" name="memberTel" value="${tel}" required="required"></td>
								</tr>
							</table><br>
						</div>
						<div id="updateButton">
							<input class="btn btn-primary btn-outline btn-lg" type="submit" value="수정">&nbsp;&nbsp;
							<input class="btn btn-primary btn-outline btn-lg" type="reset" value="초기화">
						</div>
						<div><a href="memberDeleteForm.do">회원탈퇴</a></div>
					</form>	
				</div>
			</div>
		</div>
	</section>
	
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