<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/마이페이지.css">

<link rel="stylesheet" href="../css/main.css">

<script>
function setThumbnail(event) {
		var reader = new FileReader();
		
		reader.onload = function(event) {
		var img = document.createElement("img");
		img.setAttribute("src", event.target.result);
		img.setAttribute("id", "img2");
		
		
		
		var oldImgs = document.querySelector("div#image_container").getElementsByTagName("img")[0];
		//console.log("old=" + oldImgs);
		if(oldImgs!=null){
			document.querySelector("div#image_container").replaceChild(img, oldImgs);
			
		} else{
			document.querySelector("div#image_container").appendChild(img);
			
		}
	};
	reader.readAsDataURL(event.target.files[0]);
}

$(function() {
	$('#clear').on('click',function(){
		document.location.reload(true);
	})
})



</script>
</head>
<body>

<div id="nav">

        <a href="../seeavi/netmain.jsp" id="logo">
       
       <img class="logo" src="../images1/넷플릭.JPG"></a>
        <ul id="na">
            <li class="av"><a href="../seeavi/영화.jsp">영화보기</a></li>
            <li class="av"><a href="../seeavi/다운로드.jsp">다운로드</a></li>
            <li class="av"><a href="../community/커뮤니티.jsp">커뮤니티</a></li>
          
            <li class="av"><a href="index.jsp">고객센터</a></li>
        <a href="Mypage.jsp" id="search"><img class="search1" src="../images1/닷지차저.jpg"></a>
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
		
			<li><a href="Mypage.jsp" >나의 개인정보</a></li>
			<li><a href="Mypage.jsp" >개인정보 수정</a></li>
			<li><a href="본인인증.jsp">본인인증</a></li>
			<li><a href="이용권결제.jsp">이용권결제</a></li>
			<li><a href="회원탈퇴.jsp">회원탈퇴 </a></li>
		
			
		</ul>
	</aside>
	
<div class ="myform">


 	<!-- <div class="profile"><img src="../images1/영화3.jpg" alt="Movie Title"></div> -->
 	
	 <div id="image_container"></div>

	<h2> <%=request.getAttribute("name") %>님 환영 합니다</h2>
	<p>
	
	</p>

		<br><br><br><br>
	  <form>
            <fieldset>
                <legend>이메일</legend>
          			hs10213@naver.com	
            </fieldset>
            <fieldset>
                <legend>전화번호</legend>
            010-1234-1234
            </fieldset>
            <fieldset>
                <legend>성별</legend>
                남성 <input type="radio" name="gender" value="male" checked />
                여성 <input type="radio" name="gender" value="female" />
            </fieldset>
            <fieldset>
                <legend>취미</legend>
                운동 <input type="checkbox" name="hobby" value="exercise" checked />
                영화 <input type="checkbox" name="hobby" value="movie" />
                음악 <input type="checkbox" name="hobby" value="music" />
                기타 <input type="checkbox" name="hobby" value="ect" />
            </fieldset>
        </form>
	  
	  
			
	  <br><br>
	  <input type="submit" value="확인" class="submit-btn">
	  <input type="reset" id="clear" value="취소" class="submit-btn">
	  
</div>
</body>
</html>