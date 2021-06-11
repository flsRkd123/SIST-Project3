<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>adminLocation</title>

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

.admin-location-table-div {
	width: 100%;
	height:500px;
	overflow-y: scroll;
}

#location-table{
	border: 1px solid #333;	
	width: 100%;
}
#location-table td{
	text-align: center;
	border: 1px solid #333;	
	height:100px;
}

#location-no{
	width:200px;
	background-color: #ECECED;
}
#location-main{
	width:700px;
	background-color: #ECECED;
}
#location-check{
	width:200px;
	background-color: #ECECED;
}

a{
	text-decoration: none;
}
</style>
<script type="text/javascript">


</script>
</head>
<body>
<div id="wrap">
 <%@ include file ="ad_header.jsp" %>
<div class="container">

	<div class="admin-wrap">
	
		<div class="admin-menu">
			<table id="table">
				<tr>
					<td><a href="http://localhost/sistProject3/admin/ad_location.jsp" style="text-decoration: none; color:black;">지역관리</a></td>
					<td><a href="http://localhost/sistProject3/admin/ad_product.jsp" style="text-decoration: none; color:black;">상품관리</a></td>
					<td><a href="http://localhost/sistProject3/admin/ad_member.jsp" style="text-decoration: none; color:black;">회원관리</a></td>
				</tr>
			</table>
		</div>
		
		<div class="admin-main-title">
		지역관리
		</div>
		
		<div class="admin-location-table-div">
			<table id="location-table">
				<tr>
					<td id="location-no">No</td>
					<td id="location-main">관리지역</td>
					<td id="location-check">On/Off</td>
				</tr>
				
				<%for(int i=0;i<10;i++){ %>
				<tr>
					<td></td>
					<td></td>
					<td><input type="checkbox"/></td>
				</tr>
				<%} %>
				
			</table>
		</div>
		
	</div>

</div>
<%@ include file = "ad_footer.jsp" %>
</div>
</body>
</html>








