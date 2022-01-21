<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<title>Join-Us</title>
<style type="text/css">

/**/

@import
	url('https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap')
	;

a {
	text-decoration: none;
}

.line_check {
	border: 1px solid black;
}

.font_nanum {
	font-family: 'Nanum Gothic', sans-serif,;
}

.nomal_font {
	font-family: 'Nanum Gothic', sans-serif,;
	text-decoration: none;
	color: rgb(109, 109, 109);
	font-size: 13px;
}

.p_center {
	text-align: center;
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 700;
	font-size: 15px;
}

.p_right {
	text-align: right;
	margin: 0px;
	margin-right: 0px;
	padding: 0px;
	padding-right: 0px;
}

.p_left {
	text-align: left;
	margin: 0px;
	margin-left: 0px;
	padding: 0px;
	margin-left: 0px;
}

.margin_top_100 {
	margin-top: 100px;
}

.margin_top_50 {
	margin-top: 50px;
}

.margin_top_30 {
	margin-top: 30px;
}

.margin_top_20 {
	margin-top: 20px;
}

.margin_top_10 {
	margin-top: 10px;
}

.margin_top_5 {
	margin-top: 5px;
}

.margin_bottom_100 {
	margin-bottom: 100px;
}

.margin_bottom_50 {
	margin-bottom: 50px;
}

.margin_bottom_30 {
	margin-bottom: 30px;
}

.margin_bottom_20 {
	margin-bottom: 20px;
}

.margin_bottom_10 {
	margin-bottom: 10px;
}

.margin_bottom_5 {
	margin-bottom: 5px;
}

.main_logo_size {
	width: 120px;
}

.search_space {
	margin-top: 20px;
	margin-bottom: 10px;
}

.search_icon_img {
	width: 30px;
}

.main_search_bar {
	background-color: rgb(245, 245, 245);
	font-family: 'Nanum Gothic', sans-serif,;
	text-decoration: none;
	color: rgb(109, 109, 109);
	font-size: 13px;
}

.navi_text {
	text-align: center;
	font-family: 'Nanum Gothic', sans-serif,;
	text-decoration: none;
	color: rgb(109, 109, 109);
	font-size: 13px;
}

.navi_category {
	text-align: center;
	font-family: 'Nanum Gothic', sans-serif,;
	text-decoration: none;
	color: rgb(70, 70, 70);
	font-size: 25px;
	font-weight: 700;
}

.com_go_comunity_box {
	width: 150px;
	height: 150px;
	border-radius: 10px;
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 700;
	font-size: 22px;
	text-align: center;
	color: white;
	background: linear-gradient(135deg, rgb(118, 240, 253),
		rgb(112, 144, 212));
	border: 0px;
}

.com_go_boxtext {
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 700;
	font-size: 35px;
	text-align: center;
}

.go_explan_space {
	margin-top: 80px;
}

.go_explan_img {
	width: 100px;
}

.explan_title {
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 700;
	font-size: 35px;
	text-align: center;
}

.margin100px {
	margin-top: 100px;
}

.best_margin_top_50 {
	margin-top: 50px;
	padding-top: 20px;
	background-color: rgb(187, 248, 255);
}

.best_title {
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 700;
	font-size: 14px;
	color: rgb(93, 126, 196);
}

.best_margin_top_bottom_20 {
	margin-top: 20px;
	margin-bottom: 20px;
}

.best_title_img {
	width: 30px;
}

.best_card_border {
	border-radius: 10px;
}

.best_image_border {
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
}

.best_title_back {
	height: 50px;
}

.best_p_card_linehight {
	line-height: 3;
}

.card_font {
	color: black;
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 700;
	font-size: 15px;
}

.list_title {
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 700;
	font-size: 23px;
}

/**/


label {
	font-size: 10px;
	font-style: italic;
}
/* 푸터 */
.foot_container {
	background-color: rgb(187, 248, 255);
	padding-top: 50px;
}

.foot_logo_img {
	width: 50px;
}

