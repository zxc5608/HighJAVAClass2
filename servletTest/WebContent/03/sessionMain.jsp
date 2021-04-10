<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Session 연습용 Main페이지입니다</h2>
<a href="<%= request.getContextPath() %>/sessionLoginServlet.do">Login하기</a>
</body>
</html>