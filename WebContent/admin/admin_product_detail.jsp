<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>adminProductDetail</title>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css" rel="stylesheet">
<style>
html, body {
	margin: 0;
	padding: 0;
	height: 100%;
}

.container {
	min-height: 90%;
	position: relative;
}

.admin-wrap {
	border: 1px solid #333;
	width: 70%;
	height: 1100px;
	margin: 50px auto;
}

#admin-detail{
	border: 1px solid #333;
	width:100%;
	height: 900px;
}

#admin-detail-picture1{
	border: 1px solid #333;
	width:450px;
	height: 450px;
	text-align: center;
	float:left;
}

#admin-detail-picture2{
	border: 1px solid #333;
	width:450px;
	height: 450px;
	/* text-align: center; */
	float:right;
}
#admin-detail-comment{
	border: 1px solid #333;
	height: 150px;
	margin-top: 450px;
	/* text-align: center; */
}
#admin-detail-comment-table{
	border: 1px solid #333;
	height: 400px;
	text-align: center;
}
#admin-detail-delback{
	border: 1px solid #333;
	height: 100px;
	text-align: center;
	padding-top:20px;
}

#btn-del{
	width:140px;
	height:70px;
}

#btn-back{
	width:140px;
	height:70px;
}

</style>
<script type="text/javascript">

</script>
</head>
<body>
 <%@ include file ="../header.jsp" %>
<div class="container">
	<div class="admin-wrap">
		<div id="admin-detail-picture1"></div>
		
		<div id="admin-detail-picture2">
			<div style="height:100px;border: 1px solid #333;"><label>상품명</label></div>
			<div style="height:50px;text-align:center ;border: 1px solid #333;">
				<div style="float:left">가격</div>
				<div><input type="text" style="width:350px; height:48px"/></div>
			</div>
			<div style="height:300px;border: 1px solid #333;">
				<div style="height:50px">아이디 :</div>
				<div style="height:50px">등록일 :</div>
				<div style="height:200px">상세내용 :</div>
			</div>
		</div>
		
		<div id="admin-detail-comment">
			<div style="float:left"><input type="text" style="width: 750px; height: 150px"/></div>
			<div style="float:left"><input type="button" value="등록" style="width: 153px; height: 150px"/></div>
		</div>
		
		<div id="admin-detail-comment-table"></div>
		
		<div id="admin-detail-delback"><input type="button" value="삭제하기" id="btn-del"/>&emsp;&emsp;&emsp;<input type="button" value="뒤로가기" id="btn-back"/></div>
	</div>
</div>
<%@ include file = "../footer.jsp" %>
</body>
</html>
