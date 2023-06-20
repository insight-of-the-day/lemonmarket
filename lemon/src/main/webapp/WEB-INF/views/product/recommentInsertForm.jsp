<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<form id="recommentInsert" target="parentForm">
		<input type="hidden" id="productId" name="productId" value="${reply.productId}" />
		<input type="hidden" id="replyId" name="replyId" value="${reply.replyId}" />
		<div>
			<label for="replyWriter">댓글 작성자 </label><input type="text" id="replyWriter" name="replyWriter" value="${name}">
			<br>
			<label for="replySubject">댓글 내용</label><textarea rows="1" cols="100" id="replySubject" name="replySubject"></textarea>
			<br>
			<label for="replySecret">비밀 댓글</label>
			<input type="checkbox" id="replySecret" name="replySecret">
		</div>
		<div>
			<button type="button" onclick="checkValue()" class="btn btn-primary btn-outline btn-lg">작성</button>&nbsp;&nbsp;
			<button type="button" onclick="window.close()" class="btn btn-primary btn-outline btn-lg">취소</button>&nbsp;&nbsp;
		</div>
	 </form>
</body>
<script type="text/javascript">
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
    
    function checkValue()
    {
    	var form = document.getElementById("recommentInsert");
    	
        var productId = form.productId.value;
        var replyId = form.replyId.value;
        var replyWriter = form.replyWriter.value;
        var replySubject = form.replySubject.value;
        var replySecretCheckbox = form.replySecret;
        var replySecret = replySecretCheckbox.checked ? "on" : "";
        
        if(!replySubject)
        {
            alert("내용을 입력하세요");
            return false;
        }
        else{
        		var param= "productId=" + productId + "&replyId=" + replyId +
            	"&replyWriter=" + replyWriter + "&replySubject=" + replySubject +
            	"&replySecret=" + replySecret;

            httpRequest = getXMLHttpRequest();
            httpRequest.onreadystatechange = checkFunc;
            httpRequest.open("POST", "recommentInsert.do", true);    
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
                    opener.recommentForm = null;
                    self.close();
                }
            }
        }
    }

</script>
</html>