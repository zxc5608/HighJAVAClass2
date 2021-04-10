 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/memberlistM.css">	
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
	 <img class="logo" src="../images/넷플릭스_로고.png" alt="로고" align="left">
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

<div id="word">회원 관리</div> 
<br><br>

<hr>
	<a href="<%=request.getContextPath() %>/admin/main.jsp" class="back">←  관리자 페이지로 돌아가기</a>
<hr>
	<h1 id="contw">회원 목록</h1>



<!-- 게시판 테이블 -->
	<div class="review">
		<h2 id="listmember">회원 List</h2>
		<table>
			<caption>
				<span>회원 list</span>
			</caption>
			<tr class="aa">

				<th><span>회원번호</span></th>
				<th><span>회원ID</span></th>
				<th><span>이름</span></th>
				<th><span>결제여부</span></th>
			
			</tr>
			<tr>
				<td>1</td>
				<td>a0123</td>
				<td>황시연</td>
				<td>정회원</td>
			</tr>
			<tr>
				<td>2</td>
				<td>a0123</td>
				<td>백수진</td>
				<td>정회원</td>
			</tr>
			<tr>
				<td>3</td>
				<td>a0123</td>
				<td>안용현</td>
				<td>정회원</td>
			</tr>
			<tr>
				<td>4</td>
				<td>a0123</td>
				<td>이연승</td>
				<td>정회원</td>
			</tr>
			
			<tr>
				<td>5</td>
				<td>a0123</td>
				<td>김형석</td>
				<td>정회원</td>
			</tr>
			
			<tr>
				<td>6</td>
				<td>a0123</td>
				<td>황시연</td>
				<td>정회원</td>
			</tr>
			
			<tr>
				<td>7</td>
				<td>a0123</td>
				<td>황시연</td>
				<td>정회원</td>
			</tr>
			
			<tr>
				<td>8</td>
				<td>a0123</td>
				<td>황시연</td>
				<td>정회원</td>
			</tr>
			
			<tr>
				<td>9</td>
				<td>a0123</td>
				<td>황시연</td>
				<td>정회원</td>
			</tr>
			<tr>
				<td>10</td>
				<td>a0123</td>
				<td>황시연</td>
				<td>정회원</td>
			</tr>
			


		</table>
		
	<div class="page">
		<ul class="pagination pagination-sm">
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
		</ul>
		</div>
		
		
		</body>
</html>





