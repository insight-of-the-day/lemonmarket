<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href="../../css/board.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section class="notice">
		<div class="page-title">
			<div class="container">
				<h3>회원조회</h3>
			</div>
		</div>

		<div id="board-search">
			<div class="container">
				<div class="search-window">
					<form id="frm" action="memberSelect.do" method="post">
						<div class="search-wrap">
							<label for="search" class="blind">공지사항 내용 검색</label> <input
								type="search" id="search" name="memberId" placeholder="아이디 검색">
							<button type="submit" class="btn btn-dark"
								style="margin-right: 0px; margin-bottom: 0px">검색</button>
						</div>

					</form>
				</div>
			</div>
		</div>

		<div id="board-list">
			<div class="container">
			<form action="adminMemberDelete.do" method="post">
				<table class="board-table">
					<thead>
						<tr>
							<th scope="col">아이디</th>
							<th scope="col">이름</th>
							<th scope="col">연락처</th>
							<th scope="col">등급</th>
							<th scope="col">경고횟수</th>
							<th scope="col">회원탈퇴처리</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${not empty member }">
							<tr>
								<td><input type="hidden" name="memberId" value="${member.memberId }">${member.memberId }</td>
								<td><input type="hidden" name="memberName" value="${member.memberName }">${member.memberName }</td>
								<td>${member.memberTel }</td>
								<td>${member.memberGrade }</td>
								<td>${member.memberCount }</td>
								<td><button type="submit" class="btn" id="search">삭제하기</button></td>
							</tr>
						</c:if>
						<c:if test="${empty member }">
							<tr>
								<td colspan='6'>존재하지 않는 회원입니다</td>
							</tr>
						</c:if>
					</tbody>
				</table>
				</form>
			</div>
		</div>
		
		
		<div id="board-search">
			<div class="container">
				<div class="search-window" align="center">
					<form id="frm" action="memberSelectList.do" method="post">
							<button type="submit" class="btn btn-dark" id="search">전체회원보기</button>

					</form>
				</div>
			</div>
		</div>
		
		
		
	</section>
</body>
</html>