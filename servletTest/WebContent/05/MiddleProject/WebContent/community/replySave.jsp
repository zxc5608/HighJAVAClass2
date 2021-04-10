<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int rnum = (Integer)request.getAttribute("rnum");
	if(rnum>1){
%>		
{
	"sw": "저장성공"
}	
	
<% 
	}else{
%>
{
	"sw": "저장실패"
}
		
<%
 }
%>