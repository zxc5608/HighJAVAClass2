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
  
<title>Insert title here</title>
<link rel="stylesheet" href="../css/Ŀ�´�Ƽ.css">
<link rel="stylesheet" href="../css/netmain.css">
<link rel="stylesheet" href="../css/main.css">

<script src="../js/jquery.serializejson.min.js"></script>
<script src="../js/community.js"></script>
<script src="../js/reply.js"></script>
  <style>
  .bton{
  	float: right;
  	color:black;
  	width:50px;
  }
  </style>
<script>
$(function() {
	
	listdetailAll();
	
	replyListServer();
	
	//����Ŭ��
	$('.box').on('click','.bton',function(){
		vname=$(this).attr('name');
		vidx=$(this).attr('idx');
		
		if(vname=='modify'){
			$('#reupModal').modal('show')
		
		}
		else if(vname=='delete'){
		//alert(vidx+"���� ����")	
			replydelete(this)
			
		}
	})
	
	//��� ���������� Ȯ�ι�ưŬ��
	$('#reup').on('click',function(){
		
		//������ ���밡������ 
		modicont = $('#recont').val();
		
		replyupdate(vidx);
		
		
	
		alert(modicont)
		//������ ������� ������������ ���
		
		
		
	})
		

	$('.nput').on('click',function(){
		
		//alert("���")
		replyinsert(this);
		
	})
	
	$('#modify').on('click',function(){
		vcom = $(this).attr('com_no');
		//���â���� ������ ������ �����´�
		
		comm.title=$('#upform #title').val(title);
		comm.cont=$('#upform #cont').val(cont);
		comm.com_no=com;
		
		commUpdateServer();
		
		$('#upModal').modal('hide');
		$('#upform .txt').val("");
	})
	

})


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
  

</head>
<body>
<!--�����ۼ�  -->
<!-- ��ܹ� -->


<div class="box">


<div id="nav">

        <a href="../seeavi/netmain.jsp" id="logo"><img class="logo" src="../images1/���ø�.JPG"></a>
        <ul id="na">
            <li class="av"><a href="../seeavi/��ȭ.jsp">��ȭ����</a></li>
            <li class="av"><a href="../shop/�ٿ�ε�.jsp">�ٿ�ε�</a></li>
            <li class="av"><a href="../community/Ŀ�´�Ƽ.jsp">Ŀ�´�Ƽ</a></li>
            <li class="av"><a href="index.jsp">������</a></li>
           
        <a href="../member/����������.jsp" id="search"><img class="search1" src="../images1/��������.jpg"></a>
        <a type="button" href="#" id="search"><img class="search" src="../images1/��ٱ�����.jpg"></a>
        <a type="button" href="#" id="search"><img class="search" src="../images1/�򵸺���.JPG"></a>
                <input type="text" id="searchDown" placeholder="������ �˻�" value="" class="MuiInputBase-input-128 MuiInput-input-116 jss86 jss96 jss77 MuiInputBase-inputAdornedStart-132">
        </ul>
        
    </div>
 <div class ="board">
 
	<div id='cssmenu'>
<ul>
   
   <li class='has-sub'><a href='#'><span>���� �Խñ�</span></a>
      <ul>
         <li><a href='#'><span>�θǽ�</span></a></li>
         <li><a href='#'><span>�ڹ̵�</span></a></li>
         <li><a href='#'><span>������</span></a></li>
         <li><a href='#'><span>�׼�</span></a></li>
         <li><a href='#'><span>����</span></a></li>
         <li><a href='#'><span>SF</span></a></li>
         <li><a href='#'><span>�ִ�</span></a></li>
         <li class='last'><a href='#'><span>��ť</span></a></li>
      </ul>
   </li>
   <li class='has-sub'><a href='#'><span>��ǰ��û�ϱ�</span></a>
      <ul>
          <li><a href='#'><span>�θǽ�</span></a></li>
         <li><a href='#'><span>�ڹ̵�</span></a></li>
         <li><a href='#'><span>������</span></a></li>
         <li><a href='#'><span>�׼�</span></a></li>
         <li><a href='#'><span>����</span></a></li>
         <li><a href='#'><span>SF</span></a></li>
         <li><a href='#'><span>�ִ�</span></a></li>
         <li class='last'><a href='#'><span>��ť</span></a></li>
      </ul>
   </li>

