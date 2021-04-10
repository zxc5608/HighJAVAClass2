<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/noticeM.css">	
<!-- <link rel="stylesheet" href="../css/Qna.css"> -->
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

$('#button-w').on('click',function(){
	
	//$('#uModal').modal('hide');
	//$('#uform .txt').val("");
	$('#uform .txt').modal('show');
})
$('#button-u').on('click',function(){
	
	//$('#uModal').modal('hide');
	$('#upform .tt').modal('show');
	//$('#upform .tt').val("");
})

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

<div id="word">공지사항</div> 
<br><br>
<hr>
	<a href="<%=request.getContextPath() %>/admin/main.jsp" class="back">←  관리자 페이지로 돌아가기</a>

<hr>
	<h1 id="contw">공지사항 상세보기</h1>
	
	
	
	
	
	
	
	
	
	
	
	




<div class="tabtab">
<table class="tab" > 
 
        <colgroup>
            <col width="15%">
            <col width="35%">
            <col width="15%">
            <col width="*">
        </colgroup> 
         
         <tbody class="tbady"> 
        
            <tr>
                <th class="th_th">공지제목</th>
                <td class="td_td">상영작 신청공지 </td>
                <th class="th_th">공지번호</th>
                <td class="td_td">42</td>
            </tr>
            
            <tr>
                <th class="th_th">관리자 이름</th>
                <td class="td_td">관리자 안</td>
                <th class="th_th">작성일자</th>
                <td class="td_td">2020.12.10</td>
            </tr>
            <tr>
                <th class="th_th">내용</th>
                <td colspan="3" class="td_td">
                           공지사항공지사항공지사항공지사항공지사항공지사항공지사항<br>
	                  공지사항공지사항공지사항공지사항공지사항공지사항공지사항<br>
	                  공지사항공지사항공지사항공지사항공지사항공지사항공지사항<br>
	                  공지사항공지사항공지사항공지사항공지사항공지사항공지사항<br>
	                  공지사항공지사항공지사항공지사항공지사항공지사항공지사항<br>
	                  공지사항공지사항공지사항공지사항공지사항공지사항공지사항<br>
	                  공지사항공지사항공지사항공지사항공지사항공지사항공지사항<br>
	                  
	                  
                </td>
            </tr>
            <tr></tr>

				</tbody> 
    </table>
   </div>
       <br><br>
       <button type="button" class="btn  btn-danger" id="redbu">삭제하기</button>
       <br><br>
       <a href="<%=request.getContextPath() %>/admin/noticeM.jsp"><button type="button" class="btn  btn-danger" id="redbu">뒤로가기</button></a>
    
	
</body>
</html>