<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/filterEncodingTestServlet.do" method="post">
이름:<input type ="text" name="userName"><br>
<input type="submit" value="전송">

</form>

</body>
</html>