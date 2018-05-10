<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Date"%>
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
   
       <div class = "hold">
            <br><br><br>
            <form method = "post" action = "holdProc.jsp">
                <label for = "eventName" class = "inputLabel">행사명</label>
                <input type="text" name = "eventName" class = "inputText" id = "eventName" placeholder = "ex) 구지뽕 축제" required><br><br>
                
                <label for = "eventImg" class = "inputLabel">행사이미지</label>
                <input type="text" name = "eventImg" class = "inputText" id = "eventImg" placeholder = "이미지 주소를 적어주세요 ex) https://google/img" required><br><br>
               
                <label for = "eventPlace" class = "inputLabel">행사장소</label>
                <input type="text" name = "eventPlace" class = "inputText" id = "eventPlace"  placeholder = "ex) 경기도 부천시 여월로 65" required><br><br>
              
                <label for = "eventDate" class = "inputLabel">행사날짜</label>
                <input type="date" name = "eventDate" class = "inputText" id = "eventDate"  required><br><br>
    
                <label for = "eventTime" class = "inputLabel">행사시간</label>
                <input type="time" name = "eventTime" class = "inputText" id = "eventTime" required><br><br>
                
             
                <label for = "eventIntro" class = "inputLabel">행사 소개 및 안내 내용</label><br><br>
                <textarea name = "eventIntro" class = "holdTextArea" id = "eventIntro"  placeholder = "자유롭게 적어주세요! :)" required></textarea><br><br>
    
    			<!-- 작성 취소 버튼 -->
                <input type = "button" value = "취소" onclick = "cancel()" class = "cancelBtn">
                
                <!-- 작성 완료 버튼 -->
                <input type = "submit" value = "작성 완료" id = "viewEventBtn" class = "okBtn">
            </form>    
       </div>
       
       <div class = "holdBg">
        
       </div>
  
        <!-- 하단 Gaudium Footer -->
   		<jsp:include page="footer.jsp" flush="false"/>
       
       <script>
       		function cancel()
       		{
       			console.log("취소버튼 누름");
       			var confirmCancel = confirm("정말로 작성을 취소하시겠습니까?");
       			
       			if (confirmCancel == true) {
       			   alert("작성이 취소되었습니다.");
       			   location.href = "index.jsp";
       			} 
       			
       			
       		}
       </script>

</body>
</html>