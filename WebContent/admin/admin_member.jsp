<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>adminmember</title>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css" rel="stylesheet">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
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

#admin-member-table-div {
	width: 100%;
	height:500px;
}

#member-table{
	border: 1px solid #333;	
	width: 100%;
}
#member-table td{
	text-align: center;
	border: 1px solid #333;	
	height:100px;
}

#member-name{
	width:150px;
	background-color: #ECECED;
}
#member-id{
	width:150px;
	background-color: #ECECED;
}
#member-addr{
	width:600px;
	background-color: #ECECED;
}
#member-detail{
	width:150px;
	background-color: #ECECED;
}
/* 모달 */
#modal{
	display: none;
	position:absolute;
	width:100%;
	height:100%;
	z-index:1;
}
#modal h1{
	margin:15px auto;
	text-align: center;
}
#modal button{
	display:inline-block;
	width:100px;
	margin-left:calc(100%-100px-10px);
}

#modal .modal_content{
	width:650px;
	height:720px;
	margin:80px auto;
	padding: 20px 10px;
	background: #fff;
	border:2px solid #333;
}

#modal .modal_layer{
	position:fixed;
	top:0;
	left:0;
	width:100%;
	height:100%;
	background: rgba(0,0,0,0.5);
	z-index:-1;
	align-items:center;
	justify-conent: center;
}

#member-modal-table{
	/* border:1px solid #333;	 */
	margin:50px auto;
	width: 100%;
	font-size:20px;
}

#member-modal-table th{
	text-align: center;
}

#member-modal-table td{
	/* text-align: center; */
	/* border: 1px solid #333;	 */
}
</style>
<script>

$(function() {

	 $("#modal-open-btn").click(function(){
		 $("#modal").fadeIn();
	 });
	
	$("#modal-close-btn").click(function(){
		$("#modal").fadeOut();
	}); 

});
</script>
</head>
<body>
<div id="wrap">
 <%@ include file ="admin_header.jsp" %>
<div class="container">
<!-- 모달창 -->
<div id="modal">
	<div class="modal_content">
		<h1>회원관리</h1>
						
		<table id="member-modal-table">
			<tr>
				<th style="width:150px; height:50px;">이름</th>
				<td style="height:50px;"><input type="text" style="width:400px; height:50px;"/></td>		
			</tr>
			<tr>
				<th style="width:150px; height:50px;">아이디</th>
				<td style="height:50px;"><input type="text" style="width:400px; height:50px; background-color:#ECECED;"/></td>		
			</tr>
			<tr>
				<th style="width:150px; height:50px;">휴대폰번호</th>
				<td style="height:50px;"><input type="text" style="width:400px; height:50px;"/></td>		
			</tr>
			<tr>
				<th style="width:150px; height:50px;">이메일</th>
				<td style="height:50px;">
					<input type="text" style="width:195px; height:50px;"/>&nbsp;@
					<select style="width:170px;height:50px;">
						<option>선택해주세요.</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
					</select>
				</td>		
			</tr>
			<tr>
				<th style="width:150px; height:50px;">우편번호</th>
				<td style="height:50px;"><input type="text" style="width:400px; height:50px;"/></td>		
			</tr>
			<tr>
				<th style="width:150px; height:50px;">주소</th>
				<td style="height:50px;"><input type="text" style="width:400px; height:50px;"/></td>		
			</tr>
			<tr>
				<th style="width:150px; height:50px;">상세주소</th>
				<td style="height:50px;"><input type="text" style="width:400px; height:50px;"/></td>		
			</tr>
			<tr>
				<th style="width:150px; height:50px;">거래지역</th>
				<td style="height:50px;">
					<select style="width:400px ;height:50px;">
						<option>선택해주세요.</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
					</select>
				</td>		
			</tr>
			<tr>
				<th style="width:150px; height:50px;">가입일자</th>
				<td style="height:50px;"><input type="text" style="width:400px; height:50px; background-color:#ECECED;"/></td>		
			</tr>
			<tr>
				<td colspan="2" style="height:100px; text-align: center;">
					<input type="button" value="수정" id=""/>
					<input type="button" value="삭제" id=""/>
					<input type="button" value="닫기" id="modal-close-btn"/>
				</td>
			</tr>			
		</table>
		
	</div>
	<div class="modal_layer"></div>
</div>

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
			회원관리
		</div>
		
		<div class="admin-member-table-div">
			<table id="member-table">
				<tr>
					<td id="member-name">이름</td>
					<td id="member-id">아이디</td>
					<td id="member-addr">주소</td>
					<td id="member-detail">상세보기</td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td><input type="button" value="상세보기" id="modal-open-btn"/></td>
				</tr>	
			</table>
		</div>
		
	</div>

</div>
<%@ include file = "admin_footer.jsp" %>
</div>
</body>
</html>









