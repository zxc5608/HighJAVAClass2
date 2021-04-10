<%@page import="VO.replyVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	List<replyVO>list = (List<replyVO>)request.getAttribute("list");
	
%>

[
<%
	for(int i=0;i<list.size();i++){
		replyVO vo =list.get(i);
		if(i>0)out.print(",");
	
%>
	{
		
		"reno":"<%= vo.getRenum()%>",
		"com_noo":"<%= vo.getCom_no() %>",
		"mem_noo": "<%= vo.getMem_no() %>",
		"conto":"<%=vo.getCont().replaceAll("\r","").replaceAll("\n", "<br>") %>",
		"redateo":"<%= vo.getRedate() %>"		
		

	}



<%
	}
%>
]