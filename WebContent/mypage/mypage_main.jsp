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
	#wrap {width : 1200px;  margin : 30px auto      }
  	#title{font-size: 36px;}
	#navibar{width: 100% ; font-size: 15px ; width: 90%; margin-left: 5% ; margin: 30px auto }
  	#subtitle{width: 24% ;text-align: center ; }
  	#li_txt:hover{border-bottom: 1px solid yellow; }
	#taHead{background-color: #EAEAEA;}
	#table{width: 90%; margin-left: 5% ;height : 550px}
	#data{padding: 14px 12px}
</style>
<script type="text/javascript">

</script>
</head>
<body>
<div>
	<%@ include file="../header.jsp" %>
	<div id="wrap">
	<div id="title"><strong>My page</strong> > 내 상점 </div>
		<div id="navibar">
		<ul class="navbar navbar-expand navbar-dark bg-dark" role="navigation">
		<li role="presentation" id="subtitle" class="nav-link px-2 text-white"><a id="li_txt" class="navbar-brand" href ="#">내 상점</a></li>
		<li role="presentation" id="subtitle" class="nav-link px-2 text-white"><a id="li_txt" class="navbar-brand"href ="#">정보수정</a></li>
		<li role="presentation" id="subtitle" class="nav-link px-2 text-white"><a id="li_txt" class="navbar-brand"href ="#">비밀번호변경</a></li>
		<li role="presentation" id="subtitle" class="nav-link px-2 text-white"><a id="li_txt" class="navbar-brand" href ="#">내 댓글 관리</a></li>
		</ul>
		</div>
	<div id= "table">
	<table class="table table-hove">
		<thead>
		<tr id="taHead">
			<th style ="width:200px">No.</th>
			<th style ="width:500px">title</th>
			<th style ="width:200px" colspan="2">time</th>
		</tr>
		</thead>
		<tbody>
		<tr>
			<td  id="data">데이터</td>
			<td id="data">데이터</td>
			<td id="data">데이터</td>
			<td style ="width:130px" ><input  type= "button"  class="btn btn-warning" value ="상세정보 "  
			 style ="background-color: #FFC107;font:12px/15px 굴림, Gulim, sans-serif; " /></td>
		</tr>
		</tbody>
	</table>
	</div>
	</div> 
	<%@ include file="../footer.jsp" %>
	</div>
</body>
</html>