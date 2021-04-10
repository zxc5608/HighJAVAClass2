<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  

  
<script>
$('#button-w').on('click',function(){
	
	//$('#uModal').modal('hide');
	//$('#uform .txt').val("");
	$('#uform .txt').modal('show');
})
$('#button-u').on('click',function(){
	
	//$('#uModal').modal('hide');
	$('#upform .tt').modal('show');
	//$('#upform .tt').val("");
})


</script>
  
<title>Insert title here</title>
<link rel="stylesheet" href="../css/커뮤니티.css">
<link rel="stylesheet" href="../css/netmain.css">
<link rel="stylesheet" href="../css/main.css">
<script src="../js/jquery-3.5.1.min.js"></script>
</head>
<body>
<!--리뷰작성  -->
<!-- 상단바 -->





<div id="nav">

        <a href="../seeavi/netmain.jsp" id="logo"><img class="logo" src="../images1/넷플릭.JPG"></a>
        <ul id="na">
            <li class="av"><a href="../seeavi/영화.jsp">영화보기</a></li>
            <li class="av"><a href="../shop/다운로드.jsp">다운로드</a></li>
            <li class="av"><a href="../community/커뮤니티.jsp">커뮤니티</a></li>
          
            <li class="av"><a href="index.jsp">고객센터</a></li>
        <a href="마이페이지.jsp" id="search"><img class="search1" src="../images1/닷지차저.jpg"></a>
        <a type="button" href="#" id="search"><img class="search" src="../images1/장바구니흰.jpg"></a>
        <a type="button" href="#" id="search"><img class="search" src="../images1/흰돋보기.JPG"></a>
                <input type="text" id="searchDown" placeholder="콘텐츠 검색" value="" class="MuiInputBase-input-128 MuiInput-input-116 jss86 jss96 jss77 MuiInputBase-inputAdornedStart-132">
        </ul>
        
    </div>
 <div class ="board">
 
	<div id='cssmenu'>
<ul>
   
   <li class='has-sub'><a href='#'><span>자주묻는질문</span></a>
    
   </li>
   <li class='has-sub'><a href='#'><span>Q&A</span></a>
  
   </li>
   
    <li class='has-sub'><a href='#'><span>공지사항</span></a>
  
   </li>
   
   </ul>
</div>
<div class="review-2"></div>


<div class="tabtab">
<table class="tab" > 
       <h2 id= "see">공지사항 상세보기</h2><br><br><br>
        <colgroup>
            <col width="15%">
            <col width="35%">
            <col width="15%">
            <col width="*">
        </colgroup> 
         
         <tbody class="tbady"> 
        
            <tr>
                <th class="th_th">공지제목</th>
                <td class="td_td">상영작 신청공지 </td>
                <th class="th_th">공지번호</th>
                <td class="td_td">42</td>
            </tr>
            
            <tr>
                <th class="th_th">관리자 이름</th>
                <td class="td_td">관리자 안</td>
                <th class="th_th">작성일자</th>
                <td class="td_td">2020.12.10</td>
            </tr>
            <tr>
                <th class="th_th">내용</th>
                <td colspan="3" class="td_td">
                           공지사항공지사항공지사항공지사항공지사항공지사항공지사항<br>
	                  공지사항공지사항공지사항공지사항공지사항공지사항공지사항<br>
	                  공지사항공지사항공지사항공지사항공지사항공지사항공지사항<br>
	                  공지사항공지사항공지사항공지사항공지사항공지사항공지사항<br>
	                  공지사항공지사항공지사항공지사항공지사항공지사항공지사항<br>
	                  공지사항공지사항공지사항공지사항공지사항공지사항공지사항<br>
	                  공지사항공지사항공지사항공지사항공지사항공지사항공지사항<br>
	                  
	                  
                </td>
            </tr>
            <tr></tr>

				</tbody> 
    </table>
   </div>
       
    </div>

</body>
</html>