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


<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css" rel="stylesheet">

 <style type = "text/css">
   html,
body {
   margin:0;
   padding:0;
   height:100%;
} 
#wrap {
        display: flex;
        width: 100%;
        height: 100%;
        flex-direction: column;
        justify-content: space-between;
        margin : auto 0px;
      }
 .container {
   min-height:82%;
   position:relative;
   text-align : center;
   
  /*padding-bottom:100px;/* footer height */
}

td{
	width : 50%;
	padding-top : 30px;
	font-size : 17px;
} 
#id_find_table td{
	width : 50%;
	padding-top : 48px;
	font-size : 17px;
} 
table {
 talbe-layout : fixed;
}
 </style>
<script type="text/javascript">


</script>
</head>
<body>
<div id = "wrap">
   <%@ include file ="../header.jsp" %>


<div class = "container">	
<div style = " margin-top : 50px; font-size: 30px; font-weight: bold; border-bottom : 1px solid #333 ">
	아이디/비밀번호 찾기
</div>
	<div style = "width : 100%; height : 100%">
		<div id="idFind" style ="width : 50%; height : 100%; float : left;">
			<table id = "id_find_table" style = "margin : 60px auto;  font-weight: bold; width : 100%;">
				<thead>
					<tr>
						<th colspan="2" style ="font-size: 30px; height : 120px">아이디 찾기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style = "text-align : right; padding-right : 100px; "> 이름 </td>
						<td style="text-align:left; width : 80%"> <input type="text" class="inputBtn" > </td>
					</tr>
					<tr>
						<td style = "text-align : right; padding-right : 100px"> 이메일 </td>
						<td style =" text-align:left"> <input type="text" class="inputBtn" style ="width: 120px;"> @  	
						<select name = "email" id = "domain" class ="inputBox" style = "width : 120px;">
							<option value = "naver.com">naver.com</option>		
							<option value = "daum.net">daum.net</option>
							<option value = "google.com">google.com</option>		
							<option value = "hanmail.com">hanmail.com</option>
						</select>
						</td>
					</tr>
					<tr>
						<td colspan = "2"> <input type="button" id = "id_find_btn" value = "아이디찾기" class = "btn btn-primary"> </td>
						
					</tr>
					
				</tbody>
			
			</table>
		</div>
		<div id="passFind" style ="width : 50%; height : 100%; float :left ">	
			<table style = "margin : 60px auto;  font-weight: bold; width : 100%; ">
				<thead>
					<tr>
						<th colspan="2" style ="font-size: 30px; height : 120px">비밀번호 찾기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style = "text-align : right; padding-right : 100px"> 이름 </td>
						<td style="text-align:left; width : 80%"> <input type="text" class="inputBtn" > </td>
					</tr>
					<tr>
						<td style = "text-align : right; padding-right : 100px"> 이메일 </td>
						<td style =" text-align:left"> <input type="text" class="inputBtn" style ="width: 120px;"> @  	
						<select name = "email" id = "domain" class ="inputBox" style = "width : 120px;">
							<option value = "naver.com">naver.com</option>		
							<option value = "daum.net">daum.net</option>
							<option value = "google.com">google.com</option>		
							<option value = "hanmail.com">hanmail.com</option>
						</select>
						</td>
					</tr>
					<tr>
						<td style = "text-align : right; padding-right : 100px"> 아이디 </td>
						<td style="text-align:left; width : 80%"> <input type="text" class="inputBtn" > </td>
					</tr>
					<tr>
						<td colspan = "2"> <input type="button" id = "pass_find_btn" value = "비밀번호 찾기" class = "btn btn-primary"> </td>
						
					</tr>
					
				</tbody>
			
			</table>
		</div>
	</div>
</div>
   <%@ include file ="../footer.jsp" %>
</div>
</body>
</html>