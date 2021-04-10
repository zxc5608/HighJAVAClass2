<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.5.1.min.js"></script>

<script type="text/javascript">
 
$(function(){
	$('button').on('click',function(){
		
		//문자데이터 받기 
	<%-- 	$.ajax({
			url:"<%=request.getContextPath()%>/JSONServlet.do",
			type:"post",
			success:function(data){
				$('#result').append(data+"<br>");
				
			}
		}); --%>
		
	 	$.ajax({
			url:"<%=request.getContextPath()%>/JSONServlet.do",
			type:"post",
			success:function(data){
				$.each(data,function(i,v){
					$('#result').append(i+"번째 데이터:"+v+"<br>");
				});
				
			},
			dataType:"json"
			
		}); 
	<%-- 	$.ajax({
			url:"<%=request.getContextPath()%>/JSONServlet.do",
			type:"post",
			success:function(data){
				$("#result").append("sampleVO객체의 데이터<br>");
				$("#result").append("번호 : "+data.num+"<br>");
				$("#result").append("이름 : "+data.name+"<br>");
				
				
				
			},
			dataType:"json"
			
			
		}); --%>
<%-- 	$.ajax({
		url:"<%=request.getContextPath()%>/JSONServlet.do",
		type:"post",
		success:function(data){
			$.each(data,function(i,v){
				
			$("#result").append(i+"번째 sampleVO 데이터<br>");
			$("#result").append("번호 : "+v.num+"<br>");
			$("#result").append("이름 : "+v.name+"<br>");
			
			});
			
			
		},
		dataType:"json"
		
	}); --%>
	});
});
</script>
</head>
<body>

	<button>결과 출력하기 </button>
	<h2>결과 </h2>
	<div id= "result"></div>
</body>
</html>