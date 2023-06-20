<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
	padding: 0px;
	margin: 0px;
}

body {
	background-color: #ffff7a;
}

header {
	background-color: #FFE6D4;
	color: white;
	display: flex;
	align-items: center;
	justify-content: center;
	height: 10vh;
}

h1 {
	letter-spacing: 1.5vw;
	font-family: 'system-ui';
	text-transform: uppercase;
	text-align: center;
}

main {
	display: flex;
	align-items: center;
	justify-content: center;
	height: 75vh;
	width: 100%;
	background-image: linear-gradient(to bottom, #fff, #ffffdf, #ffffbf, #ffff9e);
	background-size: cover;
}

.form_class {
	width: 500px;
	padding: 40px;
	border-radius: 8px;
	background-color: white;
	font-family: 'system-ui';
	box-shadow: 5px 5px 10px rgb(0, 0, 0, 0.3);
}

.form_div {
	text-transform: uppercase;
}

.form_div>label {
	letter-spacing: 3px;
	font-size: 1rem;
}

.info_div {
	text-align: center;
	margin-top: 20px;
}

.info_div {
	letter-spacing: 1px;
}

.field_class {
	width: 100%;
	border-radius: 6px;
	border-style: solid;
	border-width: 1px;
	padding: 5px 0px;
	text-indent: 6px;
	margin-top: 10px;
	margin-bottom: 10px;
	font-family: 'system-ui';
	font-size: 0.9rem;
	letter-spacing: 2px;
}

.submit_class {
	border-style: none;
	border-radius: 5px;
	background-color: #ffffbf;
	padding: 8px 20px;
	font-family: 'system-ui';
	text-transform: uppercase;
	letter-spacing: .8px;
	display: block;
	margin: auto;
	margin-top: 10px;
	box-shadow: 2px 2px 5px rgb(0, 0, 0, 0.2);
	cursor: pointer;
}

.check_submit_class {
	border-style: none;
	border-radius: 5px;
	background-color: #ffffdf;
	padding: 1px 1px;
	font-family: 'system-ui';
	text-transform: uppercase;
	letter-spacing: .5px;
	margin: auto;
	margin-top: 1px;
	box-shadow: 2px 2px 5px rgb(0, 0, 0, 0.2);
	cursor: pointer;
	font-size: 1.2rem;
}

footer {
	height: 10vh;
	background-image: linear-gradient(to bottom, #ffff9e, #ffff7a);
	color: white;
	display: flex;
	align-items: center;
	justify-content: center;
}

footer>p {
	text-align: center;
	font-family: 'system-ui';
	letter-spacing: 3px;
}

footer>p>a {
	text-decoration: none;
	background-image: linear-gradient(to bottom, #ffff9e, #ffff7a);
	font-weight: bold;
}
</style>
</head>
<body>

	<main>
		<form id="login_form" class="form_class" action="memberInsert.do"
			onsubmit="return formCheck() method="post">
			<div class="form_div">
				<label>ID:</label> <input class="field_class" type="email"
					id="memberId" name="memberId" required="required" autofocus>
				<button class="check_submit_class" type="button" id="checkId"
					value="No" onclick="idCheck()">ID 중복체크</button>
				<p></p>


				<label>Password:</label> <input class="field_class" type="password"
					id="memberPw" name="memberPw" required="required"> <label>Password
					Check:</label> <input class="field_class" type="password"
					id="passwordCheck" name="passwordCheck" required="required">


				<label>NickName:</label> <input class="field_class" type="text"
					id="memberName" name="memberName" required="required">
				<button class="check_submit_class" type="button" id="checkName" value="No"
					onclick="nameCheck()">NickName 중복체크</button>
					<p></p>

				<label>Tel:</label> <input class="field_class" type="tel"
					id="memberTel" name="memberTel" required="required">


				<button class="submit_class" type="submit">회원가입</button>
			</div>
		</form>
	</main>
	<footer>
		<h1 style="color: #fff;">LEMONMARKET</h1>
	</footer>
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
