<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h1>제품삭제</h1>
	</div>
	<div>
		<input type="hidden" name="productId" value="${product.productId }">
	</div>
	<div>
		<input type=button id="productId" name="productId" value="삭제"
			onclick="location.href='productSelect'">
	</div>

</body>
</html>

<!-- db받아오는 부분필요 -->