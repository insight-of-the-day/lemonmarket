<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.myDiv {
  cursor : pointer;
}
</style>
</head>
<body>
	<div> 
		<form id="form" action="productSelect.do" method="post"> 
			<input type="hidden" id="productId" name="productId"> 
		</form> 
	</div> 

 	<script type="text/javascript"> 
		function productChoice(id) {
			let form = document.getElementById("form");
			form.productId.value = id;
			form.submit();
		}
 	</script> 
</body>
</html>