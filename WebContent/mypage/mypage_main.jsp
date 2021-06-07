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
 <link href="http://localhost/jsp_prj/common/bootstrap/css/bootstrap.min.css" rel="stylesheet">

 <!-- jQuery CDN(Contents Delivery Network) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
 <!-- bootstrap -->
<script src="http://localhost/jsp_prj/common/bootstrap/js/bootstrap.min.js"></script>

<style type="text/css">
	#wrap {width : 1200px;        margin : 200px auto      }
    #header{margin-bottom: 0px;}
  	#title{font-size: 36px;}
  	#subtitle{width: 24% ;text-align: center ; font-color :#FFFFFF
  	 ;}
	#navibar{width: 100% ;background-color: black ; font-size: 15px ; }
	#taHead{background-color: #EAEAEA;}
</style>
<script type="text/javascript">

</script>
</head>
<body>
<div>
	<div id="wrap">
	
	<div id="title"><strong>My page</strong> > 내 상점 </div>
	
		<div id="navibar">
		<ul class="nav nav-pills">
		 <li role="presentation" id="subtitle"><a href ="#">내 상점</a></li>
		<li role="presentation" id="subtitle"><a href ="#">정보수정</a></li>
		<li role="presentation" id="subtitle"><a href ="#">비밀번호변경</a></li>
		<li role="presentation" id="subtitle"><a href ="#">내 댓글 관리.</a></li>
		</ul>
		</div>
	<div>
	<table class="table table-hover">
		<br/>
		<thead>
		<tr id="taHead">
			<th>No.</th>
			<th>title</th>
			<th colspan="2">time</th>
		</tr>
		</thead>
		<tbody>
		<tr>
			<td>데이터</td>
			<td>데이터</td>
			<td>데이터</td>
			<td><input type= "button" value ="상세정보 "/></td>
		</tr>
		</tbody>
	</table>
		</div>
	</div> 
	</div>
</body>
</html>