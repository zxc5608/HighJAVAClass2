<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<script src="../js/reply.js"></script>
  <style>
  .bton{
  	float: right;
  	color:black;
  	width:50px;
  }
  </style>
<script>
$(function() {
	
	listdetailAll();
	
	replyListServer();
	
	//수정클릭
	$('.box').on('click','.bton',function(){
		vname=$(this).attr('name');
		vidx=$(this).attr('idx');
		
		if(vname=='modify'){
			$('#reupModal').modal('show')
		
		}
		else if(vname=='delete'){
		//alert(vidx+"번글 삭제")	
			replydelete(this)
			
		}
	})
	
	//모달 수정폼에서 확인버튼클릭
	$('#reup').on('click',function(){
		
		//수정된 내용가져오기 
		modicont = $('#recont').val();
		
		replyupdate(vidx);
		
		
	
		alert(modicont)
		//수정폼 사라지고 수정내용으로 출력
		
		
		
	})
		

	$('.nput').on('click',function(){
		
		//alert("등록")
		replyinsert(this);
		
	})
	
	$('#modify').on('click',function(){
		vcom = $(this).attr('com_no');
		//모달창에서 수정된 내용을 가져온다
		
		comm.title=$('#upform #title').val(title);
		comm.cont=$('#upform #cont').val(cont);
		comm.com_no=com;
		
		commUpdateServer();
		
		$('#upModal').modal('hide');
		$('#upform .txt').val("");
	})
	

})


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
<!--리뷰작성  -->
<!-- 상단바 -->


<div class="box">


<div id="nav">

        <a href="../seeavi/netmain.jsp" id="logo"><img class="logo" src="../images1/넷플릭.JPG"></a>
        <ul id="na">
            <li class="av"><a href="../seeavi/영화.jsp">영화보기</a></li>
            <li class="av"><a href="../shop/다운로드.jsp">다운로드</a></li>
            <li class="av"><a href="../community/커뮤니티.jsp">커뮤니티</a></li>
            <li class="av"><a href="index.jsp">고객센터</a></li>
           
        <a href="../member/마이페이지.jsp" id="search"><img class="search1" src="../images1/닷지차저.jpg"></a>
        <a type="button" href="#" id="search"><img class="search" src="../images1/장바구니흰.jpg"></a>
        <a type="button" href="#" id="search"><img class="search" src="../images1/흰돋보기.JPG"></a>
                <input type="text" id="searchDown" placeholder="콘텐츠 검색" value="" class="MuiInputBase-input-128 MuiInput-input-116 jss86 jss96 jss77 MuiInputBase-inputAdornedStart-132">
        </ul>
        
    </div>
 <div class ="board">
 
	<div id='cssmenu'>
<ul>
   
   <li class='has-sub'><a href='#'><span>리뷰 게시글</span></a>
      <ul>
         <li><a href='#'><span>로맨스</span></a></li>
         <li><a href='#'><span>코미디</span></a></li>
         <li><a href='#'><span>스릴러</span></a></li>
         <li><a href='#'><span>액션</span></a></li>
         <li><a href='#'><span>공포</span></a></li>
         <li><a href='#'><span>SF</span></a></li>
         <li><a href='#'><span>애니</span></a></li>
         <li class='last'><a href='#'><span>다큐</span></a></li>
      </ul>
   </li>
   <li class='has-sub'><a href='#'><span>작품요청하기</span></a>
      <ul>
          <li><a href='#'><span>로맨스</span></a></li>
         <li><a href='#'><span>코미디</span></a></li>
         <li><a href='#'><span>스릴러</span></a></li>
         <li><a href='#'><span>액션</span></a></li>
         <li><a href='#'><span>공포</span></a></li>
         <li><a href='#'><span>SF</span></a></li>
         <li><a href='#'><span>애니</span></a></li>
         <li class='last'><a href='#'><span>다큐</span></a></li>
      </ul>
   </li>

</ul>
</div>
<div class="review-2"></div>
<div class="ta">
    <a href="커뮤니티.jsp" id="list" class="button-w">목록으로</a>
    <a href="#this" id="modify" class="button-u"data-toggle="modal" data-target="#upModal">수정하기</a>
    <a href="#this" id="siren" class="button-w" data-toggle="modal" data-target="#myModal">신고하기</a>
