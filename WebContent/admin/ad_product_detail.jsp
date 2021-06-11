<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>adminProductDetail</title>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css" rel="stylesheet">

<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<style>
html, body {
	margin: 0;
	padding: 0;
	height: 100%;
}

.container {
	min-height: 90%;
	position: relative;
}

.admin-wrap {
	position:relative;
	border: 1px solid #333;
	width: 905px;
	height: 1100px;
	margin: 50px auto;
}

#admin-detail-picture1 {
	position:absolute;
	border-bottom: 1px solid #333;
	border-right: 1px solid #333;
	width: 456px;
	height: 450px;
	text-align: center;
	
}

#admin-detail-picture2 {
	position:absolute;
	/* border: 1px solid #333; */
	width: 448px;
	height: 450px;
	left:456px;	
}

#admin-detail-comment {
	position:absolute;
	/* border: 1px solid #333; */
	width:905px;
	height: 150px;
	margin-top: 450px;
	text-align: center;
	padding: 5px;
}

#admin-detail-comment-table {
	position:absolute;
	border-top: 1px solid #333;
	width:903px;
	height: 400px;
	text-align: center;
	margin-top: 600px;
	overflow-y: scroll;
}

#admin-detail-delback {
	position:absolute;
	border-top: 1px solid #333;
	width:904px;
	height: 100px;
	margin-top: 1000px;
	text-align: center;
	padding-top: 15px;
}

#btn-del {
	width: 140px;
	height: 70px;
}

#btn-back {
	width: 140px;
	height: 70px;
}

#comment-table {
	width: 100%;
}

#comment-table th{
	background-color: #ECECED;
}

#comment-table-id {
	width: 100px;
	border-bottom: 1px solid #333;
}

#comment-table-content {
	width: 250px;
	border-bottom: 1px solid #333;
}

#comment-table-regdate {
	width: 100px;
	border-bottom: 1px solid #333;
}

#comment-table-del {
	width: 70px;
	border-bottom: 1px solid #333;
}

#comment-table td {
	height: 70px;
	border-bottom: 1px solid #333;
}

.img {
	position: absolute;
	width: 455px;
	height: 415px;
	-webkit-transition: opacity 1s ease-in-out;
	-moz-transition: opacity 1s ease-in-out;
	-o-transition: opacity 1s ease-in-out;
	transition: opacity 1s ease-in-out;
	opacity: 1;
	-ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";
	filter: alpha(opacity = 0);
	display: block; /* 이거안해주면 이미지 가운데로 이동 */
}

#img-wrap {
	position:relative;
	width:450px;
	height:450px;
}
#nextprevbtn{
	position: absolute;
	margin:0 auto;
	top:417px;
	left:175px;

}
</style>
<script type="text/javascript">
/*이미지슬라이드*/
$(function(){
	$(".prev").on("click", function (e) { 
		e.preventDefault(); // 이미지 현재의 위치 
				var imgOn = $(".imgBox").find(".on").index(); // 이미지 총 개수 
				var imgLen = $(".imgBox .img").length;
				console.log(imgOn) // imgBox안의 img 중 imgOn 번째의 on 클래스 삭제 
				$(".imgBox .img").eq(imgOn).removeClass("on"); // imgBox안의 img 중 imgOn 번째 숨기기 
				$(".imgBox .img").eq(imgOn).css("opacity", 0); // 이전의 위치로 돌아가야함으로 
				imgOn = imgOn - 1;
				if (imgOn < 0) { // 돌아가 위치가 -1일 경우 // 이미지의 마지막으로 돌아간다 
					$(".imgBox .img").eq(imgLen - 1).css("opacity", 1);
					$(".imgBox .img").eq(imgLen - 1).addClass("on");
				} else { // 돌아갈 위치가 -1이 아닌 경우 
					$(".imgBox .img").eq(imgOn).css("opacity", 1);
					$(".imgBox .img").eq(imgOn).addClass("on");
				}
			});
	
			$(".next").on("click", function(e) {
				e.preventDefault(); // 위에 동일 
				var imgOn = $(".imgBox").find(".on").index();
				var imgLen = $(".imgBox .img").length; // 위에 동일 
				$(".imgBox .img").eq(imgOn).removeClass("on");
				$(".imgBox .img").eq(imgOn).css("opacity", 0); // 다음의 위치로 알아야 되기 때문에 
				imgOn = imgOn + 1;
				if (imgOn === imgLen) { // 다음의 위치가 총 개수보다 클 경우 // 처음의 위치로 돌아간다 
					$(".imgBox .img").eq(0).css("opacity", 1);
					$(".imgBox .img").eq(0).addClass("on");
				} else { // 다음 위치가 있는 경우 
					$(".imgBox .img").eq(imgOn).css("opacity", 1);
					$(".imgBox .img").eq(imgOn).addClass("on");
				}
		});
	
	$("#btn-back").click(function(){
		location.href="ad_product.jsp";		
	});
});//ready
	
