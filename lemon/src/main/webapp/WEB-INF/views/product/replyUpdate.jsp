<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id="replyUpdate" action="replyUpdate.do" method="post">
		<input type="hidden" id="replyId" name="replyId" value="${replyList.replyId}" />
		<div>
			<label for="replyWriter">댓글 작성자 </label>${replyList.replyWriter}
			<br>
			<label for="replySubject">댓글 내용</label><textarea rows="1" cols="100" id="replySubject" name="replySubject">${replyList.replySubject}</textarea>
			<br>
			<label for="replySecret">비밀 댓글</label>
			<input type="checkbox" id="replySecret" name="replySecret" value=${replyList.replySecret}>
		</div>
		<div>
			<button type="submit" class="btn btn-primary btn-outline btn-lg">댓글 수정</button>&nbsp;&nbsp;
			<button type="button" class="btn btn-primary btn-outline btn-lg" onclick="window.close()">취소</button>&nbsp;&nbsp;
		</div>
	 </form>
	 <script>
	 let frm = document.getElementById("replyUpdate");
	 if (frm.replySecret.value == 'y') {
		 replySecret.checked = true;
	 }
	 </script>
</body>
</html>
