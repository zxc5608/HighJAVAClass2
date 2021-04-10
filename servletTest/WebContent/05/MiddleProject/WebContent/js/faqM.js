/**
 * 
 */
var listPageServer = function(cpage){
	$.ajax({
		url :'/MiddleProject/FaqList.do',
		type : 'post',
		data : {"page" : cpage },
		dataType : 'json',
		success : function(res){
			  
			
			code='<div class="container">';
			code+='  <h2 class="title">자주 묻는 질문</h2>';
			  
			  
			code+='<br>';
			code+='<br>';
			code+='<br>  ';
			  
			code+='<table>';
			code+='	<th></th>';
			code+='</table>';
			code+='	  <div class="panel-group" id="accordion">';
			  $.each(res.datas, function(i,v){
			code+='    <div class="panel panel-success">';
			code+='      <div class="panel-heading">';
			code+='       <h4 class="panel-title">';
			code+='         <a data-toggle="collapse" idx="'+v.no+'" data-parent="#accordion" href="#collapse20' + v.no + '" class="acco">';
			code+='          	'+ v.no +'      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <span class=nspan> '+ v.title+'</span>' ;
			          
			          
			code+='          </a>';
			code+='        </h4>';
			code+='      </div>';
			code+='      <div id="collapse20' + v.no + '" class="panel-collapse collapse "> <!-- in이 있으면 열려있는거 -->';
			code+='        <div class="panel-body">';
			          
			         
			code+='         <p  class="p1">';
			code+='                     질문 번호: '+ v.no +'    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
			                     
			code+='          <br><br><br>  ';
			code+='                      내용 :<span class="cspan">' +v.qu+'</span>';
			code+='           </p>';
		
			code+='        <hr>';
			code+='       <p class="p1">';
			          	
			code+=		'<span class="tspan">'+v.ans+'</span>';
			code+='          </p>';
			
			code+='		<p class="p2">';
			code+='		<button type="button" idx="'+v.no+'" name="modify" class="action">수정하기</button>';
			code+='		<button type="button" idx="'+v.no+'" name="" class="action">삭제하기</button>';
			code+='		</p>';
			         
			code+='	        </div>';
			code+='	      </div>';
			code+='    </div>';
			  })
			  code+='  </div> ';
			  code+='	</div>';
			
			
			
			
			  
			  $('.box').html(code);	
			  
			  //pagelist에append를 이용해서 출력 
			  $('#pagelist').empty();
			  //이전버튼 출력  
			  if(res.sp > 1){
				  pager = '<ul class="pager">';
				  pager +='  <li><a  class="prev" href="#">Previous</a></li>';
				  pager += '</ul>';
				  $('#pagelist').append(pager)	;
			  } 
			  
			  //페이지번호 출력
			  pager = '<ul class="pagination pager">';
			  for(i=res.sp; i<=res.ep; i++){
				  if(currentPage == i){
					 pager += ' <li  class="active"><a  class="paging" href="#">' + i + '</a></li>';  
				  }else{
					 pager += ' <li><a   class="paging" href="#">' + i + '</a></li>' 
				  }
			  }
			  pager += '</ul>'
			  $('#pagelist').append(pager)	;
				  
			  //다음 버튼 출력
			  if(res.ep < res.tp){
				  pager = '<ul class="pager">';
				  pager +='  <li><a  class="next" href="#">Next</a></li>';
				  pager += '</ul> ';
				  $('#pagelist').append(pager)	;
			  }
			  
			  
		},
		error : function(xhr){
			alert("상태 : " + xhr.status)
		}
	
	})
}
var boardUpdateServer = function(){	// 수정 모달창에서
	 $.ajax({
		url : '/MiddleProject/updatefnq.do',
		type : 'post',
		data : board,	// seq, subject, content, 
		success : function(res){
			// 화면 수정 - 수정 모달창에 있는 값들을 다시 가져와서 (board객체) 화면에 출력
//			$(pbody).find('.nspan').text(board.writer);
//			$(pbody).find('.mspan').text(board.mail);
			
			content = board.content;
			content = content.replace(/\n/, "<br>");
			
			reply = board.reply;
			reply = reply.replace(/\n/, "<br>");
			
			$(pbody).find('.cspan').html(content);
			$(pbody).find('.nspan').html(board.subject);
			$(pbody).find('.tspan').html(board.reply);
			
			today = new Date();
			today = today.toLocaleDateString();
			$(pbody).find('.wspan').text(today);
			
		},
		error : function(xhr){
			alert("상태 : " + xhr.status)
		}, 
		dateType : 'json'
	 })
	 
	 
}