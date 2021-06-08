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

    <!-- 부트스트랩 -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css" rel="stylesheet">
  <link href="http://localhost/sistProject3/common/css/main.css" rel="stylesheet" />

 <style type = "text/css">
  html,
body {
   margin:0;
   padding:0;
   height:100%;
} 
 .container {
   min-height:100%;
   position:relative;
   text-align : center;
   
  /*padding-bottom:100px;/* footer height */
}

#signUpTitle{
	font-size: 30px;
	font-weight: bold;
	
}

td {
	padding-top : 30px;
	font-size : 17px;
}
 </style>
<script type="text/javascript">
$(function(){
	
	$("#joinBtn").click(function(){
		chkNull();
	});
	
	
});//Ready

function chkPass(){
		if( $("#passChk").val() != $("#pass").val() ){
			//alert("비밀번호 일치하지 않습니다. 다시 입력해 주세요.");
			$("#test").css("color", "#FF0000");
			$("#test").text("비밀번호가 일치하지 않습니다. 다시 입력해주세요.");
			$("#passChk").focus();
			return;
		}else{
			$("#test").css("color", "#329932");
			$("#test").text("비밀번호가 일치합니다. 계속 진행해 주세요.");
			
		}
	
}

function chkNull(){
	if(  $("#id").val() == "" ){
		alert("아이디를 입력해주세요");
		$("#id").focus();
		return;
	}
	if(  $("#pass").val() == "" ){
		alert("비밀번호를 입력해주세요");
		$("#pass").focus();
		return;
	}
	if(  $("#passChk").val() == "" ){
		alert("비밀번호 확인을 해주세요");
		$("#passChk").focus();
		return;
	}
	if(  $("#name").val() == "" ){
		alert("이름을 입력해주세요");
		$("#name").focus();
		return;
	}
	if(  $("#phone").val() == "" ){
		alert("연락처를 입력해주세요");
		$("#phone").focus();
		return;
	}
	if(  $("#emailId").val() == "" ){
		alert("이메일을 입력해주세요");
		$("#emailId").focus();
		return;
	}
	if(  $("#addr1").val() == "" ){
		alert("우편번호를 입력해주세요");
		$("#addr1").focus();
		return;
	}
	if(  $("#addr2").val() == "" ){
		alert("주소를 입력해주세요");
		$("#addr2").focus();
		return;
	}
	if(  $("#addr3").val() == "" ){
		alert("상세주소를 입력해주세요");
		$("#addr3").focus();
		return;
	}
	if(  $("#loc").val() == "" ){
		alert("지역을 입력해주세요");
		$("#loc").focus();
		return;
	}
	
	
	alert("회원가입성공");
}
</script>
</head>
<body>
<%@include file ="../header.jsp" %>
	<div class ="container" style = "margin : 30px auto; background-color : #f8f9fa ">
		<div id = "signUpTitle">
			회원가입
		</div>
	<form action="#" method ="post">

		<table style = " text-align : left; margin : 30px auto">
			<tr>
				<td style = " width : 120px;">아이디</td>
				<td ><input type = "text" name = "id" id = "id" class ="inputBox"/> &nbsp; &nbsp;&nbsp; &nbsp; <input type="button" value = "ID중복검사" class="btn btn-primary"style ="height : 32px"/></td>
			</tr> 
			<tr>
				<td>비밀번호</td>
				<td><input type = "password" name = "pass" id = "pass" class ="inputBox"/></td>
			</tr> 
			<tr>
				<td style = "height : 30px">비밀번호확인</td>
				<td style = "oadding-top : 40px">
				<input type = "password" name = "passChk" id = "passChk" class ="inputBox" onblur="chkPass()"/>
				<div style = "height : 10px; font-size: 15px"><label id = "test"></label></div>
				</td>
			</tr> 
			<tr>
				<td>이름</td>
				<td><input type = "text" name = "name" id = "name" class ="inputBox"/></td>
			</tr> 
			<tr>
				<td>연락처</td>
				<td><input type = "text" name = "phone" id = "phone" placeholder="-를 빼고 작성해주세요." class ="inputBox"/></td>
			</tr> 
			<tr>
				<td>이메일</td>
				<td><input type = "text" name = "emailId" id = "emailId" class ="inputBox" style = "width : 120px;" /> @ 
				<select name = "email" id = "domain" class ="inputBox" style = "width : 120px;">
					<option value = "naver.com">naver.com</option>
					<option value = "daum.net">daum.net</option>
					<option value = "google.com">google.com</option>
					<option value = "hanmail.com">hanmail.com</option>
				</select>
				</td>
			</tr> 
			
			<tr>
				<td >우편번호</td>
				<td ><input type = "text" name = "addr1" id = "addr1" class ="inputBox" style =" width : 160px;"/>&nbsp; &nbsp; <input type="button" value = "우편번호 검색"  class="btn btn-primary" style ="height : 32px" /></td>
			</tr> 
		
			<tr>
				<td>주소</td>
				<td><input type = "text" name = "addr2" id = "addr2" class ="inputBox" style = "width : 280px"/></td>
			</tr> 
			<tr>
				<td>상세주소</td>
				<td><input type = "text" name = "addr3" id = "addr3" class ="inputBox" style = "width : 280px"/></td>
			</tr> 
			<tr>
				<td>주 거래지역</td>
				<td>
				<select name = "loc" id = "loc" class ="inputBox" style = "width : 185px">
					<option  value="">---지역선택---</option>
					<option value = "1" >임시</option>
					<option value = "1">임시</option>
					<option value = "1">임시</option>
				</select>
				</td>
			</tr> 
		
		</table>
		</form>
		<div>
			<input type = "button" value = "뒤로가기" class= "btn btn-danger" style = "height : 40px;"/>&nbsp; &nbsp;<input type = "button" value = "가입하기" id ="joinBtn" class = " btn btn-primary" style = "height : 40px"/>
		</div>
	</div>
	
<%@include file ="../footer.jsp" %>
	

	


</body>
</html>