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
    <link href="http://localhost/jsp_prj/common/bootstrap-3.3.2/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- JQuery CDN(Contents Delivery Network) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<!-- bootstrap -->
    <script src="http://localhost/jsp_prj/common/bootstrap-3.3.2/js/bootstrap.min.js"></script>
    <!-- 이미지 슬라이더 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
    
<style type="text/css">
	

	#wrap {width : 1200px; height:900px ;margin : 30px auto;}
	
	#pro_box{border: 1px solid #333; margin:100px; position: relative;}
	#pro_img{border: 1px solid #333;width: 500px; height: 500px; position: absolute;}
	#pro_detail{border: 1px solid #333;width: 500px; height: 300px; position: absolute; left: 500px}
	
	.col-lg-6{top: 600px;margin: 30px auto;}
	.form-control{height: 100px;}
	.comment_ok{height: 100px;width: 70px; }
</style>
</head>

<body>
	<%@ include file ="header.jsp" %>
	<div id="wrap">
		<div id="pro_box">
			<div id="pro_img"><img alt="" src="common/images/gosling.PNG"></div>
			<div id="pro_detail">
				<div id="pro_title"><h1><label>상품명</label></h1></div>
				<div id="pro_status"><h2><span class="label label-success">팝니다.</span></h2></div>
				<div id="pro_price"><label>30,000 원</label></div>
				<div id="pro_user"><label>아이디 : sist</label></div>
				<div id="pro_date"><label>등록일2021-12-12</label></div>
				<div id="pro_contents"><label>상세내용</label><p>이거 진짜 개쩌는데 뭐라고 설명할 방법이 없네 꼭 써보시고요요</p></div>
			</div>
		</div>
			
		<div class="col-lg-6">
		  <div class="input-group">
		    <input type="text" class="form-control" placeholder="댓글을 입력해주세요...">
		    <span class="input-group-btn">
		      <input type="button" class="comment_ok" value="입력"/>
		    </span>
		  </div><!-- /input-group -->
		</div><!-- /.col-lg-6 -->
		
		
	</div>
	<%@ include file ="footer.jsp" %>
</body>
</html>