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
		<div><h1>회원 탈퇴</h1></div>
		
		<p>탈퇴하시려면 비밀번호를 입력해주세요</p>
		<div>
			<form id="frm" action="memberDelete.do" onsubmit="return pwCheck()" method="post">
				<div>
					<table>
						<tr>
							<td>아이디</td>	
							<td>
								<input type="text" id="memberId" name="memberId" value="${id}" disabled>
							</td>
						</tr>
			            <tr>
			                <td>비밀번호</td>
			                <td><input type="password" id="memberPw" name="memberPw"  placeholder="비밀번호를 입력하세요." required="required"></td>
			            </tr>
			            	
			        </table><br> 
		        </div>
		        <div>       	
		        	<input type="submit" value="탈퇴">&nbsp;&nbsp;
		        	<input type="button" value="취소" onclick="javascript:window.location='mypage.do'">

		        </div>
	        </form>
	        
		</div>
	</div>
	
	<script type="text/javascript">
		function pwCheck(){
			let frm = document.getElementById("frm");
			if(frm.memberPw.value != ${pw}){
				alert("비밀번호가 일치하지 않습니다.");
				frm.memberPw.value ="";
				frm.memberPw.focus();
				return false;
			} else{
				if(confirm("정말 탈퇴하시겠습니까?")) {
					return true;
				}
				return false;
			} 
		}
	</script>	
</body>	
</html>