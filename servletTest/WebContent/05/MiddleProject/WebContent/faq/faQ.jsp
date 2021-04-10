<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>Insert title here</title>

<link rel="stylesheet" href="../css/Qna.css">
<link rel="stylesheet" href="../css/netmain.css">
<link rel="stylesheet" href="../css/main.css">
<script src="../js/jquery-3.5.1.min.js"></script>
<style>
</style>
<script>

</script>
</head>
<body>
<div class="back">
	<!-- 상단바 -->
	<div id="nav">

		<a href="../seeavi/netmain.jsp" id="logo"><img class="logo"
			src="../images1/넷플릭.JPG"></a>
		<ul id="na">
			<li class="av"><a href="../seeavi/영화.jsp">영화보기</a></li>
			<li class="av"><a href="../seeavi/다운로드.jsp">다운로드</a></li>
			<li class="av"><a href="../community/커뮤니티.jsp">커뮤니티</a></li>

			<li class="av"><a href="index.jsp">고객센터</a></li>
			<a href="마이페이지.jsp" id="search">
			
			<img class="search1" src="../images1/닷지차저.jpg"></a>
			
			<a type="button" href="#" id="search"><img class="search" src="../images1/장바구니흰.jpg"></a>
			<a type="button" href="#" id="search"><img class="search" src="../images1/흰돋보기.JPG"></a>
			
			<input type="text" id="searchDown" placeholder="콘텐츠 검색" value=""
				class="MuiInputBase-input-128 MuiInput-input-116 jss86 jss96 jss77 MuiInputBase-inputAdornedStart-132">
		</ul>

	</div>

	<!-- 왼쪽 -->
<div class ="board">
	<div id='cssmenu'>
<ul>
   
    <li class='has-sub'><a href='../notice/notice.jsp'><span>공지사항</span></a>
  
   </li>
   <li class='has-sub'><a href='../faq/faQ.jsp'><span>자주묻는질문</span></a>
    
   </li>
   <li class='has-sub'><a href='../qna/Qna.jsp'><span>Q&A</span></a>
  
   </li>
   
   
   </ul>
   </div>
   </div>
   
   
<div class="review">

<!-- 아코디언 게시판 만들기  -->
<div class="container">
  <h2 class="title">자주 묻는 질문</h2>
  
  
<br>
<br>
<br>  
  
 <table>
 	<th></th>
 </table>
  <div class="panel-group" id="accordion">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse20" class="acco">
          	1      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   자주묻는 질문
          
          
          </a>
        </h4>
      </div>
      <div id="collapse20" class="panel-collapse collapse "> <!-- in이 있으면 열려있는거 -->
        <div class="panel-body">
          
         
          <p  class="p1">
                      질문 번호: 3   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     
                   게시날짜 : 2020.12.02      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
          <br><br><br>  
                      내용 : 영상다운로드하기
           </p>
           
       
     
        
        
        <!--답변  -->
          <hr>
          <p class="p1">
          	
          	 영상다운로드는 영상 다운로드 페이지에서 <br>
          	 장바구니에 담아서 
          </p>
         
        </div>
      </div>
    </div>
  </div> 
</div>


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