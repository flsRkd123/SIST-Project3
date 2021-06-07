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
 .container {
   min-height:80%;
   position:relative;
   text-align : center;
   
  /*padding-bottom:100px;/* footer height */
}

#termsTitle{font-size: 30px; font-weight: bold; margin-top : 50px}
 </style>
<script type="text/javascript">

	$(function(){
		$("#termsBtn").click(function(){
			if($("#chk1").is(":checked")!=true){
				alert("첫번째 약관에 동의해주세요");
			}else if($("#chk2").is(":checked")!=true){
				alert("두번째 약관에 동의해주세요");
			}else{
				location.href = "http://localhost/sistProject3/login/signUp.jsp";
			}//end if~else if~ else
			
			
			
		});//click
		
		
	});//ready
</script>
</head>
<body>
	<%@include file ="../header.jsp" %>
	<div class ="container">
		<div id = "termsTitle">
			서비스 약관에 동의해 주세요.
		</div>
		<textarea style = "width : 600px; height : 200px; margin-top : 60px">
		
		
		</textarea>
		<div>
		약관에 동의하시겠습니까? <input type = "checkBox"  id = "chk1"/>
		</div>
		<textarea style = "width : 600px; height : 200px; margin-top : 60px">
		
		
		</textarea>
		<div>
		약관에 동의하시겠습니까? <input type = "checkBox" id = "chk2"/>
		</div>
		
		<div style = "text-align :center; margin-top : 40px; ">
			<input type = "button" id="termsBtn" value = "가입하기" class="btn btn-primary" style ="widht : 120px; height: 50px;" />
		</div>
	</div>
	<%@include file ="../footer.jsp" %>
  <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="http://localhost/sistProject3/common/js/scripts.js"></script>
</body>
</html>