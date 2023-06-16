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

	<div align="center">
		<div>
			<h1>회원가입</h1>
		</div>
		<div>
			<form id="frm" action="memberInsert.do" onsubmit="return formCheck()"
				method="post">

				<div>
					<table border="1">
						<tr>
							<th width="150">* 아이디</th>
							<td width="300">
								<input type="email" id="memberId" name="memberId" required="required">
								<button type="button" id="checkId" value="No" onclick="idCheck()">중복체크</button>
							</td>
						</tr>
						<tr>
							<th>* 비밀번호</th>
							<td>
								<input type="password" id="memberPw" name="memberPw" required="required">
							</td>
						</tr>
						<tr>
							<th>* 비밀번호 확인</th>
							<td>
								<input type="password" id="passwordCheck" name="passwordCheck" required="required">
							</td>
						</tr>
						<tr>
							<th>* 별명</th>
							<td>
								<input type="text" id="memberName" name="memberName" required="required">
								<button type="button" id="checkName" value="No" onclick="nameCheck()">중복체크</button>
							</td>
						</tr>
						<tr>
							<th>* 연락처</th>
							<td>
								<input type="tel" id="memberTel" name="memberTel" required="required">
							</td>
						</tr>
					</table>
				</div>
				<br>
				<div>
					<input type="submit" value="등록">&nbsp;&nbsp; 
					<input type="reset" value="취소">&nbsp;&nbsp; 
					<input type="button" onclick="location.href='main.do'" value="홈">
				</div>
			</form>
		</div>
	</div>

	<script type="text/javascript">
		function formCheck(){
			let frm = document.getElementById("frm");
			if(frm.memberPw.value != frm.passwordCheck.value){
				alert("비밀번호가 일치하지 않습니다.");
				frm.memberPw.value ="";
				frm.passwordCheck.value="";
				frm.memberPw.focus();
				return false;
			} else if(frm.checkId.value != "Yes"){
				alert("아이디 중복체크를 확인하세요.");
				return false;
			} else if(frm.checkName.value != "Yes"){
				alert("별명 중복체크를 확인하세요.");
				return false;
			}
			
			return true;
		}
		
		function idCheck(){
			let id = document.getElementById("memberId").value;  
			let url = "ajaxCheckId.do?id=" + id;			
			fetch(url)   
				.then(response => response.text())	
				.then(text => htmlProcessId(text));
		}
		
		function nameCheck(){
			let name = document.getElementById("memberName").value;  
			let url = "ajaxCheckName.do?name=" + name;			
			fetch(url)  
				.then(response => response.text())			
				.then(text => htmlProcessName(text));
		}
		
		function htmlProcessId(data){
			if(data == 'Yes'){
				alert(document.getElementById("memberId").value + "\n사용가능한 아이디입니다.");
				document.getElementById("checkId").value = 'Yes';			
			}else{
				alert(document.getElementById("memberId").value + "\n이미 사용중인 아이디입니다.");
				document.getElementById("memberId").value = "";
				document.getElementById("memberId").focus();
			}
		}
		
		function htmlProcessName(data){
			if(data == 'Yes'){
				alert(document.getElementById("memberName").value + "\n사용가능한 별명입니다.");
				document.getElementById("checkName").value = 'Yes';			
			}else{
				alert(document.getElementById("memberName").value + "\n이미 사용중인 별명입니다.");
				document.getElementById("memberName").value = "";
				document.getElementById("memberName").focus();
			}
		}
	</script>
</body>
</html>