</script>
</head>
<body>
 <%@ include file ="ad_header.jsp" %>
<div class="container">
	<div class="admin-wrap">
	
		<div id="admin-detail-picture1">
			<div id="img-wrap"> 
				<div id="nextprevbtn"><input type="button" value="이전" class="prev"/><input type="button" value="다음" class="next"/></div>
					<div class="imgBox" style="width:450;height:450px;">
						<img class="img" src="http://localhost/sistProject3/common/images/a1.jpg"> 
						<img class="img" src="http://localhost/sistProject3/common/images/a2.jpg"> 
						<img class="img" src="http://localhost/sistProject3/common/images/a3.jpg"> 
						<img class="img" src="http://localhost/sistProject3/common/images/a4.jpg"> 
						<img class="img" src="http://localhost/sistProject3/common/images/a5.jpg"> 
					</div>			
			</div>
		</div>
		
		<div id="admin-detail-picture2">
			<div style="height:100px; border-bottom:1px solid #333; padding-top:30px">
				<div style="float:left; width:250px; height:50px; font-size: 25px; padding-left:15px; border: 1px solid #333"><label>상품명</label></div>
				<div style="float:right; width:180px; height:50px; border: 1px solid #333; ">삽/팝니다</div>			
			</div>
			
			<div style="height:50px;text-align:center ;border-bottom: 1px solid #333;">
				<div style="float:left; font-size: 20px; padding-top:9px; padding-left:15px"><label>가격:</label></div>
			</div>
			<div style="height:300px;border-bottom: 1px solid #333; padding:15px;">
				<div style="height:50px; font-size: 20px;"><label>아이디:</label> sist123</div>
				<div style="height:50px; font-size: 20px;"><label>등록일:</label> 2021-06-11</div>
				<div style="height:200px; font-size: 20px;"><label>상세내용:</label><br/>
					상세내용1<br/>
					상세내용2<br/>
					상세내용3
				</div>
			</div>
		</div>
		
		<div id="admin-detail-comment">
			<input type="text" style="width: 700px; height: 140px"/>
			<input type="button" value="등록" style="width: 150px; height: 140px"/>
		</div>
		
		<div id="admin-detail-comment-table">
			<table id="comment-table">
				<tr>
					<th id="comment-table-id">아이디</th>
					<th id="comment-table-content">내용</th>
					<th id="comment-table-regdate">날짜</th>
					<th id="comment-table-del">삭제</th>
				</tr>
				<%for(int i=0;i<10;i++){ %>
				<tr>
					<td>1</td>
					<td>2</td>
					<td>3</td>
					<td><input type="button" value="삭제"/></td>
				</tr>
				<%} %>
			</table>
		</div>
		
		<div id="admin-detail-delback"><input type="button" value="삭제하기" id="btn-del"/>&emsp;&emsp;&emsp;<input type="button" value="뒤로가기" id="btn-back"/></div>
	</div>
</div>
<%@ include file = "ad_footer.jsp" %>
</body>
</html>
