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
			<form id="frm" action="productInsert.do" method="post" enctype="multipart/form-data">

				<div>
					<table>
						<tr>
							<th align="center">* 상품 분류</th>
							<td><select id="productCategory" name="productCategory">
									<option value="패션">패션</option>
									<option value="식품">식품</option>
									<option value="리빙">리빙</option>
									<option value="기타">기타</option>
							</select></td>
						</tr>
						<tr>
							<th align="center">거래유형 선택</th>
							<td><select id="productInfo" name="productInfo">
									<option value="삽니다">삽니다</option>
									<option value="팝니다">팝니다</option>
							</select></td>
						</tr>
						<tr>
							<th align="center">작성자</th>
							<td><input type="text" id="productWriter"
								name="productWriter" value=${name } readonly="readonly"></td>
						</tr>
						<tr>
							<th align="center">* 제목</th>
							<td><input type="text" id="productTitle" name="productTitle"
								required="required"></td>
						</tr>
						<tr>
							<th align="center">* 상품 가격</th>
							<td><input type="number" id="productPrice"
								name="productPrice" required="required"></td>
						</tr>
						<tr>
							<th align="center">* 내용</th>
							<td><textarea id="productSubject" name="productSubject"
									required="required"></textarea>
						</tr>
						<tr>
							<th align="center">* 사진첨부</th>
							<td><input type="file" id="pfile" name="pfile" accept="image/*">
						</tr>
					</table>
				</div>
				<div>
					<input style="margin-top: 10px;" type="submit" value="저장">&nbsp;&nbsp;
				</div>

			</form>
		</div>
	</div>
</body>
</html>