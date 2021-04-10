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
	
	var chkMemId = "";  // 중복 체크할 때의 ID가 저장될 변수
	
	// 중복확인버튼 클릭
	$("#idCheck").on("click", function(){
		var memId = $("#mem_id").val(); // 입력한 회원ID 읽어오기
		if(memId==""){
			alert("회원ID를 입력하세요.");
			$("#mem_id").focus();
			return;
		}
		
		$.ajax({
			url : "<%=request.getContextPath()%>/member/memberIdCheck.do",
			method : "post",
			data : { "mem_id" : memId },
			dataType : "json",
			success : function(result){
				//alert(result);
				if(result=="OK"){  // 중복되지 않을 때
					$("#idChkResult").html("사용가능ID");
					chkMemId = memId;  // 검사가 완료된 회원ID를 전역변수에 저장
				}else{ // 중복될 때
					$("#idChkResult").html("ID중복 - 사용불가");
					chkMemId = "";
				}
			},
			error : function(xhr){
				alert("오류 - 상태값 : " + xhr.status);
			}
		});
		
	});
	
	// 저장버튼클릭 --> form의 submit될 때
	$("#memberForm").on("submit", function(){
		var memId = $("#mem_id").val(); 
		var idchk = $("#idChkResult").html().trim();
		if(chkMemId!= memId || idchk!="사용가능ID"){
			alert("ID가 중복됩니다. 새로운 ID를 입력하세요.");
			return false;  // 서버로의 전송을 취소한다.
		}
		return true;  // 서버로 전송작업을 수행한다.
	});
	
	
	
});

</script>
</head>
<body>
<h2>회원 정보 입력 폼</h2>
<form id="memberForm" method="post" 
	   action="<%=request.getContextPath()%>/member/memberInsert.do">
<table border="1">
<tbody>
	<tr>
		<td>회원ID</td>
		<td>
			<input type="text" name="mem_id" id="mem_id">
			<input type="button" id="idCheck" value="중복확인"><br>
			<span id="idChkResult"></span>
		</td>
	</tr>
	<tr>
		<td>회원이름</td>
		<td>
			<input type="text" name="mem_name" id="mem_name">
		</td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td>
			<input type="text" name="mem_tel" id="mem_tel">
		</td>
	</tr>
	<tr>
		<td>회원주소</td>
		<td>
			<input type="text" name="mem_addr" id="mem_addr" size="50">
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="저장">
			<input type="reset" value="취소">
			<input type="button" value="회원목록" id="btnList">
		</td>
	</tr>
</tbody>
</table>
</form>
</body>
</html>