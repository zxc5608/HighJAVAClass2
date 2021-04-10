<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 </title>
</head>
<body>
<form action="<%= request.getContextPath()%>/sessionLoginServlet.do" method="post">
<table>
	<tr>
	 <td>ID:</td>
	 <td><input type= "text" name= "userid" placeholder="ID를 입력하세요" value= ""></td>
	</tr>
	
	<tr>
	 <td>PASS:</td>
	 <td><input type= "password" name= "pass" placeholder="PASSWORD를 입력하세요" value= ""></td>
	</tr>
	
	
	<tr>
	 <td colspan="2" style ="text-align:center;">
	 	<input type ="submit" value="Login"> 
	 </td>
	 
	</tr>
</table>
</form>

</body>
</html>