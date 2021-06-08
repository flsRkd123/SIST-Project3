<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title>Login</title>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css" rel="stylesheet">
<style>
 html,
body {
   margin:0;
   padding:0;
   height:100%;
} 



 /*    body {
        background: #f8f8f8;
        padding: 60px 0;
    } */
  
    #login-form > div {
        margin: 15px 0;
    }
  
 .container {
   min-height:61%;
   position:relative;
  
  /*padding-bottom:100px;/* footer height */
}


#login{
	margin : 200px auto;
	height : 200px;
}
</style>
<script type="text/javascript">
$(function(){
	
	$("#loginBtn").click(function(){
		
		nullChk();
		
	});//click
});//ready

function nullChk(){
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
		
		$("#loginBtn").submit();
	
	
}
</script>
</head>
<body>

  <!-- Navigation-->
       <%@ include file ="../header.jsp" %>

<div class="container">
    <div id = "login" class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="panel panel-success">
            <div class="panel-heading" style ="text-align : center">
                <div class="panel-title" >환영합니다!</div>
            </div>
            <div class="panel-body">
                <form  action ="#" id="login-form" method = "post">
                    <div>
                        <input type="text" class="form-control" id = "id" name="id" placeholder="UserID" autofocus="autofocus">
                    </div>
                    <div>
                        <input type="password" id ="pass" class="form-control" name="pass" placeholder="Password">
                    </div>
                    <div>
                        <input type="button" id = "loginBtn" class="form-control btn btn-primary" value = "로그인">
					</div>
                </form>
					<div style="width : 100%;text-align:center;">
						<a href="#">아이디/비밀번호 찾기</a> | <a href="#">회원가입</a>
					</div>
            </div>
        </div>
    </div>
</div>

<%@ include file = "../footer.jsp" %>
</body>
</html>