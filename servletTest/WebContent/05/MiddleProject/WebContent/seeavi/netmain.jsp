<%@page import="VO.memberVO"%>
<%@page import="VO.movieVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../js/netmain.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

 <meta name="viewport" content="width=device-width, initial-scale=1">


<style>

</style>

<script>
$(function(){


	$.ajax({
			url : '/MiddleProject/ViewsList.do',
			type : 'post',
			success : function(res){
				code = "";
				$.each(res, function(i,v){
					code += "<a href=../seeavi/상세보기.jsp><div class=swiper-slide><img src=" + v.imgpath + " alt=" + v.mo_nm + "></div></a>";
				})
				$('.swiper-wrapper3').html(code);
			},
			error : function(xhr){
				alert("상태 : " + xhr.status);
			},
			dataType : 'json'
	})
	
	$("#right").click(function() {
	  var currentLeft = parseInt($('.swiper-wrapper1').css('left'));
	  $('.swiper-wrapper1').css('left', (currentLeft - 800) + 'px');
	})

	$('#left').click(function() {
	  var currentLeft = parseInt($('.swiper-wrapper1').css('left'));
	  $('.swiper-wrapper1').css('left', (currentLeft + 800) + 'px');
	})
})
</script>
</head>
<body>


<!-- Swiper -->
 
    <div class="jb-box">
      <video muted autoplay loop id="#bgvid">
        <source src="./trailer.mp4" type="video/mp4">
      </video>
      <!-- 여기 -->
      
         <div id="polina">
         
        <h1 id="btitle">공룡이 날아다닌다</h1>
        <p>2015년 개봉작
            <p/>
                <a href="http://google.com" id="ggtitle">영상보러가기</a>
            <p>
       [오늘의 상영작 공룡이 날아다니고 눈이온다!!!!!]
                공룡이 날아다니고 눈이오고 어떤여자가 걸어다니고
       공룡 새퀴가 쳐다본다!!! 오늘 나온 최신작 엄청재미있는
       블록버스터 애니메이션이 보려고 난리가 나나싼암ㄴ아
 
            </p>
    
    </div>
    <!-- 요기 -->
      <div class="jb-text">
      <div id="nav">

        <a href="netmain.jsp" id="logo"><img class="logo" src="../images1/savi.png"></a>
        <ul id="na">
            <li class="av"><a href="영화.jsp">영화보기</a></li>
            <li class="av"><a href="../shop/다운로드.jsp">다운로드</a></li>
            <li class="av"><a href="../community/커뮤니티.jsp">커뮤니티</a></li>
            <li class="av"><a href="index.jsp">고객센터</a></li>


				<!--기존 마이페이지 위치  -->

					<div class="dropdown" id="search">
						
						<button class="dropbtn">
							<img class="mylog" src="../images1/닷지차저.jpg">
						</button>
						
						<div class="dropdown-content">
							<a href="../member/마이페이지.jsp">마이페이지</a> 
							<a href="#">로그아웃</a> 
							<a href="#">영화 이어서보기</a> 
							
						</div>
					</div>



		<!--  <a href="../member/MyPage.jsp" id="search"><img class="search1" src="../images1/닷지차저.jpg"></a> -->
        <a type="button" href="#" id="search"><img class="search" src="../images1/장바구니흰.jpg"></a>
        <a type="button" href="#" id="search"><img class="search" src="../images1/흰돋보기.JPG"></a>
                <input type="text" id="searchDown" placeholder="콘텐츠 검색" value="" class="MuiInputBase-input-128 MuiInput-input-116 jss86 jss96 jss77 MuiInputBase-inputAdornedStart-132">
        </ul>
        
    </div>
      </div>
    </div>
    <div class="netflix-slider">
    <h2 id="title">회원님의 선호 장르 영화</h2>
    <div class="swiper-container">
    <div class="swiper-wrapper1"></div>
      
	<div id="left" class="button-overlay left">&#9664;</div>
	<div id="right" class="button-overlay right">&#9654;</div>
    </div>
  </div>

  <div class="netflix-slider">
    <h2 id="title">추천 영화</h2>
    <div class="swiper-container">
      <div class="swiper-wrapper2"></div>
      <!-- Add Pagination -->
      <!-- <div class="swiper-pagination"></div> -->
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
    </div>
  </div>
  
  <div class="netflix-slider">
    <h2 id="title">사람들이 많이 보는 영화</h2>
    <div class="swiper-container">
      <div class="swiper-wrapper3"></div>
      <!-- Add Pagination -->
      <!-- <div class="swiper-pagination"></div> -->
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
    </div>
  </div>
  

  <!-- Swiper JS -->
  <script src="../package/js/swiper.min.js"></script>

  <!-- Initialize Swiper -->
  <script>
    var swiper = new Swiper('.swiper-container', {
      slidesPerView: 6,
      spaceBetween: 10,
      slidesPerGroup: 2,
      pagination: {
        el: '.swiper-pagination',
        clickable: true,
      },
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
        
      },
    });
  </script>
</body>
</html>