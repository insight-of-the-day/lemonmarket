
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		alert("${message }")
		location.href="main.do";
	</script>



<!-- 	<form action="main.do" id="frm" method="get"> -->
<!-- 		<div align="center"> -->
<%-- 			<h1>${message }</h1> --%>
<!-- 		</div> -->
<!-- 	<script> -->
// 		this.document.getElementById("frm").submit();
<!-- 	</script> -->
<!-- 	</form> -->

<%-- 	<%-- 	<%response.sendRedirect("index.jsp"); %> --%> --%>


<!-- 	<!-- 	move(); --> -->
<!-- 	<!-- <script> --> -->
<!-- 	// function move(){ // window.location.href="main.do" // } -->
<!-- 	<!-- </script> --> -->
<%-- 	<%-- <%-- <jsp:forward page="main.do"></jsp:forward> --%> --%>
<!-- 	--%> -->
</body>
</html>