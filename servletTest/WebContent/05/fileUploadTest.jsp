<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload용 폼 페이지</title>
</head>
<body>
<h1>File Upload 연습 </h1>
<h3>파일 선택 창에서 Ctrl키나 Shift키를 누른 상태에서 클릭을하면 여러개의 파일을 한꺼번에 선택할수있다.</h3>

<!--enctype="multipart/form-data" ==> 파일전송용 Form이라는 의미  -->

<form action="<%=request.getContextPath()%>/fileUploadServlet.do" enctype="multipart/form-data" method="post">
	ID:<input type="text" name="memid"><br><br>
	Upload file1:<input type="file" name="file1" multiple><br><br>
	Upload file2:<input type="file" name="file2"><br><br>
	<input type="submit" value="파일 업로드 ">
</form>

<hr>
<a href ="<%=request.getContextPath()%>/uploadedFilesServlet.do">
전체 업로드된 파일 목록 가져오기 </a>

</body>
</html>