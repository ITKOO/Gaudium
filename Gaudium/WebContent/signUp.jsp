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
    
    <div class = "loginBox">
        <br><br><br>
        <span class = "loginTitle">Sign Up</span>

        <form method = "post" class = "loginForm">
                <label for = "name" class = "inputLabel">ID</label>
                <input type="text" name = "name" class = "inputText"><br><br>
               
                <label for = "place" class = "inputLabel">PW</label>
                <input type="password" name = "place" class = "inputText"><br><br>
                
                <label for = "nickname" class = "inputLabel">Nickname</label>
                <input type="text" name = "nickname" class = "inputText"><br><br>

                <label for = "place" class = "inputLabel">ReCheck</label>
                <input type="password" name = "place" class = "inputText"><br><br>

                <!-- 작성 완료 버튼 -->
                <input type = "button" value = "Sign Up" id = "viewEventBtn" class = "loginBtn" onclick="signUpBtn()">
            </form>    
    </div>

    
    
</div>


</body>
</html>