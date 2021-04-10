<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/singoM.css">	
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

<style>

</style>
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
	<h1 id="contw">신고 회원 관리</h1>

<!-- 아코디언 게시판 만들기  -->
<div class="container">
  <h2>신고된 회원 게시판</h2>
 <table>
 	<th>신고된 회원 아이디</th>
 </table>
  <div class="panel-group" id="accordion">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse20">신고당한아이디1</a>
        </h4>
      </div>
      <div id="collapse20" class="panel-collapse collapse "> <!-- in이 있으면 열려있는거 -->
        <div class="panel-body">
          <p  class="p1">
                      신고 번호 : 01   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      신고한 아이디     : dlkf1234   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      
                     신고일자 : 2020.12.02      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
                      신고사유 : 욕설  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          </p>
          <div class="stopd">
          	<select name="due" class="due">
				<option value="">회원정지기간</option>
				<option value="1">1주</option>
				<option value="2">2주</option>
				<option value="2">3주</option>
				<option value="2">4주</option>
				<option value="2">5주</option>
				<option value="2">6주</option>
			</select>
          </div>
          <p class="p2">
             <button type="button" idx="20" name="" class="btn btn-danger">계정정지</button>
          </p>
          <hr>
          <p>
                    내용 불러오기 잘 부탁드립니다<br>
                       여기에는 신고 당한 사람의 글을 불러와주세욤
          </p>
         
        </div>
      </div>
    </div>
  </div> 
</div>





</body>
</html>