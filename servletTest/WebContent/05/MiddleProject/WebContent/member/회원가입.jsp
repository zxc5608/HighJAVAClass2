<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
<link rel="stylesheet" href="../css/memberjoin.css">

<style>
</style>
<script type="text/javascript">
	
	function join(){
		alert("회원가입");
	}
</script>
</head>
<body>
   <div class="login-form">
<h1>회원가입</h1>
<p>넷플릭스를 즐기고싶다면 회원가입을 하세요!</p>

<form id= "joinform" class="form-horizontal">
					
					<div class="form-group">
						<label class="control-label col-sm-2" for="id">email:</label>
						<div class="col-sm-4">
							<input type="text" class="text-field" id="id" placeholder="E-mail" name="mem_id">
						</div>	
							<span id ="idspan"></span>
							<input id="idbtn" class= "btn btn-warning" type="button" value="아이디 중복검사">
							
					</div>
					
						<div class="form-group">
						<label class="control-label col-sm-2" for="name">이름:</label>
						<div class="col-sm-4">
							<input type="text" class="text-field" id="name" placeholder="Enter name" name="mem_name">
						
						</div>
							<span id ="nmspan"></span>	
					</div>
					
						<div class="form-group">
						<label class="control-label col-sm-2" for="bir">생년월일:</label>
						<div class="col-sm-4">
							<input type="date" class="text-field" id="bir" placeholder="Enter bir" name="mem_bir">
						</div>	
						<span id ="birspan"></span>
					</div>
					
					
				
					<div class="form-group">
						<label class="control-label col-sm-2" for="passck">비밀번호:</label>
						<div class="col-sm-4">
							<input type="password" class="text-field" id="passck" placeholder="Enter pass" name="mem_pass">
						</div>
						<span id ="pwdspan"></span>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-2" for="pass">비밀번호 확인:</label>
						<div class="col-sm-4">
							<input type="password" class="text-field" id="pass" placeholder="Enter pass" name="mem_pass">
						</div>
						<span id ="pwdspan2"></span>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-2" for="hp">휴대폰번호:</label>
						<div class="col-sm-4">
							<input type="text" class="text-field" id="hp" placeholder="Enter hp" name="mem_hp">
						</div>
						<span id ="telspan2"></span>
					</div>
					<br><br><br>
			
				
					<label>선호하는 컨텐츠 :</label>
					<input type="checkbox" name="contents" value="로맨스">로맨스
					<input type="checkbox" name="contents" value="코미디">코미디
					<input type="checkbox" name="contents" value="스릴러">스릴러
					<input type="checkbox" name="contents" value="액션">액션
					<input type="checkbox" name="contents" value="공포">공포
					<input type="checkbox" name="contents" value="SF">SF
					<input type="checkbox" name="contents" value="애니">애니
					<input type="checkbox" name="contents" value="다큐">다큐멘터리
	 	
					
					<br><br><br>
			
					<div class="form-group1">
						<div class="col-sm-offset-2 col-sm-10">
							<button id="joinbtn" type="button" class="btn btn-primary btn-lg" onclick="join()">회원가입</button>
        					
        					
							<span id = "joinspan"></span>
						</div>
					</div>
				</form>
				</div>
</body>
</html>