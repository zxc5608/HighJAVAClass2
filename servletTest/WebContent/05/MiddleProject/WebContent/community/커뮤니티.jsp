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
<link rel="stylesheet" href="../css/커뮤니티.css">
<link rel="stylesheet" href="../css/netmain.css">
<link rel="stylesheet" href="../css/main.css">
<script src="../js/jquery.serializejson.min.js"></script>

<script src="../js/community.js"></script>

<style>


</style>
<script>
	$(function(){
		
		listAll(1);
		
		countlist();
	
		
		
		$('#wsend').on('click', function(){
			commSaveServer();
			
			$('#wModal').modal('hide');
			$('wform .txt').val("");
		})
		
		$('.write1').on('click', function(){
			sgenre = $('.re').attr('value');
			$('#wform #genre1').val(sgenre);
		})
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

			<li class="av"><a href="../notice/notice.jsp">고객센터</a></li>
			<a href="../member/마이페이지.jsp" id="search"><img class="search1"
				src="../images1/닷지차저.jpg"></a>
			<a type="button" href="#" id="search"><img class="search"
				src="../images1/장바구니흰.jpg"></a>
			<a type="button" href="#" id="search"><img class="search"
				src="../images1/흰돋보기.JPG"></a>
			<input type="text" id="searchDown" placeholder="콘텐츠 검색" value=""
				class="MuiInputBase-input-128 MuiInput-input-116 jss86 jss96 jss77 MuiInputBase-inputAdornedStart-132">
		</ul>

	</div>

	<!-- 왼쪽 -->
<div class ="board">
	<div id='cssmenu'>
<ul>
   
   <li class='has-sub'><a href='#'><span>리뷰 게시글</span></a>
      <ul>
         <li><a href='#' class="re" value="로맨스"><span>로맨스</span></a></li>
         <li><a href='#' class="re" value="코미디"><span>코미디</span></a></li>
         <li><a href='#' class="re" value="스릴러"><span>스릴러</span></a></li>
         <li><a href='#' class="re" value="액션"><span>액션</span></a></li>
         <li><a href='#' class="re" value="공포"><span>공포</span></a></li>
         <li><a href='#' class="re" value="SF"><span>SF</span></a></li>
         <li><a href='#' class="re" value="애니"><span>애니</span></a></li>
         <li class='last'><a href='#' value="다큐"><span>다큐</span></a></li>
      </ul>
   </li>
   <li class='has-sub'><a href='#'><span>작품요청하기</span></a>
      <ul>
          <li><a href='#' value="로맨스"><span>로맨스</span></a></li>
         <li><a href='#' value="코미디"><span>코미디</span></a></li>
         <li><a href='#' value="스릴러"><span>스릴러</span></a></li>
         <li><a href='#' value="액션"><span>액션</span></a></li>
         <li><a href='#' value="공포"><span>공포</span></a></li>
         <li><a href='#' value="SF"><span>SF</span></a></li>
         <li><a href='#' value="애니"><span>애니</span></a></li>
         <li class='last'><a href='#' value="다큐"><span>다큐</span></a></li>
      </ul>
   </li>

</ul>
</div>
<div class="review">


	<!-- 	 	<h2>리뷰 게시판</h2>
				<a href="리뷰작성.jsp"><button class="write1" type="submit">글쓰기</button></a>
				<table>
					<caption>
						<span>이벤트 당첨자</span>
					</caption>
					<tr class="view">
						<th><span>번호</span></th>
						<th><span>작성자</span></th>
						<th><span>제목</span></th>
						<th><span>조회수</span></th>
						<th><span class="bb">작성일자</span></th>
					</tr>
					<tr class='review1'>
					 <td></td>
						<td></td>
						<td><a href="리뷰상세.jsp" value="확인"></a></td>
						<td>99</td>
						<td></td> 
						
						
					</tr>
			


				</table> -->


			</div>
</div>
</div>

	



					<tr class="_noticeArticle board-notice type_main">
						<td colspan="2" class="td_article">

							<div class="board-tag">
								<strong class="board-tag-txt"> </strong>
							</div>
							<div class="board-list">
								<div class="inner_list">

									<a href="#" class="article"> </a> <a href="#"
										class="cmt"> </a>
								</div>
							</div>
						</td>

						<td class="td_name"><div class="pers_nick_area">
								<table role="presentation" cellspacing="0">
									
								</table>
							</div>
						<td class="td_date"></td>
						<td class="td_view"></td>

						<td class="td_likes"></td>

					</tr>

				</tbody>
			</table>



		
			<div class="qqua">
			
			<input type="text" id="query" name="query" placeholder="영화제목을 입력해주세요" value="">
			<button class="write2">검색</button>
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
	
	
	<!-- Modal -->
<div id="wModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Modal Header</h4>
      </div>
      <div class="modal-body">
	
		<form id="wform">
			
		
			
		
			<label>제목:</label> 
			<input type='text' class="txt" id='title' name="title"><br>
			<label>내용:</label>
			<textarea rows="10" cols="50"  class="txt" name="cont"></textarea>
			 
			<label>제목:</label> 
			<input type='text' class="txt" id='title' name="ganre"><br>
			
			<label>이름:</label> 
			<input type='text' class="txt" id='name' name= "writer"><br>
		
		
			<br>
			
			<input type='button' value='확인' id="wsend">			<br>
		</form>	
		
	</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
	

		
</body>
</html>