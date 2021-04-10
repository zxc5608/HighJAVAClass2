<%@page import="java.net.URLEncoder"%>
<%@page import="kr.or.ddit.member.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload = function(){
	var btnAdd = document.getElementById("btnAdd");
	btnAdd.onclick = function(){
		location.href = "<%=request.getContextPath()%>/member/memberForm.do";
	};
}

</script>
</head>
<body>
<h2>회원 목록 보기</h2>
<table border="1">
<thead>
  <tr><td colspan="4"><input type="button" id="btnAdd" value="회원추가"></td></tr>
  <tr>
  	<th>ID</th><th>이름</th><th>전화</th><th>주소</th>
  </tr>
</thead>
<tbody>
<%
	// 서블릿에서 만들어서 보낸 데이터를 보여준다.
	List<MemberVO> memList = 
		(List<MemberVO>)request.getAttribute("memList");

	for(MemberVO memVo : memList){
%>
	<tr>
		<td><a href="<%=request.getContextPath()%>/member/memberView.do?mem_id=<%=URLEncoder.encode(memVo.getMem_id(),"utf-8") %>"><%=memVo.getMem_id() %></a></td>
		<td><%=memVo.getMem_name() %></td>
		<td><%=memVo.getMem_tel() %></td>
		<td><%=memVo.getMem_addr() %></td>
	</tr>
<%		
	}
%>
</tbody>

</table>
</body>
</html>