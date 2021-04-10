/**
 * 
 */
var commSaveServer=function(){
	cvalue = $('#re').attr('value');
	$.ajax({
		url:'/MiddleProject/communityinsert.do',
		data: $('#wform').serializeJSON(),
		type:'post',
		dataType:'json',
		success:function(res){
			alert(res.sw);
			listAll(1);
		},
		error:function(xhr){
			alert("상태:"+xhr.status);
		}
	})
	
	
}
var commUpdateServer=function(){
	$.ajax({
		url:'/MiddleProject/communityUpdate.do',
		type:'post',
		data:comm,
		success : function(res){
			alert(res.sw);
			
			//화면수정 -수정 모달창에있는 값들을 가져온다
		}
	})
	
	
}
var countlist= function(){
	/*$.ajax({
		url:'/MiddleProject/hitUpdate.do',
		type:'post',
		data:"com_no",
		success:function(res){
			alert(res.sw);
		},
		dataType:'json',
		error:function(xhr){
			
			alert("상태:"+ xhr.status)
		}
		
	})*/

}

var listdetailAll= function(){
	
	$.ajax({
		url:'/MiddleProject/communityList.do',
		type:'post',
		data:{"view":1},
		success:function(res){
			
		$.each(res,function(i,v){
			
		code= "<tr id=com_tr>"+v.com_no;
		code+="	 <th class='th_th'>제목</th>";
        code+="      <td class='td_td'>"+v.title+"</td>";
           
        code+="      <th class='th_th'>조회수</th>";
        code+="      <td class='td_td'>"+v.cnt+"</td>";
        code+= "  </tr>";
         
        code+= "  <tr>";
        code+="      <th class='th_th'>작성자</th>";
        code+="      <td class='td_td'>"+v.writer+"</td>";
          
        code+="      <th class='th_th'>작성시간</th>";
        code+="      <td class='td_td'>"+v.com_date+"</td>";
        code+="  </tr>";
        code+="  <tr>";
        code+="      <th class='th_th'>내용</th>";
        code+="      <td colspan='3' class='td_td'>"+v.cont+"</td>";
                 
          
        code+="  </tr>";
        
        code+="  <tr></tr>";
			})

			$('.tbady').html(code);
		
			
		},
		
		dataType:'json',
		error:function(xhr){
			alert("상태:"+ xhr.status)
		}
	
	})
}

var listAll= function(){
	
	$.ajax({
		url: '/MiddleProject/communityList.do',
		type:'post',
		data:{"view": 1},
		success:function(res){
			
			code="<h2>리뷰 게시판</h2>";
			code+= "<a href='#'><button class='write1' type='submit'data-toggle='modal' data-target='#wModal'>글쓰기</button></a>";
			
			code+= "<table>";
			code+= "	<caption>";
			
			code+= "	</caption>";
			code+= "	<tr class='view'>";
			code+= "		<th><span>번호</span></th>";
			code+= "		<th><span>작성자</span></th>";
			code+= "		<th><span>제목</span></th>";
			code+= "		<th><span>조회수</span></th>";
			code+= "		<th><span class='bb'>작성일자</span></th>";
			code+= "	</tr>";
			$.each(res,function(i,v){
				
	
				code+= "<tr class=review1>";
				
				code+="<td>"+v.com_no+"</td>";
				code+="	<td>"+v.writer+"</td>";
				code+="<td><a href=리뷰상세.jsp value=확인 id=count>"+v.title+"</a></td>";
				code+="<td>"+v.cnt+"</td>";
				code+="<td>"+v.com_date+"</td>";
				code+="</tr>";		
	
			})
			code+="</table>";
			
			$('.review').html(code);
			
		},
		
		dataType:'json',
		error:function(xhr){
			alert("상태:"+ xhr.status)
		}
	})

}
	