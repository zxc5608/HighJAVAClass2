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

<link rel="stylesheet" href="../css/notice.css">
<link rel="stylesheet" href="../css/netmain.css">
<link rel="stylesheet" href="../css/main.css">
<script src="../js/jquery-3.5.1.min.js"></script>
<style>
</style>
<script>
	$(function() {

	})
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
			<li class="av"><a href="../shop/다운로드.jsp">다운로드</a></li>
			<li class="av"><a href="../community/커뮤니티.jsp">커뮤니티</a></li>

			<li class="av"><a href="index.jsp">고객센터</a></li>
			<a href="마이페이지.jsp" id="search"><img class="search1"
				src="../images1/닷지차저.jpg"></a>
			<a type="button" href="#" id="search"><img class="search"
				src="../images1/장바구니흰.jpg"></a>
			<a type="button" href="#" id="search"><img class="search"
				src="../images1/흰돋보기.JPG"></a>
			<input type="text" id="searchDown" placeholder="콘텐츠 검색" value=""
				class="132">
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

<h2>공지사항</h2>

			
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
					<td><a href="../notice/noticeDetail.jsp" value="확인">상영작 신청 공지</a></td>
					
					<td>2020.12.10</td>
				</tr>
				<tr>
					<td>2</td>
					<td>관리자 김</td>
					<td><a href="리뷰상세.jsp" value="확인">신고된 유저 공지</a></td>
					
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