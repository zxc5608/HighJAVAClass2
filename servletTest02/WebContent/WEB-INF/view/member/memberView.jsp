<%@page import="kr.or.ddit.member.vo.MemberVO"%>
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
	// 회원목록버튼 클릭
	$("#btnList").on("click", function(){
		location.href = "<%=request.getContextPath()%>/member/memberList.do";
	});
	
	// 수정버튼 클릭
	$("#btnUpdate").on("click", function(){
		var form = $("#memberForm").get(0);
		form.action = "<%=request.getContextPath()%>/member/memberUpdateForm.do";
		form.submit();  // form의 데이터를 서버로 전송
	});
	
	// 삭제버튼 클릭
	$("#btnDelete").on("click", function(){
		var form = $("#memberForm").get(0);
		form.action = "<%=request.getContextPath()%>/member/memberDelete.do";
		form.submit();  // form의 데이터를 서버로 전송
	});
	
	
});

</script>

</head>
<body>
<h2>회원 정보 상세보기</h2>
<%
	MemberVO memVo = (MemberVO)request.getAttribute("memberVo");
%>

<form id="memberForm" method="post" action="">
	<input type="hidden" name="mem_id" id="mem_id" value="<%=memVo.getMem_id() %>">
<table border="1">
<tbody>
	<tr>
		<td>회원ID</td>
		<td><%=memVo.getMem_id() %></td>
	</tr>
	<tr>
		<td>회원이름</td>
		<td><%=memVo.getMem_name() %></td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td><%=memVo.getMem_tel() %></td>
	</tr>
	<tr>
		<td>회원주소</td>
		<td><%=memVo.getMem_addr() %></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="button" id="btnUpdate" value="수정">
			<input type="button" id="btnDelete" value="삭제">
			<input type="button" value="회원목록" id="btnList">
		</td>
	</tr>
</tbody>
</table>
</form>
</body>
</html>