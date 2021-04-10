<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../css/상세보기.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script src="../js/jquery.serializejson.min.js"></script>

<script src="../js/detailview.js"></script>

<script>

$(function(){
	
	listAll();
	
	
})

</script>
</head>
<body>
	<div class="move">
		<img class="movie" src="../images1/영화5.jpg">
		<h1>설국열차</h1>
		<p>
			얼어 붙은 지구 살아남으려면 끝없이 달려야<br> 한다 마지막 인류를 싣고 선로를 따라 순환하는 열차.<br>
			조금만 미끄러져도 파멸이 다가온다. 그래도 혁명을<br> 포기할 수 는 없다.<br>
			<br>
		</p>
		<button class="play" type="button">▶재생</button>
		<button class="cont" type="button">+콘텐츠 찜하기</button>

		<br>
		<br>
		<p>
			주연: 제니퍼 코넬리 ,다비드 디그스<br> 장르: TV드라마 범죄, TV프로그램 <br> 프로그램 특징:
			은밀한 다크 <br>
		</p>
		<br><br>
			<h2>이 영화의 별점</h2>
						<!-- 1점씩 별하나 체크하도록 -->
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star"></span>
		<span class="fa fa-star"></span> 3.2점

	</div>


	<div class="colo">

		
	  	<h2 id="mreview">영화리뷰 요약</h2>
	  	<div class="col">
	 	<!-- 	<div class="panel panel-default text-center">
				<div class="panel-footer">
					<h3>$19</h3>
					<h4>per month</h4>
				</div>
				<button class="btn btn-lg" onclick="location.href='../community/커뮤니티.jsp'">리뷰보러가기</button>
			</div> -->
		</div>
	</div>



</body>
</html>