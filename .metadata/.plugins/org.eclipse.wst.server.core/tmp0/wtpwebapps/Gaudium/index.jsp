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

    <!-- 메인 화면 대표 이벤트 -->
    <section class = "representEvent">
        <!-- 메인 화면 대표 이미지 -->
        <div class = "representImg"></div>
        <!-- 메인 화면 대표 이벤트 이미지 설명 -->
        <div class = "eventDiscription">
            <br>
            <span class = "eventDate">2018.04.30</span>
            
            <p class = "eventName">Django Girls April Seminar</p>
            <hr class = "eventHr">
            <p class = "eventDetails">장고걸스서울에서 Python과 Django 사용자를 위한 기술세미나를 주최합니다.<br><br>
                나이, 경력, 배경, 국적, 성별과 관계없이 누구나 참석하실 수 있습니다.</p>
            <br>

            <!-- 이벤트 자세히 보기 버튼 -->
            <input type = "button" value = "자세히 보기" id = "viewEventBtn" class = "button" onclick="moveDetailPage()">
      
        </div>
    </section>
<%! int holdCount;
	String imgLink;

%>
<%

BufferedReader reader = null;


try {
	String filePath = application.getRealPath("/WEB-INF/holdCount.txt");
	//out.println(filePath);
	reader = new BufferedReader(new FileReader(filePath));
	
	while(true) {
		String str = reader.readLine();
		if(str==null) break;
		
		holdCount = Integer.parseInt(str);		
	} //while
		
	
}

catch(Exception e) {
	out.println("지정된 파일을 찾을 수 없습니다.");
}


try {
		for(int i = 1; i <= holdCount;i++)
		{
%>


<div style = "width:16%;height:35%;line-height:180%;text-indent:1%;background-color: white;box-shadow: 0px 1px 13px #cecece;position: relative;margin-top:2%;margin-left:3%;display:inline-block;">

<% 
			String filePath = application.getRealPath("/WEB-INF/hold/" + i + ".txt");
			reader = new BufferedReader(new FileReader(filePath));
			
			for(int j = 0; j < 5; j++) {
				String contents = reader.readLine();
				if(contents==null) break;
				
				if(j == 1)
				{
					imgLink = contents; %>
					<img src="<%=imgLink %>" style = "width:229pt;height:150pt;"><br>
					<% 
				}
				
				else
				{
					%>
					<%="&nbsp;&nbsp;" + contents + "<br>"%>
									
 <% 
				}
			

			} //while
%>
</div>
<%				
		} // end of for
		
		//out.println(filePath);
		
}

catch(Exception e) {
	out.println("지정된 파일을 찾을 수 없습니다.");
}

%>
    
    <!-- 각종 참여가능한 이벤트들 -->
   
    <section class="events">
     

    </section>
    
    <!-- 상단 Gaudium 메뉴바 -->
   <jsp:include page="footer.jsp" flush="false"/>


    <script>
        function moveDetailPage()
        {
           location.href = "detail.html";
        }
    </script>
</body>
</html>