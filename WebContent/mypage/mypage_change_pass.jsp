<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<!-- bootstrap -->
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css"
	rel="stylesheet">
<!-- jQuery CDN(Contents Delivery Network) -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<!-- bootstrap -->
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>

<style type="text/css">
#wrap {
	width: 1200px;
	margin: 30px auto
}

#title {
	font-size: 36px;
}

#navibar {
	width: 100%;
	font-size: 15px;
	width: 90%;
	margin-left: 5%;
	margin: 30px auto
}

#subtitle {
	width: 24%;
	text-align: center;
}

#li_txt:hover {
	border-bottom: 1px solid yellow;
}

#taHead {
	background-color: #EAEAEA;
}

#table {
	width: 500px;
	height: 400px;
	margin: 80px auto
}

table {
	width: 500px;
	height: 300px;
	text-align: center
}

#data {
	padding: 14px 12px
}
</style>
<script type="text/javascript">
function changepass(){
if($("#pass").val() == $("#passchk").val()){
	alert("비밀번호가 변경되었습니다.");
	//window.close();  
}else{
	alert("잘못된 정보입니다. 다시 입력 해 주세요 !");
	$("#pass").val("");
	$("#passchk").val("");
}
};
</script>
</head>
<body>
	<div>
		<%@ include file="../header.jsp"%>
		<div id="wrap">
			<div id="title">
				<strong>My page</strong> > 비밀 번호
			</div>
			<div id="navibar">
				<ul class="navbar navbar-expand navbar-dark bg-dark"
					role="navigation">
					<li role="presentation" id="subtitle"
						class="nav-link px-2 text-white"><a id="li_txt"
						class="navbar-brand" href="mypage_myshop.jsp">내 상점</a></li>
					<li role="presentation" id="subtitle"
						class="nav-link px-2 text-white"><a id="li_txt"
						class="navbar-brand" href="mypage_checkpass_infor.jsp">정보수정</a></li>
					<li role="presentation" id="subtitle"
						class="nav-link px-2 text-white"><a id="li_txt"
						class="navbar-brand" href="mypage_checkpass_changepass.jsp">비밀번호변경</a></li>
					<li role="presentation" id="subtitle"
						class="nav-link px-2 text-white"><a id="li_txt"
						class="navbar-brand" href="mypage_mycomment.jsp">내 댓글 관리</a></li>
				</ul>
			</div>
			<div id="table">
				<table>
					<tr>
						<th style="height: 50px; font-size: 25px" colspan="2">비밀번호
							재설정</th>
					</tr>
					<tr>
						<td style="height: 35px; text-align:"><b>비밀번호 : </b></td>
						<td><input style="height: 35px; width: 200px" type="password"
							id="pass" name="pass" /></td>
					</tr>
					<tr>
						<td style="height: 35px;"><b>비밀번호 확인 : </b></td>
						<td><input style="height: 35px; width: 200px" type="password"
							id="passchk" name="passchk" /></td>
					</tr>
					<tr>
						<td style="height: 25px" colspan="2"><input type="button"
							id="pass_btn" name="pass_btn" class="btn btn-warning" value=" 확인"
							style="width: 100px; ' background-color: #FFC107; font: 25px 굴림;"  onclick="changepass()" /></td>
					</tr>
				</table>
			</div>
		</div>
		<%@ include file="../footer.jsp"%>
	</div>
</body>
</html>