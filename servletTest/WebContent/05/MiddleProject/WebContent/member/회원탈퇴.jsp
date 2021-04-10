<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/마이페이지.css">

<link rel="stylesheet" href="../css/main.css">
</head>
<body>

<div id="nav">

        <a href="../seeavi/netmain.jsp" id="logo"><img class="logo" src="../images1/넷플릭.JPG"></a>
        <ul id="na">
            <li class="av"><a href="../seeavi/영화.jsp">영화보기</a></li>
            <li class="av"><a href="../seeavi/다운로드.jsp">다운로드</a></li>
            <li class="av"><a href="../seeavi/다운로드.jsp">커뮤니티</a></li>
          
            <li class="av"><a href="index.jsp">고객센터</a></li>
        <a href="마이페이지.jsp" id="search"><img class="search1" src="../images1/닷지차저.jpg"></a>
        <a type="button" href="#" id="search"><img class="search" src="../images1/장바구니흰.jpg"></a>
        <a type="button" href="#" id="search"><img class="search" src="../images1/흰돋보기.JPG"></a>
                <input type="text" id="searchDown" placeholder="콘텐츠 검색" value="" class="MuiInputBase-input-128 MuiInput-input-116 jss86 jss96 jss77 MuiInputBase-inputAdornedStart-132">
        </ul>
        
    </div>
    <div>
    <h2 class="mypage">마이페이지</h2>
    </div>
		
<div class="move">
<table border=1;>
<aside id="left">
		<h2>카테고리</h2>
		<ul id="leftbar">
			<li><a href="마이페이지.jsp" >개인정보 수정</a></li>
			<li><a href="본인인증.jsp">본인인증</a></li>
			<li><a href="이용권결제.jsp">이용권결제</a></li>
			<li><a href="회원탈퇴.jsp">회원탈퇴 </a></li>
		
			
		</ul>
	</aside>
	
<div class ="myform">


 	<div class="profile"><img src="../images1/영화3.jpg" alt="Movie Title"></div>

	<h2> @@ 님 회원을 탈퇴하시겠습니까?</h2>
	<p>
		회원을 탈퇴하시려면 정보를 입력해주세요
	</p>

		<br><br><br><br>
	  <input type="password" name="password" class="text-field" placeholder="현재 비밀번호"><br><br>
	 
	    <input type="submit" value="회원탈퇴" class="submit-btn">
</div>
</body>
</html>