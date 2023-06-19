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
#box {
	display: flex;
	justify-content: center;
}

.icon {
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

.search-wrap {
	display: flex;
	align-items: center;
	justify-content: space-between;
}

.profileIcon {
	display: flex;
	align-items: center;
}

.info {
	display: flex;
	flex-direction: column;
	justify-content: space-between;
}

.search-wrap .update a {
	display: inline-block;
	width: 150px;
	height: 30px;
	line-height: 30px;
	background: #d1c286;
	color: #fff;
	border-radius: 30px;
	text-align: center;
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
				<jsp:include page="adminMyPageMenu.jsp"></jsp:include>
			</div>

			<div>
				<div id="board-search">
					<div class="container" id="profile">
						<div class="search-window">

							<div class="search-wrap" style="margin-left: 20px; width: 400px;">
								<div class="profileIcon">
									<span class="icon"> <span>레몬마켓</span>
									</span>
									<div class="info">
										<span>${name} 관리자</span>

									</div>
								</div>

							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>