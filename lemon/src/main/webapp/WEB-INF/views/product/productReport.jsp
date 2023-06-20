<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	background-color: #fff;
}

header {
	background-color: #fff;
	color: white;
	display: flex;
	align-items: center;
	justify-content: center;
	height: 12vh;
	box-shadow: 5px 5px 10px rgb(0, 0, 0, 0.1);
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
	background: no-repeat center center;
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
	margin-bottom: 20px;
	font-family: 'system-ui';
	font-size: 0.9rem;
	letter-spacing: 2px;
}

.submit_class {
	border-style: none;
	border-radius: 5px;
	background-color: wheat;
	padding: 8px 20px;
	font-family: 'system-ui';
	color: #fff;
	text-transform: uppercase;
	letter-spacing: .8px;
	margin: auto;
	margin-top: 10px;
	margin-left: 10px;
	box-shadow: 2px 2px 5px rgb(0, 0, 0, 0.2);
	cursor: pointer;
}

footer {
	height: 10vh;
	background-color: black;
	color: white;
	display: flex;
	align-items: center;
	justify-content: center;
	box-shadow: -5px -5px 10px rgb(0, 0, 0, 0.3);
}

footer>p {
	text-align: center;
	font-family: 'system-ui';
	letter-spacing: 3px;
}

footer>p>a {
	text-decoration: none;
	color: white;
	font-weight: bold;
}
</style>
</head>
<body>
	<header>
		<h1 style="color: wheat;">신 고 하 기</h1>
	</header>
	<main>
		<form id="reportForm" method="post" action="productReport.do"
			class="form_class">
			<div class="form_div">
				<input type="hidden" id="productId" name="productId"
					value="${product.productId}"> <label for="reportReporter">
					신고자 </label> <input class="field_class" type="text" id="reportReporter"
					name="reportReporter" value="${name}" readonly="readonly">
				<label for="reportSuspect"> 용의자 </label> <input type="text"
					class="field_class" id="reportSuspect" name="reportSuspect"
					value="${product.productWriter}" readonly="readonly"> <br>


				<label for="reportSuspect"> 신고 내용 </label> <input type="text"
					class="field_class" id="reportContent" name="reportContent"
					value="제목 :  ${product.productTitle} / 내용 : ${product.productSubject}"
					readonly="readonly"> <br> <label for="replySecret">신고분류</label>
				<select id="reportCategory" name="reportCategory"
					class="field_class">
					<option value="욕설및비방">욕설및비방</option>
					<option value="사기">사기</option>
					<option value="광고">광고</option>
					<option value="불법/부적절상품">불법/부적절상품</option>
					<option value="카테고리부적합">카테고리부적합</option>
					<option value="기타">기타</option>
				</select> <br> <label for="reportReason">신고 사유</label>
				<textarea class="field_class" rows="1" cols="100" id="reportReason"
					name="reportReason"></textarea>


				<div align="center">
					<button type="submit" class="submit_class">신고</button>

					<button class="submit_class" type="button" onclick="window.close()">취소</button>
				</div>

			</div>
		</form>


	</main>
</body>
</html>
