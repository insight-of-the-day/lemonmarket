<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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

.icon{
	display: inline-block;
    width: 70px;
    height: 70px;
    line-height: 70px;
    border-radius: 50%;
    text-align: center;
    font-size: 12px;
    color: #fff;
    background: #d1c286;
    margin-right: 10px;
    }
    
.search-wrap{
	display: flex;
	align-items: center;
	justify-content: space-between;
}
.profileIcon{
	display: flex;
	align-items: center;
}

.info {
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	font-weight: bold;
}

.info a{
	
}


.search-wrap .update a{
	display: inline-block;
	width: 150px;
    height: 30px;
    line-height: 30px;
    background: #d1c286;
    color: #fff;
    border-radius: 30px;
    text-align: center;
}

.grade p{
	margin:0;
	font-size:12px
}

</style>
</head>
<body>

	<section class="notice">
		<div class="page-title">
			<div class="container">
				<h3>마이페이지</h3>
			</div>
		</div>
		
		<div id="box">
			<div>
				<jsp:include page="mypageMenu.jsp"></jsp:include>
			</div>
			
			<div>
				<div id="board-search">
					<div class="container" id="profile">
						<div class="search-window">
							
							<div class="search-wrap" style="margin-left: 20px; width: 400px;">
								<div class="profileIcon">
									<span class="icon">
										<span>레몬마켓</span>
									</span>
									<div class="info">
										<span>${name}</span>
										<div>
											<c:if test="${grade eq 'N'}">
												<a href="#">신규 회원</a>
											</c:if>
											<c:if test="${grade eq 'R'}">
												<a href="#">일반 회원</a>
											</c:if>
											<c:if test="${grade eq 'V'}">
												<a href="#">VIP</a>
											</c:if>
											<c:if test="${grade eq 'VV'}">
												<a href="#">VVIP</a>
											</c:if>
											<c:if test="${grade eq 'T'}">
												<a href="#" style="color: #ff0000;">경고 회원</a>
											</c:if>
										</div>
									</div>
								</div>							
								
								<div class="update">
									<a href="memberUpdateForm.do">회원정보수정</a>
								</div>
	
							</div>
							
							<div class="grade" style="padding-left: 20px;margin-top: 20px;">
								<p style="font-weight: bold;" >회원등급 안내</p>
								<p>판매건수 - 1건: 일반회원 / 10건: VIP / 100건: VVIP</p>
							</div>
							
						</div>
						
					</div>
				</div>
		
				<div id="board-list">
					<div class="container">
						<table class="board-table">
								<tr>		
									<th scope="col" style=" width: 200px;">총 판매건수</th>
									<td style="text-align: left;"> ${fn:length(sellList)} 건</td>
								</tr>
								<tr>		
									<th scope="col" style=" width: 200px;">별점 미입력</th>
									<td style="text-align: left;"><button>별점 주기</button></td>
								</tr>
						</table>
					</div>
				</div>
			</div>	
			
		</div>
		
		<div>
			<jsp:include page="clickProductSelect.jsp"></jsp:include>
		</div>
		
		<script>
			//document.frm.submit();
			window.onload = updateGrade();
			
			function updateGrade(){
				
			}
			
			function heartCheck(){
				let id = '<%=(String)session.getAttribute("id")%>';; 
				let productId = ${product.productId}
				let url = "ajaxHeart.do?id=" + id + "&productId=" + productId  ;			
				fetch(url)   
					.then(response => response.text())	
					.then(text => htmlProcess(text));
			}
			
	  		function htmlProcess(data){
	  			let frm = document.getElementById("frm");
				if(data == 'Heart'){
					alert("관심 상품이 등록되었습니다.");
					heart.value = "찜취소";
//	 				frm.action="addHeart.do";	
					
				}else{
					alert("관심 상품이 해제되었습니다.")
					heart.value ="찜하기";
//	 		    	frm.action="deleteHeart.do";
					
				}
			}
		</script> 
	</section>

</body>
</html>