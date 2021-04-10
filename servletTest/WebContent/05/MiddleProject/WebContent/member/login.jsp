<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>로그인</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="../css/login2.css">
<link href="https://fonts.googleapis.com/earlyaccess/notosanskr.css"	rel="stylesheet">
<script src="../js/jquery.serializejson.min.js"></script>
<script src="../js/memberreg2.js"></script>
</head>
<body>
	<div class="login-form">
		<form>
			<input type="text" name="email" class="text-field" placeholder="아이디">
			<input type="password" name="password" class="text-field" placeholder="비밀번호"> 
			<input type="submit" value="로그인" class="submit-btn">
		</form>

		<div class="links">
			<a href="idsearch.jsp">이메일를 잊어버리셨나요?</a><br>
			<a href="passSearch.jsp">비밀번호를 잊어버리셨나요?</a>
		</div>
	</div>
</body>
</html>