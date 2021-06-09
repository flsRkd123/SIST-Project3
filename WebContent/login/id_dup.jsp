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
    <link href="http://localhost/jsp_prj/common/bootstrap-3.3.2/css/bootstrap.min.css" rel="stylesheet">
    <!--  jQuery CDN(contents Delivery Network) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<!--  bootstrap  -->
 <script src="http://localhost/jsp_prj/common/bootstrap-3.3.2/js/bootstrap.min.js"></script>
 <style type = "text/css">
  #wrap{width : 512px; height:303px; margin : 0px auto}
 #container{width : 512px; height:303px;background: url('http://localhost/sistProject3/common/images/id_background.png') #FFFFFF no-repeat;}
 #idFrm{position : absolute ; top : 100px; left: 60px;}
 #useId{position :absolute; top:190px; left: 200px;}
 </style>
<script type="text/javascript">
	$(function(){
		$("#btn").click(function(){
			chkNull();
		});//click
		
		$("#id").keydown(function(evt){
			if(evt.which == 13){
				chkNull();
			}//end if
		})
		
	});//ready

	function chkNull(){
			if($("#id").val() == ""){
				alert("아이디는 필수입력");
				$("#id").focus();
				return;
			}//end if
			$("#frm").submit();	
		
	}
	function userID(id){
		opener.window.document.frm.id.value=id;
		self.close();
	}//userId
</script>
</head>
<body>
<div id = "wrap">	
	<div id ="container"> 
			<div id ="idFrm">
				<form action="id_dup.jsp" id="frm">
					<!-- <input type ="hidden" name ="cmd" value ="D001" /> -->
					<!-- web browser에서 <input type="text"| "password"가 하나만 존재하면 엔터를 쳤을 때 
	자바 스크립트의 유효성 검증에 위배되더라도 submit이 된다. 
	( 경고창을 제공하고 submit이 되지 말아야 하는데, 경고창이 제공되더라고 submit이 된다.
	엔터의 문제를 해결할려면 HTML Form Control을 두개 만들되 하나만 보여주지 않는다.-->
					아이디 <input type="text" name="id" id="id" class="inputBox" /><input
						type="button" value="중복확인" id="btn" class="btn" /> <input
						type="text" style="display: none">
				</form>
			</div>
			<div id = "useId">
					<input type ="button" value ="사용" class="btn" onclick = "userID('${param.id}')" style ="height: 32px;  background-color : #5B5B5B ; color : #FFFFFF"/>
			</div>
	</div>
</div>
</body>
</html>
<%-- 	<div>
		<c:if test ="${not empty param.id}">
			<c:choose>
				<c:when test="${requestScope.idFlag }">
					<span style ="color : #2A5893; font-weight :bold" > <c:out value = "${param.id}"/>는 사용가능합니다.</span>
					<a href ="#void" onclick = "userID('${param.id}')">사용</a>
				</c:when>
				
				<c:otherwise>
					<c:out value ="${parma.id }" />는 이미 사용중입니다.
				</c:otherwise>
			</c:choose>
				
		</c:if>
	</div>
	 --%>