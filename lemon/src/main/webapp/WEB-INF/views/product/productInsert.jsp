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
		<div>
			<h1>제품등록</h1>
		</div>
		<div>
			<form id="frm" action="productInsert.do"
				onsubmit="return formCheck()" method="post">

				<div>
					<table border="1">
						<tr>
							<th>* 상품 분류</th>
							<td><select id="productCategory" name="productCategory">
									<option value="의류">의류</option>
									<option value="뷰티">뷰티</option>
									<option value="전자">전자</option>
									<option value="인테리어">인테리어</option>
									<option value="식품">식품</option>
									<option value="잡화">잡화</option>
									<option value="기타">기타</option>
							</select></td>
						</tr>
						<tr>
							<th>거래유형 선택</th>
							<td><select id="productInfo" name="productInfo">
									<option value="삽니다">삽니다</option>
									<option value="팝니다">팝니다</option>
							</select></td>
						</tr>
						<tr>
							<th>작성자</th>
							<td><input type="text" id="productWriter" name="productWriter" value=${name} readonly="readonly"></td>
						</tr>
						<tr>
							<th>* 제목</th>
							<td><input type="text" id="productTitle" name="productTitle"
								required="required"></td>
						</tr>
						<tr>
							<th>* 상품 가격</th>
							<td><input type="number" id="productPrice"
								name="productPrice" required="required"></td>
						</tr>
						<tr>
							<th>* 내용</th>
							<td><input type="text" id="productSubject"
								name="productSubject" required="required"></td>
						</tr>
					</table>
				</div>
				<div>
					<input type="submit" value="저장">&nbsp;&nbsp; <input
						type="reset" value="취소">&nbsp;&nbsp; <input type="button"
						value="목록" onclick="location.href='productList.do'">
				</div>

			</form>
		</div>
	</div>
</body>
</html>