</ul>
</div>
<div class="review-2"></div>
<div class="ta">
    <a href="Ŀ�´�Ƽ.jsp" id="list" class="button-w">�������</a>
    <a href="#this" id="modify" class="button-u"data-toggle="modal" data-target="#upModal">�����ϱ�</a>
    <a href="#this" id="siren" class="button-w" data-toggle="modal" data-target="#myModal">�Ű��ϱ�</a>
</div>

<div class="tabtab">
<table class="tab" >
       <h2 id= "see">�󼼺���</h2><br>
        <colgroup>
            <col width="15%">
            <col width="35%">
            <col width="15%">
            <col width="*">
        </colgroup> 
         
         <tbody class="tbady"> 
        
  <!--           <tr>
                <th class="th_th">����</th>
                <td class="td_td">�����</td>
                
                <th class="th_th">��ȸ��</th>
                <td class="td_td">42</td>
            </tr>
            
            <tr>
                <th class="th_th">�ۼ���</th>
                <td class="td_td">�����</td>
                
                <th class="th_th">�ۼ��ð�</th>
                <td class="td_td">2020.12.10</td>
            </tr>
            <tr>
                <th class="th_th">����</th>
                <td colspan="3" class="td_td">
                            �ֿ���� �۰�ȣ���� ���Ⱑ ��û���� �ٸ������� ������<br>
	                   ���⵵ ��ǰ�Դϴ� �����α׷����� ���ϱ� �����������׿�<br>
                </td>
            </tr>
            <tr></tr> -->

				</tbody> 
    </table>
   </div>
          <br><br><br>
  
          
      <div class="rreple">
    <!--  <h2>���</h2><br>
	<p class="p1">
	
		Tm32 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2020-12-10 19:12:08
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br>
			<br>
		<span class="cont">����Դϴ�~</span>
		</p> -->
     </div> 
     
 

		<input type="text" placeholder="��۴ޱ� " value="" id="rereple" class="rereple">
 		<button class="nput">�Է�</button>
 		
	</div>
	<!-- �Ű��ϱ� modal -->
<div id="myModal" class="modal fade" role="dialog">
 <div class="modal-dialog">
	
  <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">�Ű��ϱ�</h4>
      </div>
      <div class="modal-body">
	
		<form id="uform">
			
			<label>�Ű��� ���̵�</label> 
			<input type='text' class="txt" id='name' name= "writer">
			<br> 
			<br> 
			
			<label>�Ű� ����</label> 
			<select id="categ" onchange="location.href=this.value">
    		<option value="#"selected>�Ű����</option>
    		<option value="#">�弳</option>
    		<option value="#">�������� ����</option>
    		<option value="#">����</option>
		    <option value="#">������ ����</option>
		    <option value="#">��ġ������</option>
		   
		</select>
		<br>
			
	
			<label>�Ű���:</label> <br> 
			<textarea rows="10" cols="50"  class="txt" id="cont1" name="content"></textarea>
			<br>
			
			<br>
		</form>	
		
	</div>
      <div class="modal-footer">
			
        <button type="button" class="btn btn-default" id="btn-default" data-dismiss="modal">Ȯ��</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">���</button>
      </div>
    </div>
    </div>
    </div>
<!--�����ϱ� ���  -->
<div id="upModal" class="modal fade" role="dialog">
 <div class="modal-dialog">
	
  <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">�Ű��ϱ�</h4>
      </div>
      <div class="modal-body">
	
		<form id="upform">
			
			<label>������� : </label> 
			<input type='text' class="tt" id='title' name= "writer">
			<br> 
			<br> 
	
			<label>���� �����ϱ�:</label> <br> 
			<textarea rows="10" cols="50"  class="txt" id="cont2" name="content"></textarea>
			<br>
			
			<br>
		</form>	
		
	</div>
      <div class="modal-footer">
			
        <button type="button" class="btn btn-default" data-dismiss="modal">Ȯ��</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">���</button>
      </div>
    </div>
       </div>
    </div>


<!--��� �����ϱ� ���  -->
<div id="reupModal" class="modal fade" role="dialog">
 <div class="modal-dialog">
	
  <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">��� �����ϱ� </h4>
      </div>
      <div class="modal-body">
	
		<form id="reupform">
		
			<label>���� �����ϱ�:</label> <br> 
			
			<textarea rows="10" cols="50"  class="txt cont" id="recont" name="content"></textarea>
        <button id="reup" type="button" class="btn btn-default" data-dismiss="modal">Ȯ��</button>
			
		</form>	
		
	</div>
      <div class="modal-footer">
			
        <button type="button" class="btn btn-default" data-dismiss="modal">���</button>
      </div>
    </div>
       </div>
    </div>
</div>

</body>
</html>