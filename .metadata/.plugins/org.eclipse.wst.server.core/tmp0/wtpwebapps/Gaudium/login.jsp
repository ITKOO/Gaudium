<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Gaudium</title>
    <link href="https://fonts.googleapis.com/css?family=Pacifico|Nanum+Gothic|Yeon+Sung" rel="stylesheet">
    <link rel = "stylesheet" href="css/style.css">
</head>

<body>

   <div class = "login">
   
	    <!-- 메인 화면으로 돌아가는 백 버튼 -->
	    <a href="index.jsp"><img src = "img/backBtn.png" class = "backBtn"></a>
	
	    <!-- 로그인 id, pw 부분이 들어있는 login 흰 박스 부분 -->
	    <div class = "loginBox">
	        <br><br><br>
	        <!-- Gaudium 로그인 타이틀 -->
	        <span class = "loginTitle"><a href = "index.jsp">Gaudium</a></span>
	        <form method = "post" class = "loginForm">
	                <label for = "name" class = "inputLabel">ID</label>
	                <input type="text" name = "name" class = "inputText"><br><br>
	               
	                <label for = "place" class = "inputLabel">PW</label>
	                <input type="password" name = "place" class = "inputText"><br><br>
	
	                <a href="signUp.jsp" class = "signUp">Gaudium의 회원이 아니십니까?</a>
	                <!-- 작성 완료 버튼 -->
	                <input type = "button" value = "Login" id = "viewEventBtn" class = "loginBtn" onclick="loginBtn()">
	            </form>    
	    </div>
	</div>


</body>
</html>