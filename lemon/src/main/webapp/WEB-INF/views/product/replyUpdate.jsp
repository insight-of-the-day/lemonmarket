<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id="replyUpdate" target="parentForm">
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
			<button type="button" class="btn btn-primary btn-outline btn-lg" onclick="checkValue()">댓글 수정</button>&nbsp;&nbsp;
			<button type="button" class="btn btn-primary btn-outline btn-lg" onclick="window.close()">취소</button>&nbsp;&nbsp;
		</div>
	 </form>
	 <script type="text/javascript">
	 let frm = document.getElementById("replyUpdate");
	 if (frm.replySecret.value == 'y') {
		 replySecret.checked = true;
	 }
	 
	var httpRequest = null;
	
    function getXMLHttpRequest(){
        var httpRequest = null;
    
        if(window.ActiveXObject){
            try{
                httpRequest = new ActiveXObject("Msxml2.XMLHTTP");    
            } catch(e) {
                try{
                    httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
                } catch (e2) { httpRequest = null; }
            }
        }
        else if(window.XMLHttpRequest){
            httpRequest = new window.XMLHttpRequest();
        }
        return httpRequest;    
    }
    
    function checkValue() {
        var replyId = frm.replyId.value;
        var replySubject = frm.replySubject.value;
        var replySecretCheckbox = frm.replySecret;
        var replySecret = replySecretCheckbox.checked ? "on" : "";
        
        if(!replySubject)
        {
            alert("내용을 입력하세요");
            return false;
        }
        else{
        		var param= "replyId=" + replyId +
            	"&replySubject=" + replySubject +
            	"&replySecret=" + replySecret;

            httpRequest = getXMLHttpRequest();
            httpRequest.onreadystatechange = checkFunc;
            httpRequest.open("POST", "replyUpdate.do", true);    
            httpRequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded;charset=UTF-8'); 
            httpRequest.send(param);
        }
    }
    
    function checkFunc(){
        if(httpRequest.readyState == 4){
            var resultText = httpRequest.responseText;
            if(resultText == 1){
                if (opener != null) {
                    window.opener.document.location.reload(); 
                    opener.replyUpdateForm = null;
                    self.close();
                }
            }
        }
    }
	 </script>
</body>
</html>
