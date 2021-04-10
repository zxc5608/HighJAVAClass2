<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<title>Insert title here</title>
<link rel="stylesheet" href="../css/movie.css">
<link rel="stylesheet" href="../css/netmain.css">

<link rel="stylesheet" href="../css/layer.css">
<link rel="stylesheet" href="../css/main.css">

<style>
 

</style>
<script type="text/javascript">
	function get() {
		alert("장바구니에 추가되었습니다.");
	}
	function down() {
		alert("결제 해주세요.");
	}


</script>
</head>
<body>


	<div id="nav">

		<a href="netmain.jsp" id="logo"><img class="logo"
			src="../images1/seeavi.JPG"></a>
		<ul id="na">
			<li class="av"><a href="../seeavi/영화.jsp">영화보기</a></li>
			<li class="av"><a href="../shop/다운로드.jsp">다운로드</a></li>
			<li class="av"><a href="../community/커뮤니티.jsp">커뮤니티</a></li>
			<li class="av"><a href="../notice/notice.jsp">고객센터</a></li>



			<a href="../member/마이페이지.jsp" id="search"><img class="search1"
				src="../images1/닷지차저.jpg"></a>
			<a type="button" href="#" id="search"><img class="search"
				src="../images1/장바구니흰.jpg"></a>
			<a href="#" id="search"><img class="search"
				src="../images1/흰돋보기.JPG"></a>
			<input type="text" id="searchDown" placeholder="콘텐츠 검색" value=""
				class="MuiInputBase-input-128 MuiInput-input-116 jss86 jss96 jss77 MuiInputBase-inputAdornedStart-132">

		</ul>

	</div>


	<aside id="left">

		<div>
			<h2 id="cate">작품 상영 카테고리</h2>

			<select id="categ" onchange="location.href=this.value">
				<option value="#" selected>카테고리</option>
				<option value="#">로맨스</option>
				<option value="../seeavi/영화.jsp">코미디</option>
				<option value="#">스릴러</option>
				<option value="#">액션</option>
				<option value="#">공포</option>
				<option value="#">SF</option>
				<option value="#">애니</option>
				<option value="#">다큐</option>

			</select>



		</div>



	</aside>

	<!-- Swiper -->


	<div class="netflix-slider">
		<h2 id="title">추천영화</h2>
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<a href="상세보기.jsp">
					<div class="swiper-slide">
						<img src="../images1/영화5.jpg" alt="Movie Title">
					</div>
				</a> <a href="상세보기.jsp"><div class="swiper-slide">
						<img src="../images1/영화3.jpg" alt="Movie Title">
					</div></a> <a href="상세보기.jsp"><div class="swiper-slide">
						<img src="../images1/영화2.jpg" alt="Movie Title">
					</div></a> <a href="상세보기.jsp"><div class="swiper-slide">
						<img src="../images1/영화1.jpg" alt="Movie Title">
					</div></a> <a href="상세보기.jsp"><div class="swiper-slide">
						<img src="../images1/영화4.jpg" alt="Movie Title">
					</div></a> <a href="상세보기.jsp"><div class="swiper-slide">
						<img src="../images1/영화3.jpg" alt="Movie Title">
					</div></a> <a href="상세보기.jsp"><div class="swiper-slide">
						<img src="../images1/영화5.jpg" alt="Movie Title">
					</div></a> <a href="상세보기.jsp"><div class="swiper-slide">
						<img src="../images1/영화2.jpg" alt="Movie Title">
					</div></a> <a href="상세보기.jsp"><div class="swiper-slide">
						<img src="../images1/영화1.jpg" alt="Movie Title">
					</div></a>

			</div>

			<!-- Add Pagination -->
			<!-- <div class="swiper-pagination"></div> -->
			<div class="swiper-button-next"></div>
			<div class="swiper-button-prev"></div>
		</div>
	</div>

	<div class="netflix-slider">
		<h2 id="title">순위</h2>
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<a href="상세보기.jsp"><div class="swiper-slide">
						<img src="../images1/영1.jpg" alt="Movie Title">
					</div></a> <a href="상세보기.jsp"><div class="swiper-slide">
						<img src="../images1/영2.jpg" alt="Movie Title">
					</div></a> <a href="상세보기.jsp"><div class="swiper-slide">
						<img src="../images1/영3.jpg" alt="Movie Title">
					</div></a> <a href="상세보기.jsp"><div class="swiper-slide">
						<img src="../images1/영4.jpg" alt="Movie Title">
					</div></a> <a href="상세보기.jsp"><div class="swiper-slide">
						<img src="../images1/영5.jpg" alt="Movie Title">
					</div></a> <a href="상세보기.jsp"><div class="swiper-slide">
						<img src="../images1/영6.jpg" alt="Movie Title">
					</div></a> <a href="상세보기.jsp">
					<div class="swiper-slide">
						<img src="../images1/영7.jpg" alt="Movie Title">
					</div>
				</a> <a href="상세보기.jsp">
					<div class="swiper-slide">
						<img src="../images1/영1.jpg" alt="Movie Title">
					</div>
				</a> <a href="상세보기.jsp"><div class="swiper-slide">
						<img src="../images1/영2.jpg" alt="Movie Title">
					</div></a>

			</div>
			
			<!-- Add Pagination -->
			<!-- <div class="swiper-pagination"></div> -->
			<div class="swiper-button-next"></div>
			<div class="swiper-button-prev"></div>
		</div>
	</div>

 <a href="javascript:void(0)" id="btn_popup_open">팝업 열기</a>
        <div class="popup_panel">
        
            <div id="draggable" class="ui-widget-cont">
          
            <div class="popup_contents">
				<div>
                <a href="javascript:void(0)" id="btn_popup_close"><button>X</button></a>
                
					<video muted autoplay loop id="#bgvi" id= "pmovie">
						<source src="./trailer.mp4" type="video/mp4">
					</video>
				
				</div>
			</div>
            </div>
        </div>
        <script type="text/javascript">
        
        $(function() {
        	
    		 $( "#draggable" ).draggable();
    	
                var $panel = $(".popup_panel");
 
                var $panelContents = $panel.find(".popup_contents");
 
                $("#btn_popup_open").on("click", function(e) {
 //////////////	
            
                    // 레이어 팝업 열기
                    $panel.fadeIn();
                });
 
                // 팝업 닫기 이벤트 정의
                $("#btn_popup_close").on("click", popupClose);
 
                // 팝업 배경 클릭 이벤트 정의
                $panel.find(".popup_bg").on("click", popupClose);
 
                function popupClose(e) {
 
                    $panel.fadeOut();
 
                    // 이벤트 기본 동작 중단
                    e.preventDefault();
                }
            });
        </script>

</body>
</html>