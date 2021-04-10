<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>

<body>

<%
//jsp문서 에서는 세션은 session이라는 이름으로 저장되어있다.
	String userId= (String)session.getAttribute("USERID");
	
	if(userId==null){//세션이 없으면
		
%>		
<script>


	alert("로그인실패");
	location.href= "<%= request.getContextPath() %>/03/sessionLoginServlet.do";  
	//history.go(-1);
</script>
<%
 }else{
 %>
	<h3><%=userId %>님 반갑습니다.</h3>
	<a href="<%=request.getContextPath()%>/sessionLogoutServlet.do">로그아웃하기</a>
<%
 }
%>

	
</body>
</html>