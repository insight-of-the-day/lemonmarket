<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    background-color: #ffff7a;
}
header {
    background-color: #FFE6D4;
    color: white;
    display: flex;
    align-items: center;
    justify-content: center;
    height: 10vh;
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
    background-image: linear-gradient(to bottom ,#fff, #ffffdf, #ffffbf , #ffff9e );
    background-size: cover;
}
.form_class {
    width: 500px;
    padding: 40px;
    border-radius: 8px;
    background-color: white;
    font-family: 'system-ui';
    box-shadow: 5px 5px 10px rgb(0,0,0,0.3);
}
.form_div {
    text-transform: uppercase;
}
.form_div > label {
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
    background-color: #ffffdf;
    padding: 8px 20px;
    font-family: 'system-ui';
    text-transform: uppercase;
    letter-spacing: .8px;
    display: block;
    margin: auto;
    margin-top: 10px;
    box-shadow: 2px 2px 5px rgb(0,0,0,0.2);
    cursor: pointer;
}
footer {
    height: 10vh;
    background-image: linear-gradient(to bottom ,#ffff9e,#ffff7a);
    color: white;
    display: flex;
    align-items: center;
    justify-content: center;
}
footer > p {
    text-align: center;
    font-family: 'system-ui';
    letter-spacing: 3px;
}
footer > p > a {
    text-decoration: none;
    background-image: linear-gradient(to bottom ,#ffff9e,#ffff7a);
    font-weight: bold;
}
</style>
</head>
<body>

    <main>
        <form id="login_form" class="form_class" action="memberLogin.do" method="post">
            <div class="form_div">
                <label>Login:</label>
                <input class="field_class" type="email" id="memberId" name="memberId" required="required" autofocus>
                <label>Password:</label>
                <input id="pass" class="field_class" name="memberPw" type="password" required="required">
                <button class="submit_class" type="submit">login</button>
                <img height="38px" src="../webapp/images/kakaoLogin.png" />
            </div>
            <div class="info_div">
                <p>아직 회원이 아니 신가요? <a href="memberInsertForm.do">회원가입 하러가기</a></p>
            </div>
        </form>
    </main>
     <footer>
        <h1 style="color:#fff;">LEMONMARKET</h1>
    </footer>
</body>
</body>
</html>