<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/qnaM.css">	
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script src="../js/faqM.js"></script>

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
currentPage=1;
$(function(){
	  //listAll();
	  listPageServer(1);
	  
	  //페이지 번호를 클릭 이벤트 처리 
	  $('#pagelist').on('click', '.paging', function(){


		  
		  currentPage =    $(this).text().trim();
		  console.log(currentPage);
		  listPageServer(currentPage);
	  })
	  //next버튼 클릭 이벤트 
	  $('#pagelist').on('click', '.next', function(){
		  


		  
		  //$('.paging:last')
		   currentPage =  parseInt( $('.paging').last().text() ) + 1; 
		   listPageServer(currentPage);
	  })
	  
	  //이전 버튼 클릭 이벤트 
	  $('#pagelist').on('click', '.prev', function(){
		  


		  //$('.paging:first')
		   currentPage =  parseInt( $('.paging').first().text() ) - 1; 
		   listPageServer(currentPage);
	  })
	  
	  //각 버튼의 이벤트 - 수정, 삭제, 댓글 등록 , 댓글 수정, 댓글 삭제
	  $('.box').on('click', '.action', function(){
		  
		  vidx =   $(this).attr('idx');
		  vname = $(this).attr('name');
		  
		  if(vname == 'modify'){
			  //alert(vidx + "번글 수정")
			 $('#uModal').modal('show');
			  
			  // 수정할 내용을 가져와서 modal창에 출력
			  pbody = $(this).parents('.panel');
			  name = pbody.find('.nspan').text(); 	 // 이름
			  mail = pbody.find('.mspan').text();	 // 메일
			
			  cont = pbody.find('.cspan').html(); 	 // 내용
			  cont = cont.replace(/<br>/g, "\n");
			  
			  title = pbody.find('a').text(); 		 // 제목
			  
			  // uform에 출력
			  $('#uform #name').val(name);
			  $('#uform #subject').val(title);
			  $('#uform #mail').val(mail);
			  $('#uform #cont').val(cont);
			  
			  
		  }else if(vname == 'delete'){
			  //alert(vidx + "번글 삭제")
			  boardDeleteServer(this);
			  
			  
		  }else if(vname == 'reply'){
			  //alert(vidx + "번글의 댓글 등록 ");
			  //reply테이불에 저장 - renum, bonum, name, cont, redate
			  reply.bonum = vidx;
			  rname1 = Math.floor(Math.random()* 50 +1 );
			  rname2 = String.fromCharCode(Math.random()* 26 +65); //65~90
			  rname3 = String.fromCharCode(Math.random()* 26 +97 );//97~112  
				  
				  
			  reply.name =  rname2 + rname3 + rname1;
			  reply.cont = $(this).parent().find('.area').val();
			  
			  $(this).parent().find('.area').val(""); 
			  //ajax를 통해서 reply객체를 서버로 보내기 
			  replySaveServer(this);
			  
		  }else if(vname == 'list'){  //제목 클릭하면 해당 댓글 가져오기 
			  
			  // 조회수 증가
			  vclass = $(this).parents('.panel').find('.in').attr('class');
		  		console.log(vclass);
		  		
		  		// 닫혔을때 제목을 클릭하면 in이 없는 상태 - undefined - 조회수 증가
		  		// undefined는 일반 문자가 아니기 때문에 typeof를 이용하여 비교
		  		if(typeof vclass == "undefined"){
		  			hitUpdateServer(this);
		  		}
		  		
			  
			  replyListServer(this);  //this -> list  :a태그
		  }else if(vname == "r_modify"){
			  //alert(vidx + "번 댓글을 수정합니다 ")
			  
			  //수정폼이 이미 열려있는지 비교 
			  //다른 곳에 열려 있다면  열려 있는 수정폼을 닫는다 - 폼을 body태그로 다시 append한다 
			  if($('#modifyForm').css('display') != 'none'){
				//다른 곳에  이미 열려 있다
				  replyReset();
			  }
			  
			  //원래 내용 가져오기 
			 modifycont =  $(this).parents('.rep').find('.cont').html();
			 //<br>를 \n으로 변경 
			 modifycont = modifycont.replace(/<br>/g,"\n");
			 //수정내용를 수정폼의 text에 출력 
			 $('#text').val(modifycont);
			 
			 //body에 있는 댓글 수정폼을  댓글 수정위치로 추가한다 
			 $(this).parents('.rep').find('.cont').empty().append($('#modifyForm'))
			 $('#modifyForm').show();
			 
		  }else if(vname == "r_delete"){
			 // alert(vidx + "번 댓글을 삭제합니다")
			 replyDeleteServer(this);
			 
			
		  }
		  
	  })

})


</script>
</head>
<body>

<nav class="navbar navbar-inverse ">
	 <img class="logo" src="<%=request.getContextPath() %>/images/넷플릭스_로고.png" alt="로고" align="left">
	 <p id="pp" >| 관리자 페이지</p>
</nav>
 

<!--  메뉴 Side Navigation  -->
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <p class="sidefont">Content</p>
   <a href="<%=request.getContextPath()%>/admin/content.jsp">상영작 관리</a>
  <br>
  <p class="sidefont">Member</p>
  <a href="<%=request.getContextPath()%>/admin/memberlist.jsp">회원 관리</a>
  <a href="<%=request.getContextPath()%>/admin/singo.jsp">신고 회원 관리</a>
  <a href="<%=request.getContextPath()%>/admin/payment.jsp">결제 관리</a>
  <br>
  <p class="sidefont">Service center</p>
  <a href="<%=request.getContextPath()%>/admin/qna.jsp">QnA</a>
  <a href="<%=request.getContextPath()%>/admin/fNq.jsp">FnQ</a>
  <a href="<%=request.getContextPath()%>/admin/noticeM.jsp">공지사항</a>
</div>
<span id="tt" onclick="openNav()">&#9776;</span>

<div id="word">고객센터</div> 
<br><br>
<hr>
	<a href="<%=request.getContextPath() %>/admin/main.jsp" class="back">←  관리자 페이지로 돌아가기</a>

<hr>
	<h1 id="contw">FaQ 자주 묻는 질문 </h1>




<div class="review">

 
<div class="box">
</div>


		</div>
		
			<div id="pagelist">
		
		</div>
	



</body>
</html>