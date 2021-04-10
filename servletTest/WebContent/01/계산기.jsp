<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<h2>계산기 연습</h2>
<form name="test1" action="/servletTest/servletTest09.do"method="get">
	<table border="0">
	<tr>
		<td>
			<input name="num1" type ="text" value="">
		
			<select name="cal">
				<option value="+"> + </option>
				<option value="-"> - </option>
				<option value="*"> * </option>
				<option value="/"> / </option>
				<option value="%"> % </option>
			</select>
			
			<input name="num2" type="text" value="">
			
			<input type="submit" value="확인">
			
		</td>
	</tr>
	</table>	

</form>
</body>
</html>