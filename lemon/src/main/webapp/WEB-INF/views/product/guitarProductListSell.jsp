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
	<div id="fh5co-product">
  			<div class="container"> 
  				<div class="row animate-box">
  					<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
  					<span>LEMON MARKET</span>
  						<h2>기타 제품 판매</h2> 
  						<p>guitar?아님ㅋㅋ 생명체 빼고 불법적인 것 빼고 다 파세용ㅋㅋ</p> 
  					</div> 
  				</div> 
				<c:forEach items="${products}" var="p"> 
  					<div class="product"> 
					<div onclick="productChoice(${p.productId})" class="product-grid" 
  							style="background-image: url(attach/${p.productImg});"></div>
  					</div> 
  					<div class="desc"> 
  						<h3>
 							<a onclick="productChoice(${p.productId})">${p.productTitle}</a> 
  						</h3> 
					<span class="price">${p.productPrice}</span>
  					</div> 
 				</c:forEach> 
  			</div> 

  			<br> 
  			<div align="center"> 
				<c:if test="${not empty id }"> 
  					<p> 
  						<a href="productInsertForm.do" 
  							class="btn btn-primary btn-outline btn-lg">글 작성</a> 
  					</p> 
 				</c:if> 
  			</div> 
  			<div> 
  				<form id="frm" action="productSelect.do" method="post"> 
  					<input type="hidden" id="productId" name="productId"> 
  				</form> 
  			</div> 
  		</div> 
	
	
  		<script type="text/javascript"> 
			function productChoice(id) {
			let frm = document.getElementById("frm");
			frm.productId.value = id;
			frm.submit();
			}
  		</script> 

</body>
</html>