</div>

<div class="tabtab">
<table class="tab" >
       <h2 id= "see">상세보기</h2><br>
        <colgroup>
            <col width="15%">
            <col width="35%">
            <col width="15%">
            <col width="*">
        </colgroup> 
         
         <tbody class="tbady"> 
        
  <!--           <tr>
                <th class="th_th">제목</th>
                <td class="td_td">기생충</td>
                
                <th class="th_th">조회수</th>
                <td class="td_td">42</td>
            </tr>
            
            <tr>
                <th class="th_th">작성자</th>
                <td class="td_td">김두한</td>
                
                <th class="th_th">작성시간</th>
                <td class="td_td">2020.12.10</td>
            </tr>
            <tr>
                <th class="th_th">내용</th>
                <td colspan="3" class="td_td">
                            주연배우 송강호씨의 연기가 엄청나고 다른배우들의 섬세한<br>
	                   연기도 일품입니다 이프로그램에서 보니까 오지고지리네요<br>
                </td>
            </tr>
            <tr></tr> -->

				</tbody> 
    </table>
   </div>
          <br><br><br>
  
          
      <div class="rreple">
    <!--  <h2>댓글</h2><br>
	<p class="p1">
	
		Tm32 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2020-12-10 19:12:08
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br>
			<br>
		<span class="cont">댓글입니다~</span>
		</p> -->
     </div> 
     
 

		<input type="text" placeholder="댓글달기 " value="" id="rereple" class="rereple">
 		<button class="nput">입력</button>
 		
	</div>
	<!-- 신고하기 modal -->
<div id="myModal" class="modal fade" role="dialog">
 <div class="modal-dialog">
	
  <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">신고하기</h4>
      </div>
      <div class="modal-body">
	
		<form id="uform">
			
			<label>신고할 아이디</label> 
			<input type='text' class="txt" id='name' name= "writer">
			<br> 
			<br> 
			
			<label>신고 사유</label> 
			<select id="categ" onchange="location.href=this.value">
    		<option value="#"selected>신고사유</option>
    		<option value="#">욕설</option>
    		<option value="#">부적절한 내용</option>
    		<option value="#">도배</option>
		    <option value="#">선정적 내용</option>
		    <option value="#">정치적내용</option>
		   
		</select>
		<br>
			
	
			<label>신고내용:</label> <br> 
			<textarea rows="10" cols="50"  class="txt" id="cont1" name="content"></textarea>
			<br>
			
			<br>
		</form>	
		
	</div>
      <div class="modal-footer">
			
        <button type="button" class="btn btn-default" id="btn-default" data-dismiss="modal">확인</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
      </div>
    </div>
    </div>
    </div>
<!--수정하기 모달  -->
<div id="upModal" class="modal fade" role="dialog">
 <div class="modal-dialog">
	
  <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">신고하기</h4>
      </div>
      <div class="modal-body">
	
		<form id="upform">
			
			<label>제목수정 : </label> 
			<input type='text' class="tt" id='title' name= "writer">
			<br> 
			<br> 
	
			<label>내용 수정하기:</label> <br> 
			<textarea rows="10" cols="50"  class="txt" id="cont2" name="content"></textarea>
			<br>
			
			<br>
		</form>	
		
	</div>
      <div class="modal-footer">
			
        <button type="button" class="btn btn-default" data-dismiss="modal">확인</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
      </div>
    </div>
       </div>
    </div>


<!--댓글 수정하기 모달  -->
<div id="reupModal" class="modal fade" role="dialog">
 <div class="modal-dialog">
	
  <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">댓글 수정하기 </h4>
      </div>
      <div class="modal-body">
	
		<form id="reupform">
		
			<label>내용 수정하기:</label> <br> 
			
			<textarea rows="10" cols="50"  class="txt cont" id="recont" name="content"></textarea>
        <button id="reup" type="button" class="btn btn-default" data-dismiss="modal">확인</button>
			
		</form>	
		
	</div>
      <div class="modal-footer">
			
        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
      </div>
    </div>
       </div>
    </div>
</div>

</body>
</html>