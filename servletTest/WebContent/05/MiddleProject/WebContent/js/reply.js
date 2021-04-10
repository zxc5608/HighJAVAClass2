/**
 * 
 */

	//댓글
var replydelete=function(but){
	$.ajax({
		url:'/MiddleProject/ReplyDelete.do',
		type:'post',
		data:{"renum":vidx},
		success:function(res){
			$(but).parents('.reple').remove();
		},
		error:function(xhr){
			alert:("상태:"+xhr.status)
		},
		dataType:'json'
	})
}

var replyupdate=function(vidx){
	//alert("cont=" + $("#cont").val())
	var cont = $('#cont1').val();
	
	console.log(cont);
	
	
	$.ajax({
		url:'/MiddleProject/Replyupdate.do',
		type:'post',
		data:{"renum":vidx, "cont" : modicont},
		success:function(res){
			//alert(res.sw);
			replyListServer()
		},
		error:function(xhr){
			alert("상태:"+xhr.status)
		},
		dataType:'json'
	})
	
}


var replyinsert = function(code){
	//alert("cont=" + $("#rereple").val())
	var cont = $("#rereple").val();
	var com_no = $('#com_tr').text();
	console.log(com_no);
	$.ajax({
		url:'/MiddleProject/ReplySave.do',
		type:'post',
		
		data:{"cont":cont,
				"com_no" : com_no},
		
		success:function(res){
			
				//alert("res=" + res)
				replyListServer()
				$('.reple').val("");
			
		},
		error:function(xhr){
			alert("상태 : "+xhr.status)
			
		},
		dataType:'json'
		
		
	})
}

var replyListServer= function(){
	
	$.ajax({
		url:'/MiddleProject/ReplyList.do',
		type:'post',
		
		success:function(res){

			code="<div class='reple'>";
			code+="     <h2>댓글</h2><br>";
			$.each(res,function(i,v){
				
				
			     code+="	<p class='p1'>"+v.reno;
			     code+="			<button class='bton' idx="+v.reno+" id='remove'name='delete'>삭제</button>";
			     code+="			<button class='bton' id='fix' idx="+v.reno+" name='modify'  >수정</button>";
			     code+=	v.mem_noo+ "&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;"+v.redateo;
			     code+="	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br>";
			     code+="		<br>";
			     code+="	<span class='cont1'>"+v.conto+"</span>";
			     code+="	</p>";
			     code+="</div>";
			})
			$('.rreple').html(code);
		},
		dataType:'json',
		error:function(xhr){
		alert("상태 : "+xhr.status)
	}
		
	})
}
	