.foot_text {
	color: rgb(124, 124, 124);
	font-family: 'Nanum Gothic', sans-serif,;
	font-size: 12px;
}
</style>
</head>
<body>
	<!--메인 검색 창-->
	<div class="container">
		<div class="row search_space">
			<div class="col-1"></div>
			<div class="col-2">
				<p>
					<a href="${pageContext.request.contextPath}/"> <img class="main_logo_size"
						src="/resources/images/go_logo_type.png">
					</a>
				</p>
			</div>
			<div class="col-5">
				<input type="text" class="form-control main_search_bar"
					id="main_search" placeholder="가고싶은곳을 검색하세요. GO!">
			</div>
			<div class="col-1">
				<p class="p_left">
					<img class="search_icon_img"
						src="/resources/images/search_icon.png">
				</p>
			</div>
			<div class="col-3">
				<a href="${pageContext.request.contextPath}/member/toJoinus.do">
				<span class="navi_text"> 회원가입 </span>
				</a>
				&nbsp; &nbsp; 
				<a href="${pageContext.request.contextPath}/member/toLogin.do">
				<span class="navi_text"> 로그인 </span> 
				</a>
				&nbsp; &nbsp; 
				<a href="">
				<span class="navi_text"> 마이페이지 </span>
				</a>
			</div>

		</div>
	</div>

	<!-- 검색창 아래 라인 -->
	<div class="container-fluid">
		<hr style="border: solid 2px lightgray">
	</div>
	
	

	<div class="container w-50">
		<form action="${pageContext.request.contextPath}/member/toModify.do"
			id="toModifyForm" method="post">

			<!-- 해당 페이지 타이틀 -->
			<div class="row mb-5">
				<div class="col d-flex justify-content-center">
					<h3>회원정보 수정</h3>
				</div>
			</div>

			<!-- ID 영역 -->
			<div class="row mb-2">
				<label for="ID">아이디</label>
				<div class="col-12">
					<input type="text" class="form-control" id="id" name="id"
						placeholder="Your ID" maxlength="20" required="required" value="${dto.id}" readonly>
				</div>


			<!-- ID 영역 끝 -->


			<!-- Nickname 영역 -->
			<div class="row mb-2">
				<label for="Nickname">Nickname</label>
				<div class="col-8">
					<input type="text" class="form-control" id="nickname"
						name="nickname" placeholder="Your Nickname" maxlength="20" required="required">
				</div>

				<div class="col-4">
					<button type="button" class="btn btn-warning w-100"
						id="btnVerifyNickname">verifyNickname</button>
				</div>

				<div class="row mb-1">
					<div class="col" id="res_nickname"></div>
				</div>
			</div>

			<!-- Nickname 영역 끝 -->

			<!-- E-mail 영역 -->
			<div class="row mb-2">
				<label for="E-mail">E-mail</label>
				<div class="col-12">
					<input type="email" class="form-control" id="Email"
						name="email" placeholder="Your E-mail" required="required" value="${dto.email}">
				</div>

			</div>
			
			<div class="row mb-2">
				<div class="col" id="res_email"></div>
			</div>

			<!-- E-mail 영역 끝 -->

			<!-- Address 영역 -->
			<div class="row mb-2 justify-content-center">
				<label for="Address">Address</label>
				<div class="col-6 d-flex justify-content-end">
					<input type="text" class="form-control" id="Postcode"
						name="Postcode" placeholder="Postcode">
				</div>

				<div class="col-6 d-flex justify-content-center">
					<button type="button" class="btn btn-dark w-100"
						onclick="ExecDaumPostcode()">Find Postcode</button>
				</div>
			</div>

			<div class="row mb-2 justify-content-center">
				<div class="col">
					<input type="text" class="form-control" id="RoadAddress"
						name="RoadAddress" placeholder="Road Address">
				</div>
			</div>

			<div class="row mb-2 justify-content-center">
				<div class="col">
					<input type="text" class="form-control" id="DetailAddress"
						name="DetailAddress" placeholder="Detail Address">
				</div>
			</div>
			
			<div class="row mb-2 justify-content-center">
				<div class="col">
					<input type="text" class="form-control" id="Address" name="Address" style="display: none;" required="required">
				</div>
			</div>

			<!-- Address 영역 끝 -->

			<!-- 가입, 취소 -->
			<div class="row justify-content-center">
				<div class="col-4 d-flex justify-content-end">
					<button type="button" class="btn btn-success" id="btnModify">수정</button>
				</div>

				<div class="col-4 d-flex justify-content-start">
					<button type="button" class="btn btn-danger" id="btnCancel">취소</button>
				</div>
			</div>
		</form>
	</div>

	<!--푸터 css에는 foot으로 표기-->
	<footer>
		<div class="container-fluid foot_container">
			<div class="row "></div>
			<div class="row">
				<div class="col-2">
					<p class="p_right">
						<img class="foot_logo_img"
							src="/resources/images/go_logo_gray.png">
					</p>
				</div>

				<div class="col-10">
					<P class="foot_text">(주)가자 | 사업자등록번호 : 736-81-01238 | 팀장 : 권혁진
						| 팀원 : 장대붕 홍진표 송우석 조현재 김덕규</P>

					<p class="foot_text">주소 : 서울시 송파구 마천로 30, 상가에이동 127, 128호(방이동)
						| 대표번호 : 02-3472-4177 | Fax : 02-585-3083</p>

					<p class="foot_text">Copyright @ 2021 (주)가자</p>
				</div>
			</div>
		</div>

	</footer>

	
	<script>
	<!-- script area -->

	<!-- 닉네임 -->
		/*__________Nickname__________*/
		let nickname = document.getElementById("nickname");
		let btnVerifyNickname = document.getElementById("btnVerifyNickname");
		let ResNickname = $("#res_nickname");

		//	regexNickname (통과하면 true, 실패면 false)
		function regexNickname() {
			const RegexNickname = /^[a-zA-Zㄱ-힣0-9]{2,19}$/; //	Nickname는 영문 대.소문자, 한글, 숫자로 시작하며 6~20자 이내로
			return RegexNickname.test(nickname.value); //	Nickname의 값을 RegexNickname 정규식을 통해 통과면 true, 불통과면 false
		}

		//	Nickname 입력창을 벗어날 때 regex검사 (Verify 버튼과 겹침)
		nickname.onchange = function(e) {
			if (!regexNickname()) { //	RegexNickname에 위배되면 Nickname 결과창에 아래처럼 출력
				ResNickname.html("6~20자의 영문 대.소문자, 한글, 숫자를 사용하세요.");
				ResNickname.css({
					"font-size" : "10px",
					"color" : "red"
				});

				nickname.value = ""; //	입력값 지움
			}
		}

		//	중복검사 클릭시 메서드
		btnVerifyNickname.onclick = function(e) {
			if (regexNickname()) {
				$.ajax({
					url : "${pageContext.request.contextPath}/member/VerifyNickname.do",
					type : "post",
					data : {nickname : nickname.value}	//	'strNickname'라는 key에 name속성의 값이 strNickname을(= Nickname) value 취급해서 비동기 처리
				}).done(function(res) { //	res : result
					console.log(res);

					if (res == "Available") {
						ResNickname.html("사용 가능한 Nickname 입니다.");
						ResNickname.css({
							"font-size" : "10px",
							"color" : "green"
						});

					} else if (res == "Unavailable") {
						ResNickname.html("사용 불가능한 Nickname 입니다.");
						ResNickname.css({
							"font-size" : "10px",
							"color" : "red"
						});
						
					}
				}).fail(function(e) {
					console.log(e);
				});
				
			}
		}
		
		/*Nickname 단점 : abc로 설정한 사람과 Abc로 설정한 사람이 다름 => 해결 가능하다면 하고싶음*/

	<!-- 우편번호 -->
		/*__________Postcode__________*/
		let Postcode = document.getElementById("Postcode");
		let RoadAddress = document.getElementById("RoadAddress");
		let DetailAddress = document.getElementById("DetailAddress");
		
		//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
		function ExecDaumPostcode() {
			new daum.Postcode({
				oncomplete : function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

					// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var roadAddr = data.roadAddress; // 도로명 주소 변수
					var extraRoadAddr = ''; // 참고 항목 변수

					// 법정동명이 있을 경우 추가한다. (법정리는 제외)
					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
						extraRoadAddr += data.bname;
					}
					// 건물명이 있고, 공동주택일 경우 추가한다.
					if (data.buildingName !== '' && data.apartment === 'Y') {
						extraRoadAddr += (extraRoadAddr !== '' ? ', '
								+ data.buildingName : data.buildingName);
					}
					// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					if (extraRoadAddr !== '') {
						extraRoadAddr = ' (' + extraRoadAddr + ')';
					}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById("Postcode").value = data.zonecode;
					document.getElementById("RoadAddress").value = roadAddr;

					/*
					document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
					
					// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
					if(roadAddr !== ''){
					    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
					} else {
					    document.getElementById("sample4_extraAddress").value = '';
					}

					var guideTextBox = document.getElementById("guide");
					// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
					if(data.autoRoadAddress) {
					    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
					    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
					    guideTextBox.style.display = 'block';

					} else if(data.autoJibunAddress) {
					    var expJibunAddr = data.autoJibunAddress;
					    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
					    guideTextBox.style.display = 'block';
					} else {
					    guideTextBox.innerHTML = '';
					    guideTextBox.style.display = 'none';
					}
					 */
				}
			}).open();
		}

	<!-- Cancel, Registry -->
		//	가입 (Registry)를 눌렀을 때 가입
		document.getElementById("btnModify").onclick = function(e) {
			if (nickname.value == "") {
				alert("닉네임을 입력 해주세요.");
				
				return;
			} else if (Email.value == "") {
				alert("E-mail을 입력 해주세요.");
				
				return;
			} else {
				document.getElementById("Address").value = Postcode.value + " " + RoadAddress.value + " " + DetailAddress.value;
				document.getElementById("toModifyForm").submit();
			}
		}
	
		//	취소 (Cancel)를 눌렀을때 로그인페이지로 되돌아감
		document.getElementById("btnCancel").onclick = function(e) {
			location.href = "${pageContext.request.contextPath}/";
		}
	</script>
</body>
</html>