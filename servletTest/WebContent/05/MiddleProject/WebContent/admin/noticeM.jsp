<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/noticeM.css">	
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
</script>
</head>
<body>

<nav class="navbar navbar-inverse ">
	 <img class="logo" src="<%=request.getContextPath() %>/images/넷플릭스_로고.png" alt="로고" align="left">
	 <p id="pp" >| 관리자 페이지</p>
</nav>
 

<!--  메뉴 Side Navigation  -->
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <p class="sidefont">Content</p>
   <a href="<%=request.getContextPath()%>/admin/content.jsp">상영작 관리</a>
  <br>
  <p class="sidefont">Member</p>
  <a href="<%=request.getContextPath()%>/admin/memberlist.jsp">회원 관리</a>
  <a href="<%=request.getContextPath()%>/admin/singo.jsp">신고 회원 관리</a>
  <a href="<%=request.getContextPath()%>/admin/payment.jsp">결제 관리</a>
  <br>
  <p class="sidefont">Service center</p>
  <a href="<%=request.getContextPath()%>/admin/qna.jsp">QnA</a>
  <a href="<%=request.getContextPath()%>/admin/fNq.jsp">FnQ</a>
  <a href="<%=request.getContextPath()%>/admin/noticeM.jsp">공지사항</a>
</div>
<span id="tt" onclick="openNav()">&#9776;</span>

<div id="word">고객센터</div> 
<br><br>
<hr>
	<a href="<%=request.getContextPath() %>/admin/main.jsp" class="back">←  관리자 페이지로 돌아가기</a>

<hr>
	<h1 id="contw">공지사항</h1>

<div class="review">

<h2>공지사항</h2>
  <a href="<%=request.getContextPath() %>/admin/noticeNEW.jsp"> <button type="button" idx="20" name="" id="btnn"class="btn btn-info action1">새글작성</button></a>

			
			<table>
				
				<tr class="aa">
					<th><span>번호</span></th>
					<th><span>작성자</span></th>
					<th><span>공지제목</span></th>
					<th><span class="bb">작성일자</span></th>
				</tr>
				<tr>
					<td>1</td>
					<td>관리자 안</td>
					<td><a href="<%=request.getContextPath() %>/admin/noDetailM.jsp" value="확인">상영작 신청 공지</a></td>
					
					<td>2020.12.10</td>
				</tr>
				<tr>
					<td>2</td>
					<td>관리자 김</td>
					<td><a href="<%=request.getContextPath() %>/admin/noDetailM.jsp" value="확인">신고된 유저 공지</a></td>
					
					<td>2020.12.11</td>
				</tr>
				<tr>
					<td>3</td>
					<td>관리자 황</td>
					<td><a href="리뷰상세.jsp" value="확인">관리자 공지</a></td>
					
					<td>2020.12.11</td>
				</tr>
				<tr>
					<td>4</td>
					<td>관리자 이</td>
					<td><a href="리뷰상세.jsp" value="확인">전체공지</a></td>
					
					<td>2020.12.12</td>
				</tr>
				<tr>
					<td>5</td>
					<td>관리자 백</td>
					<td><a href="리뷰상세.jsp" value="확인">공지</a></td>
					
					<td>2020.12.14</td>
				</tr>


			</table>

		</div>
		
			<div class="page">
		<ul class="pagination pagination-sm">
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
		</ul>
		</div>
	
</div>
</body>
</html>