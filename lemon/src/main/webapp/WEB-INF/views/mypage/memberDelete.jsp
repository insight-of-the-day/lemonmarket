<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
#deleteButton{
	float: right;
}
</style>
</head>
<body>

	<section class="notice">
		<div class="page-title">
			<div class="container">
				<h3>회원 탈퇴</h3>
			</div>
		</div>
		
		<div id="box">	
			<div>
				<jsp:include page="mypageMenu.jsp"></jsp:include>
			</div> 		
			<div id="board-list">
				<div class="container" align="center">
					<p>탈퇴하시면 작성한 게시글과 댓글이 모두 삭제됩니다.</p>
					<p>탈퇴하시려면 비밀번호를 입력해주세요.</p>
					<form id="frm" action="memberDelete.do" onsubmit="return pwCheck()" method="post">
						<div>
							<table>
								<tr>
									<td >아이디</td>	
									<td>
										<input type="text" id="memberId" name="memberId" value="${id}" style="margin-bottom: 10px;" disabled>
									</td>
								</tr>
					            <tr>
					                <td style="padding-right: 10px;">비밀번호</td>
					                <td><input type="password" id="memberPw" name="memberPw"  placeholder="비밀번호를 입력하세요." required="required"></td>
					            </tr>
					        </table><br> 
				        </div>
<%-- 				        <input type="hidden" id="memberName" name="memberName" value="${name }"> --%>
				        <div id="deleteButton">       	
				        	<input class="btn btn-primary btn-outline btn-lg" type="submit" value="탈퇴">&nbsp;&nbsp;
				        	<input class="btn btn-primary btn-outline btn-lg" type="button" value="취소" onclick="javascript:window.location='mypage.do'">		
				        </div>
			        </form>
				</div>
			</div>
		</div>
	</section>
	
	
	
	
	<script type="text/javascript">
	//비밀번호 확인은 보안을 위해 서버쪽에서 확인할 것
	
// 		function pwCheck(){
// 			let frm = document.getElementById("frm");
// 			if(frm.memberPw.value != ${pw}){
// 				alert("비밀번호가 일치하지 않습니다.");
// 				frm.memberPw.value ="";
// 				frm.memberPw.focus();
// 				return false;
// 			} else{
// 				if(confirm("정말 탈퇴하시겠습니까?")) {
// 					return true;
// 				}
// 				return false;
// 			} 
// 		}
	</script>	
</body>	
</html>