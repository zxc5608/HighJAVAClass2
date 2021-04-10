<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie 연습</title>
</head>
<body>
			<!-- request.getContextPath()==> /servletTest  -->
<a href="<%= request.getContextPath()%>/cookieAddServlet.do">
Cookie 정보저장하기 
</a><br><br>
<a href="<%= request.getContextPath()%>/cookieReadServlet.do">
Cookie 정보 읽어오기 
</a><br><br>
<a href="<%= request.getContextPath()%>/cookieDeleteServlet.do">
Cookie정보 삭제하기 
</a>



</body>
</html>