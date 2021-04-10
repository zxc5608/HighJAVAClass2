<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/download.css">
<link rel="stylesheet" href="../css/main.css">
<style>
</style>
<script type="text/javascript">
function get(){
	alert("장바구니에 담았습니다")
}
function down(){
	alert("다운로드를 시작합니다")
	
}
</script>
</head>
<body>
 
<div id="nav">

        <a href="netmain.html" id="logo"><img class="logo" src="../images1/마크png.png"></a>
        <ul id="na">
            <li class="av"><a href="../seeavi/영화.jsp">영화보기</a></li>
            <li class="av"><a href="../shop/다운로드.jsp">다운로드</a></li>
            <li class="av"><a href="../community/커뮤니티.jsp">커뮤니티</a></li>
          
            <li class="av"><a href="../notice/notice.jsp">고객센터</a></li>
        <a href="../member/마이페이지.jsp" id="search"><img class="search1" src="../images1/닷지차저.jpg"></a>
        <a type="button" href="../shop/shopbasket.jsp" id="search"><img class="search" src="../images1/장바구니흰.jpg"></a>
        <a type="button" href="#" id="search"><img class="search" src="../images1/흰돋보기.JPG"></a>
                <input type="text" id="searchDown" placeholder="콘텐츠 검색" value="" class="MuiInputBase-input-128 MuiInput-input-116 jss86 jss96 jss77 MuiInputBase-inputAdornedStart-132">
        </ul>
        
    </div>
	<div id="bg1"></div>
	<div id="main_in">
	
	<table border=1;>
		<aside id="left">
		
		<h2>카테고리</h2>
		<ul id="leftbar">
			<li><a href="#" >로맨스</a></li>
			<li><a href="#">코미디</a></li>
			<li><a href="#">스릴러</a></li>
			<li><a href="#">액션 </a></li>
			<li><a href="#">공포 </a></li>
			<li><a href="#">SF </a></li>
			<li><a href="#">애니메이션 </a></li>
			<li><a href="#">다큐멘터리</a></li>
		
			
		</ul>
	</aside>
	
	
	
		<div id="menu">
		
			
			
			
			</div>	
				<div id="content">
					<h2>다운로드</h2>
					 <table class="list-table">
				      <thead>
				          <tr>
				              <th width="350">상품정보</th>
				              <th width="200">영화제목</th>
				              <th width="200">영화줄거리</th>
				              <th width="160">상품금액</th>
				              <th width="160">영화번호</th>
				              <th width="160">선택</th>
				           </tr>
				        </thead>
				     
				        <tbody>
				        <tr>
				          
				          <td width="300">
				          	<div class="bak_item">
								<div class="pro_img">
								<img src="../images1/영화2.jpg" alt="propic" title="propic" class="poster" />
								</div>
							<div class="pro_nt"></div>
						</div>
				          <td width="200">프로스트의 비밀정원</td>
				          <td width="350">프로스트의 비밀정원이 시작된다 올겨울 강타할 초대형 드라마영화 프로스트! 지금 다운받아보세요 요로로로로로롱</td>
				          </td>
				          <td width="150">￦4500</td>
				          <td width="150">10114</td>
				          <td width="100">
							<button class="mbutton" type="button" onclick="get()">
								<img class="cart" src="../images1/장바구니.png">담기
							</button>
							<button class="mbutton" type="button" onclick="down()">
								<img class="cart" src="../images1/다운로드.png">다운로드
							</button>

						</td>
				        </tr>
				      </tbody>
				 
				    </table>
								</div>
							</div>
	<footer></footer>
	
	
	
	
</body>
</html>