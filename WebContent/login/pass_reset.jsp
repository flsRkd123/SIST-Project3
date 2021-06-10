<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title></title>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css" rel="stylesheet">
 <style type = "text/css">
  html,
body {
   margin:0;
   padding:0;
   height:100%;
}  
#wrap {
        display: flex;
        width: 100%;
        height: 100%;
        flex-direction: column;
        justify-content: space-between;
      }
       .container {
   position:relative;
   text-align : center;
}

	#table{width: 500px;height : 400px; margin: 80px auto}
	table{width: 500px;height : 300px; text-align: center}
 </style>
<script type="text/javascript">
$(function(){
	$("#pass").keydown(function(evt){ 
		if(evt.which == 13){
			chkNull();
		}//end if
	});	
	$("#pass_btn").click(function(){ 
		chkNull();
	});
});
function chkNull(){
	if( $("#pass").val() ==""){
		alert("비밀번호는 필수 입력");
		$("#pass").focus();
		return;
	}//end if
	$("#frm").submit();
};

</script>
</head>
<body>
<div id = "wrap" >

  <%@ include file ="../header.jsp" %>
<div id = "container">
	<div id = "table">	
			<table >
				<tr>
					<th style="height:50px ; font-size:25px" colspan="2"> 비밀번호 재설정</th>
				</tr>
				<tr>
						<td style="height:35px;text-align: "><b>비밀번호 : </b></td>
						<td> <input  style="height:35px; width:200px" type="password" id="pass" name="pass" /></td>
				</tr>
				<tr>
						<td style="height:35px; "><b>비밀번호 확인 : </b></td>
						<td> <input  style="height:35px; width:200px" type="password" id="passchk" name="passchk" /></td>
				</tr>
				<tr>
						<td style="height:25px" colspan="2">
						<input type="button"  id="pass_btn" name="pass_btn" class="btn btn-primary" value=" 확인" 
							 style =" width:100px ;'background-color: #FFC107; font:25px 굴림; "/></td>
				</tr>
			</table>
			</div>
</div>
  <%@ include file ="../footer.jsp" %>
</div>


</body>
</html>