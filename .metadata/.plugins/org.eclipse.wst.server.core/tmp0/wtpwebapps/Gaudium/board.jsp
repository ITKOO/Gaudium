<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Date"%> 
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
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
    <!-- 상단 Gaudium 메뉴바 -->
   <jsp:include page="menuBar.jsp" flush="false"/>
   
   <div class = "boardList" id = "boardListDiv">
       
    </div>

    <!-- 질문 추가하기 부분 -->
    <div class = "question" id = "questionDiv">
        <!-- 타이틀 바 -->
        <div class = "qTitleBar">
            <span class = "qTitle">질문 작성하기</span>
            <span class = "cancel" onclick = "cancel()">X</span>
            <hr class = "qHr">
        </div>
        
        <!-- 질문 작성 글 Textarea -->
        <textarea class = "qTextarea" id = "qContents">
            
        </textarea>

        <!-- 작성 완료 버튼 -->
        <input type = "button" value = "작성 완료" id = "viewEventBtn" class = "okBtn" onclick="okBtn()">
    </div>
    
    <!-- 이벤트 자세히 보기 버튼 -->
    <div class = "boardInsert">
        <input type = "button" value = "질문 작성하기" id = "viewEventBtn" class = "InsertBtn" onclick="insertQuestion()">
    </div>
    
    <div style = "width:100%;height:20%;"></div>
    
     <!-- 하단 Gaudium Footer -->
   		<jsp:include page="footer.jsp" flush="false"/>
   		
	

    <script>
        var questionStyle = document.getElementById('questionDiv');

        function insertQuestion()
        {
            console.log("dd");
           
            questionStyle.style.display = "block";   
            
        }

        function cancel()
        {
            questionStyle.style.display = "none";   
        }
    </script>
   
</body>
</html>