/**
 * 
 */

var listAll= function(){
	
	$.ajax({
		url: '/MiddleProject/communityList.do',
		type:'post',
		data:{"view": 1},
		success:function(res){
			code = "";
			$.each(res,function(i,v){
				
				code+="<div class='panel panel-default text-center'>";
				code+="	<div class='panel-footer'>";
				code+="		<h3>"+v.title+"</h3>";
				code+="	<h4>"+v.cont+"</h4>";

				code+="	<button class='btn btn-lg' onclick=location.href='../community/리뷰상세.jsp'>리뷰보러가기</button>";
				code+="	</div>";
				code+="</div>";
			})

		
			$('.col').html(code);
		},
		
		dataType:'json',
		error:function(xhr){
			alert("상태:"+ xhr.status)
		}
	})

}
