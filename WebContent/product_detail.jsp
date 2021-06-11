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
    
    <!-- JQuery CDN(Contents Delivery Network) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	
	<!-- bootstrap -->
    <!-- 이미지 슬라이더 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css" rel="stylesheet">
	
<style type="text/css">
	///////////////////////////////////
	/* 이미지 슬라이더 */
	.swiper-container {
	width:250px;
	height:250px;
	border:5px solid silver;
	border-radius:7px;
	box-shadow:0 0 20px #ccc inset;
	}
	.swiper-slide {
		text-align:center;
		display:flex; /* 내용을 중앙정렬 하기위해 flex 사용 */
		align-items:center; /* 위아래 기준 중앙정렬 */
		justify-content:center; /* 좌우 기준 중앙정렬 */
	}
	.swiper-slide img {
		box-shadow:0 0 5px #555;
	}
	///////////////////////////////////

	#wrap {width : 1200px; height:900px ;margin : 30px auto;}
	
	#pro_box{border: 1px solid #333; margin:100px;position: relative;height: 1000px;}
	#pro_detail{border: 1px solid #333;width: 500px; height: 700px;position: absolute;left: 600px;}
	#pro_img{border: 1px solid #333;width: 500px; height: 500px;position: absolute;}
	#commentBox{position: absolute; top:800px;left : 250px; width: 800px}
		#commentContent{width: 730px; height: 60px;}
		.btn btn-default{width: 60px; height: 60px;}
	
</style>
</head>

<body>
	<%@ include file ="header.jsp" %>
	<div id="wrap">
	<div id="pro_box">
		<div id="pro_img"><img alt="" src="test_image/gosling.PNG"></div>
		
		<div id="pro_detail">
			<div id="pro_title"><h1><label>상품명</label></h1></div>
			<div id="pro_status"><h2><span class="label label-success">팝니다.</span></h2></div>
			<div id="pro_price"><label>30,000 원</label></div>
			<div id="pro_user"><label>아이디 : sist</label></div>
			<div id="pro_date"><label>등록일2021-12-12</label></div>
			<div id="pro_contents"><label>상세내용</label><p>이거 진짜 개쩌는데 뭐라고 설명할 방법이 없네 꼭 써보시고요요</p></div>
		</div>
		
		<div id="commentWrap"> 
		
		  <div id="commentBox">
		    <input type="text" id="commentContent" placeholder="댓글을 입력해주세요...">
		    <span id="commentButton">
		      <button class="btn btn-default" type="button">입력</button>
		    </span>
		  </div>
		  
		  <div>
		  	<table>
		  	<tr>
		  		<td>작성자</td>
		  		<td>내용</td>
		  		<td>작성일</td>
		  		<td></td>
		  	</tr>
		  	<tr>
		  		<td>작성자</td>
		  		<td>내용</td>
		  		<td>작성일</td>
		  		<td></td>
		  	</tr>
		  	<tr>
		  		<td>작성자</td>
		  		<td>내용</td>
		  		<td>작성일</td>
		  		<td></td>
		  	</tr>
		  	</table>
		  
		  </div>
		  
		  
		</div>
	
	</div>
	</div>
	<%@ include file ="footer.jsp" %>
</body>
</html>