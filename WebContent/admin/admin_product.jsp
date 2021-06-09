<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>adminProduct</title>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css" rel="stylesheet">
<style>
html, body {
	margin: 0;
	padding: 0;
	height: 100%;
}

#wrap{
	display:flex;
	width:100%;
	height:100%;
	flex-direction:column;
	justify-content: space-between;
}

.container {
	display:flex;
	min-height: 62%;
	position: relative;
}

.admin-wrap {
	/* border: 1px solid #333; */
	width: 100%;
	height: 795px;
	margin: 0 auto;
}

.admin-menu {
	/* border: 1px solid #333; */
	width: 100%;
	height: 100px;
	margin: 0 auto;
}

#table {
	width: 100%;
	height: 100px;
}

#table td {
	font-size: 40px;
	text-align: center;
	border-bottom: 1px solid #333;
}

.admin-main-title {
	margin-top:30px;
	width: 100%;
	height:100px;
	font-size:35px;
	font-weight: 1000;
}

#admin-product-table-div {
	width: 100%;
	height:500px;
}

#product-table{
	border: 1px solid #333;	
	width: 100%;
}
#product-table td{
	text-align: center;
	border: 1px solid #333;	
	height:100px;
}

#product-no{
	width:150px;
	background-color: #ECECED;
}
#product-main{
	width:500px;
	background-color: #ECECED;
}
#product-writer{
	width:150px;
	background-color: #ECECED;
}
#product-regdate{
	width:150px;
	background-color: #ECECED;
}
#product-detail{
	width:100px;
	background-color: #ECECED;
}
</style>
<script type="text/javascript">


</script>
</head>
<body>
<div id="wrap">
 <%@ include file ="admin_header.jsp" %>
<div class="container">

	<div class="admin-wrap">
	
		<div class="admin-menu">
			<table id="table">
				<tr>
					<td>지역관리</td>
					<td>상품관리</td>
					<td>회원관리</td>
				</tr>
			</table>
		</div>
		
		<div class="admin-main-title">
		상품관리
		</div>
		
		<div class="admin-product-table-div">
			<table id="product-table">
				<tr>
					<td id="product-no">No</td>
					<td id="product-main">상품명</td>
					<td id="product-writer">등록자</td>
					<td id="product-regdate">등록일자</td>
					<td id="product-detail">상세보기</td>
				</tr>
				<tr>
					<td></td>
					<td ></td>
					<td ></td>
					<td ></td>
					<td ><input type="button" value="상세보기"/></td>
				</tr>	
			</table>
		</div>
		
	</div>

</div>
<%@ include file = "admin_footer.jsp" %>
</div>
</body>
</html>
