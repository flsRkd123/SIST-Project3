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
	text-align: center;
	padding: 5px;
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
	padding-top:15px;
}

#btn-del{
	width:140px;
	height:70px;
}

#btn-back{
	width:140px;
	height:70px;
}

#comment-table{
	width:100%;
}

#comment-table-id{
	width:100px;
	border-bottom: 1px solid #333;
}
#comment-table-content{
	width:250px;
	border-bottom: 1px solid #333;
}
#comment-table-regdate{
	width:100px;
	border-bottom: 1px solid #333;
}
#comment-table-del{
	width:70px;
	border-bottom: 1px solid #333;
}

#comment-table td{
	height:70px;
	border-bottom: 1px solid #333;
}

</style>
<script type="text/javascript">

</script>
</head>
<body>
 <%@ include file ="admin_header.jsp" %>
<div class="container">
	<div class="admin-wrap">
		<div id="admin-detail-picture1">
			사진(슬라이더)
		</div>
		
		<div id="admin-detail-picture2">
			<div style="height:100px;border: 1px solid #333;padding-top:30px">
				<div style="float:left; width:250px; height:50px; font-size: 25px; border: 1px solid #333"><label>상품명</label></div>
				<div style="float:right; width:180px; height:50px; border: 1px solid #333; ">삽/팝니다</div>
				
			</div>
			
			<div style="height:50px;text-align:center ;border: 1px solid #333;">
				<div style="float:left; font-size: 20px;">가격</div>
				<div><input type="text" style="width:350px; height:48px"/></div>
			</div>
			<div style="height:300px;border: 1px solid #333;">
				<div style="height:50px">아이디 :</div>
				<div style="height:50px">등록일 :</div>
				<div style="height:200px">상세내용 :</div>
			</div>
		</div>
		
		<div id="admin-detail-comment">
			<input type="text" style="width: 700px; height: 140px"/>
			<input type="button" value="등록" style="width: 150px; height: 140px"/>
		</div>
		
		<div id="admin-detail-comment-table">
			<table id="comment-table">
				<tr>
					<th id="comment-table-id">아이디</th>
					<th id="comment-table-content">내용</th>
					<th id="comment-table-regdate">날짜</th>
					<th id="comment-table-del">삭제</th>
				</tr>
				<tr>
					<td>1</td>
					<td>2</td>
					<td>3</td>
					<td><input type="button" value="삭제"/></td>
				</tr>
				<tr>
					<td>1</td>
					<td>2</td>
					<td>3</td>
					<td><input type="button" value="삭제"/></td>
				</tr>
			</table>
		</div>
		
		<div id="admin-detail-delback"><input type="button" value="삭제하기" id="btn-del"/>&emsp;&emsp;&emsp;<input type="button" value="뒤로가기" id="btn-back"/></div>
	</div>
</div>
<%@ include file = "admin_footer.jsp" %>
</body>
</html>
