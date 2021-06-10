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
	width: 90%;
	margin: 80px auto;
}

table {
	width: 550px;
	height: 300px;
	font-size: 20px;
	margin-left: 30%;
}

th {
	width: 130px;
}

td {
	padding: 10px;
	width: 180px;
}

#data {
	padding: 14px 12px
}
</style>
<script type="text/javascript">
	$(function() {
		$("#info_btn").click(function() {
			chkNull();
		});
	});//Ready
	function chkNull() {
		if ($("#name").val() == "") {
			alert("이름을 입력해주세요");
			$("#name").focus();
			return;
		}
		if ($("#phone").val() == "") {
			alert("연락처를 입력해주세요");
			$("#phone").focus();
			return;
		}
		if ($("#phone").val().indexOf("-") != -1) {
			alert("연락처는 '-'를 빼고 입력해주세요");
			$("#phone").focus();
			$("#phone").val("");
			return;

		}
		if ($("#phone").val().length > 13) {
			alert("연락처를 다시 입력해주세요");
			$("#phone").val("");
			$("#phone").focus();
			return;
		}

		if ($("#emailId").val() == "") {
			alert("이메일을 입력해주세요");
			$("#emailId").focus();
			return;
		}
		if ($("#addr1").val() == "") {
			alert("우편번호를 입력해주세요");
			$("#addr1").focus();
			return;
		}
		if ($("#addr2").val() == "") {
			alert("주소를 입력해주세요");
			$("#addr2").focus();
			return;
		}
		if ($("#addr3").val() == "") {
			alert("상세주소를 입력해주세요");
			$("#addr3").focus();
			return;
		}
		if ($("#loc").val() == "") {
			alert("지역을 입력해주세요");
			$("#loc").focus();
			return;
		}

		alert("정보수정을 완료 하였습니다.");
	}
</script>
</head>
<body>
	<div>
		<%@ include file="../header.jsp"%>
		<div id="wrap">
			<div id="title">
				<strong>My page</strong> >정보수정
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
						<th>이름</th>
						<td><input style="width: 280px" type="text" id="name"
							name="name" value="임시"></td>
					</tr>
					<tr>
						<th>연락처</th>
						<td><input style="width: 280px" type="text" id="phone"
							name="phone"  value="임시"></td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><input type="text" name="emailId" id="emailId"   value="임시"
							class="inputBox" style="width: 120px;" /> @ <select name="email"
							id="domain" class="inputBox" style="width: 130px;">
								<option value="naver.com">naver.com</option>
								<option value="daum.net">daum.net</option>
								<option value="google.com">google.com</option>
								<option value="hanmail.com">hanmail.com</option>
						</select></td>
					</tr>
					<tr>
						<th>우편번호</th>
						<td><input type="text" name="addr1" id="addr1"  value="임시"
							class="inputBox" style="width: 200px; font-size: 14px"
							readonly="readonly" placeholder="우편번호 검색을 눌러주세요." />&nbsp;
							&nbsp; <input type="button" value="우편번호 검색"
							class="btn" style="height: 32px ;background-color: gray;color:white"
							onclick="sample2_execDaumPostcode()" /></td>
					</tr>

					<tr>
						<th>주소</th>
						<td><input type="text" name="addr2" id="addr2"  value="임시"
							class="inputBox" style="width: 280px" readonly="readonly" /></td>
					</tr>
					<tr>
						<th>상세주소</th>
						<td><input type="text" name="addr3" id="addr3"  value="임시"
							class="inputBox" style="width: 280px" /></td>
					</tr>
					<tr>
						<th>주 거래지역</th>
						<td><select name="loc" id="loc" class="inputBox"
							style="width: 185px">
								<option value="">---지역선택---</option>
								<option value="1">임시</option>
								<option value="1">임시</option>
								<option value="1">임시</option>
						</select></td>
					<tr>
						<td colspan="2" style="text-align: center"><input
							type="button" id="info_btn" name="info_btn"
							class="btn btn-warning" value=" 수정하기"
							style="width: 100px; ' background-color: #FFC107; font: 25px bold 굴림;" /></td>
					</tr>
				</table>
			</div>
		</div>
		<%@ include file="../footer.jsp"%>
	</div>
	<!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->
	<div id="layer"
		style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
		<img src="//t1.daumcdn.net/postcode/resource/images/close.png"
			id="btnCloseLayer"
			style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
			onclick="closeDaumPostcode()" alt="닫기 버튼">
	</div>
</body>
</html>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	// 우편번호 찾기 화면을 넣을 element
	var element_layer = document.getElementById('layer');

	function closeDaumPostcode() {
		// iframe을 넣은 element를 안보이게 한다.
		element_layer.style.display = 'none';
	}

	function sample2_execDaumPostcode() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				// 각 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var addr = ''; // 주소 변수
				var extraAddr = ''; // 참고항목 변수

				//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
				if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
					addr = data.roadAddress;
				} else { // 사용자가 지번 주소를 선택했을 경우(J)
					addr = data.jibunAddress;
				}

				// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
				if (data.userSelectedType === 'R') {
					// 법정동명이 있을 경우 추가한다. (법정리는 제외)
					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
						extraAddr += data.bname;
					}
					// 건물명이 있고, 공동주택일 경우 추가한다.
					if (data.buildingName !== '' && data.apartment === 'Y') {
						extraAddr += (extraAddr !== '' ? ', '
								+ data.buildingName : data.buildingName);
					}
					// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					if (extraAddr !== '') {
						extraAddr = ' (' + extraAddr + ')';
					}
					// 조합된 참고항목을 해당 필드에 넣는다.
					/* document.getElementById("sample2_extraAddress").value = extraAddr; */

				}
				/*  else {
				     document.getElementById("sample2_extraAddress").value = '';
				 } */

				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById('addr1').value = data.zonecode;
				$("#addr1").css("font-size", "17px");
				document.getElementById("addr2").value = addr;
				// 커서를 상세주소 필드로 이동한다.
				document.getElementById("addr3").focus();

				// iframe을 넣은 element를 안보이게 한다.
				// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
				element_layer.style.display = 'none';
			},
			width : '100%',
			height : '100%',
			maxSuggestItems : 5
		}).embed(element_layer);

		// iframe을 넣은 element를 보이게 한다.
		element_layer.style.display = 'block';

		// iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
		initLayerPosition();
	}

	// 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
	// resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
	// 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
	function initLayerPosition() {
		var width = 500; //우편번호서비스가 들어갈 element의 width
		var height = 600; //우편번호서비스가 들어갈 element의 height
		var borderWidth = 5; //샘플에서 사용하는 border의 두께

		// 위에서 선언한 값들을 실제 element에 넣는다.
		element_layer.style.width = width + 'px';
		element_layer.style.height = height + 'px';
		element_layer.style.border = borderWidth + 'px solid';
		// 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
		element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width) / 2 - borderWidth)
				+ 'px';
		element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height) / 2 - borderWidth)
				+ 'px';
	}
</script>