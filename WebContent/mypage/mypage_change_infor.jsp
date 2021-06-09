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
<link href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css" rel="stylesheet">
 <!-- jQuery CDN(Contents Delivery Network) -->
 <script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
 <!-- bootstrap -->
<script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>

<style type="text/css">
	#wrap {width : 1200px;  margin : 70px auto      }
  	#title{font-size: 36px;}
	#navibar{width: 100% ; font-size: 15px ; width: 90%; margin-left: 5% ; margin: 30px auto }
  	#subtitle{width: 24% ;text-align: center ; }
  	#li_txt:hover{border-bottom: 1px solid yellow; }
	#taHead{background-color: #EAEAEA;}
	#table{width: 90%; margin: 80px auto;}
	table{width: 550px;height : 300px;  font-size:23px;margin-left: 30%;}
	th{width : 130px;}
	td{padding: 10px; width : 180px;}
	#data{padding: 14px 12px}
</style>
<script type="text/javascript">

</script>
</head>
<body>
<div>
	<%@ include file="../header.jsp" %>
	<div id="wrap">
	<div id="title"><strong>My page</strong> > 정보수정 </div>
		<div id="navibar">
		<ul class="navbar navbar-expand navbar-dark bg-dark" role="navigation">
		<li role="presentation" id="subtitle" class="nav-link px-2 text-white"><a id="li_txt" class="navbar-brand" href ="mypage_myshop.jsp">내 상점</a></li>
		<li role="presentation" id="subtitle" class="nav-link px-2 text-white"><a id="li_txt" class="navbar-brand"href ="mypage_checkpass_infor.jsp">정보수정</a></li>
		<li role="presentation" id="subtitle" class="nav-link px-2 text-white"><a id="li_txt" class="navbar-brand"href ="mypage_checkpass_changepass.jsp">비밀번호변경</a></li>
		<li role="presentation" id="subtitle" class="nav-link px-2 text-white"><a id="li_txt" class="navbar-brand" href ="mypage_mycomment.jsp">내 댓글 관리</a></li>
		</ul>
		</div>
	<div id= "table">
	<table>
				<tr>
					<th>이름</th>
					<td>	<input  style="height:35px; width:200px" type="text" id="name" name="name"></td>
				</tr>
				<tr>
					<th>연락처</th>
					<td>	<input  style="height:35px; width:200px" type="text" id="name" name="name"></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td>	<input  style="height:35px; width:200px" type="text" id="name" name="name"></td>
				</tr>
				<tr>
					<th>우편주소</th>
					<td>	<input  style="height:35px; width:200px" type="text" id="name" name="name">
							<input type="button"  id="find_addr" name="find_addr" class="btn btn-defualt" value=" 우편주소찾기" 
							 style =" width:150px ; background-color:gray ;font :17px bold 굴림 ; color: white"/>
					</td>
				</tr>
				<tr>
					<th>주소</th>
					<td>	<input  style="height:35px; width:400px" type="text" id="name" name="name"></td>
				</tr>
				<tr>
					<th>상세주소</th>
					<td>	<input  style="height:35px; width:400px" type="text" id="name" name="name"></td>
				</tr>
				<tr>
					<th>주 거래지역</th>
					<td>	<input  style="height:35px; width:200px" type="text" id="name" name="name"></td>
				</tr>
				<tr >
					<td colspan="2" style="text-align: center">	<input type="button"  id="info_btn" name="info_btn" class="btn btn-warning" value=" 수정하기" 
							 style =" width:100px ;'background-color: #FFC107; font:25px bold 굴림; "/></td>
				</tr>
	</table>
	</div>
	</div> 
	<%@ include file="../footer.jsp" %>
	</div>
</body>
</html>