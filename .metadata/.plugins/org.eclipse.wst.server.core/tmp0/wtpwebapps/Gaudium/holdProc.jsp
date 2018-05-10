<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Date"%> 
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! int holdCount;  %>
<%
	request.setCharacterEncoding("UTF-8");

	BufferedReader reader = null;
	PrintWriter writer = null;
	
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
	
	try
	{
		String filePath = application.getRealPath("/WEB-INF/holdCount.txt");
		writer = new PrintWriter(filePath);
		
		
		holdCount = holdCount + 1;
		writer.printf("%s", holdCount);
		
		writer.flush();
	}
	
	catch(Exception e) {
		out.println("지정된 파일을 찾을 수 없습니다.");
	}
	
	
	String eventName = request.getParameter("eventName");
	String eventImg = request.getParameter("eventImg");
	String eventPlace = request.getParameter("eventPlace");
	String eventDate = request.getParameter("eventDate");
	String eventTime = request.getParameter("eventTime");
	String eventIntro = request.getParameter("eventIntro");
	
	String result;
	
	Date date = new Date();
	Long time = date.getTime();
	
	String fileName = holdCount + ".txt";
	
	
	try{
		String filePath = application.getRealPath("WEB-INF/hold/" + fileName);
		//out.println(filePath);
		writer = new PrintWriter(filePath);
		
		//행사명
		writer.printf("%s %n", eventName);
		
		//행사이미지
		writer.printf("%s %n", eventImg);
		//행사장소
		writer.printf("행사장소 : %s %n", eventPlace);
		//행사날짜
		writer.printf("행사날짜 : %s %n", eventDate);
		//행사시간
		writer.printf("행사시간 : %s %n", eventTime);
		//행사소개 및 안내 내용
		writer.printf("행사내용 : %s %n", eventIntro);
		//행사 올린 시간
		writer.printf("%s %n", time);
		
		writer.flush();
		
		result = "ok";
	}
	
	catch(Exception e){
		out.println("오류발생이다 잦슥아~");
		result = "fail";
	}

%>
	
%>

<script>


alert("이벤트 등록이 완료되었습니다!\n축하드립니다!:)");
location.href = "index.jsp";

</script>
</body>
</html>
