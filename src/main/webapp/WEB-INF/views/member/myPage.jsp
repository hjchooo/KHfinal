<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
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
<script>
	$(document).ready(function(){
		$("#header").load("/resources/header/header.jsp");
		$("#footer").load("/resources/footer/footer.jsp");
		$("#messageNotice").load("/resources/messageNotice/messageNotice.jsp");
	});
</script>
<title>회원 수정 , 마이 페이지</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap')
	;

* {
	box-sizing: border-box;
}

a {
	text-decoration: none;
}

/* 전체 컨테이너 */
.container {
	margin: auto;
	width: 1200px;
}

p {
	font-family: 'Nanum Gothic', sans-serif,;
	text-decoration: none;
	color: rgb(22, 22, 22);
	font-size: 15px;
}

.center {
	text-align: center;
}

.a_center a {
	text-align: center;
}

.title_text {
	font-family: 'Nanum Gothic', sans-serif,;
	text-decoration: none;
	color: rgb(22, 22, 22);
	font-size: 30px;
	text-align: center;
	font-weight: 700;
}

.color_white {
	color: white;
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
	margin-bottom: 50px;
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

.padding-top_50 {
	padding-top: 50px;
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

.mypage_text {
	font-family: 'Nanum Gothic', sans-serif,;
	text-decoration: none;
	color: rgb(70, 70, 70);
	font-size: 25px;
	font-weight: 700;
}

.mypage_right_line {
	border-right: 1px solid lightgray;
}

.mypage_profile_img {
	width: 100px;
	height: 100px;
	border-radius: 50px;
}

.mypage_right_margin {
	margin-left: 30px;
}

.mypage_comment {
	font-family: 'Nanum Gothic', sans-serif,;
	text-decoration: none;
	color: gray;
	font-size: 13px;
}

.mypage_board_text {
	font-family: 'Nanum Gothic', sans-serif,;
	text-decoration: none;
	color: rgb(70, 70, 70);
	font-size: 13px;
	text-align: center;
}

.mypage_board_title {
	font-family: 'Nanum Gothic', sans-serif,;
	text-decoration: none;
	color: rgb(70, 70, 70);
	font-size: 13px;
}

.my_board {
	padding-left: 20px;
}

.list_line2 {
	height: 1px;
	background-color: rgb(194, 194, 194);
	margin-left: 30px;
	padding-left: 30px;
}

.gab {
	margin-top: 50px;
}

/* 프로필 이미지 영역 */
#profileImgBox {
	border-radius: 100px;
	border: 1px solid gray;
	width: 100px;
	height: 100px;
	padding: 0%;
	margin: 0%;
	text-align: center;
}

#rightProfileImgBox {
	border-radius: 100px;
	border: 1px solid gray;
	width: 100px;
	height: 100px;
	padding: 0%;
	margin: 0%;
	text-align: center;
}

#profileImg {
	color: gray;
	width: 100%;
	height: 100%;
	border-radius: 100px;
	padding: 0%;
	margin: 0%;
}

/* ul 태그 영역 */
ul {
	list-style: none;
}

.ulList {
	margin-bottom: 5px;
}

.ulList>a {
	color: gray;
}

.ulList>a:hover {
	color: black;
}

/* 전체 버튼 */
.btn {
	background-color: #f9f9f9;
	color: gray
}

.btn:hover {
	background-color: gray;
	color: white;
}
</style>
</head>

<body>
	<!-- 헤더 -->
	<div id="header"></div>


	<!--내정보 및 수정창-->
	<div class="container">
		<div class="row margin_top_50">

			<!-- 마이페이지 왼쪽편 -->

			<div class="col-3 mypage_right_line">
				<div class="row d-flex justify-content-center mb-3">
					<c:if test="${loginSession.ori_name == null}">
						<div class="col-12" id="profileImgBox">
							<img class="mypage_profile_img" id="profileImg"
								src="/resources/images/profile.svg">
						</div>
					</c:if>
					<c:if test="${loginSession.ori_name != null}">
						<div class="col-12" id="profileImgBox">
							<img class="mypage_profile_img" id="profileImg"
								src="${pageContext.request.contextPath}/upload/${dto.getSys_name()}">
						</div>
					</c:if>


				</div>
				<div class="row">
					<div class="col-12 d-flex justify-content-center">
						<h5 style="color: gray;">${loginSession.id}</h5>
					</div>
				</div>

				<div class="row mt-5">
					<div class="col-12" style="margin-left: 30px;">
						<ul>
							<li class="ulList"><a
								href="${pageContext.request.contextPath}/member/toMyPage.do">회원정보
									수정</a></li>
							<li class="ulList"><a
								href="${pageContext.request.contextPath}/board/toMyBoardList?currentPage=1">나의
									게시글 확인</a></li>
							<li class="ulList"><a
								href="${pageContext.request.contextPath}/note/select_to_id.do?to_id=${dto.getId()}&currentPage=1">쪽지
									확인</a></li>
							<li class="ulList"><a
								href="${pageContext.request.contextPath}/member/note.do" onclick="window.open(this.href,'note팝업창','width=500, hreight=500');return false;">쪽지
									보내기</a></li>
						</ul>
					</div>

				</div>
			</div>



			<!-- 마이페이지 오른쪽편 -->

			<div class="col-7 mypage_right_margin">
				<div class="row">
					<div class="col-12">
						<p class="mypage_text">회원 정보 수정</p>
					</div>
				</div>


				<form action="${pageContext.request.contextPath}/member/toModify.do"
					method="post" id="modifyForm" enctype="multipart/form-data"
					onchange="setThumbnail(event);">
					<!-- 프로필 사진 -->
					<c:if test="${dto.getOri_name() == null}">
						<div class="row mb-3" style="margin-left: 200px;">
							<div class="col-12" id="rightProfileImgBox">
								<img class="mypage_profile_img" id="profileImg"
									src="/resources/images/profile.svg">
							</div>
						</div>
					</c:if>
					<c:if test="${dto.getOri_name() != null}">
						<div class="row mb-3" style="margin-left: 200px;">
							<div class="col-12" id="rightProfileImgBox">
								<img class="mypage_profile_img" id="profileImg"
									src="${pageContext.request.contextPath}/upload/${dto.getSys_name()}">
							</div>
						</div>
					</c:if>
					<div class="row mb-3">
						<div class="col-8">
							<input type="file" class="form-control" id="filecheck"
								name="file">
						</div>
						<div class="col-4"></div>
					</div>

					<!-- 아이디 -->
					<div class="row mb-3">
						<label class="mypage_comment mb-1">아이디</label>
						<div class="col-8 ">
							<input type="text" id="id" name="id" class="form-control"
								value="${dto.getId()}" readonly>
						</div>

					</div>

					<!-- 닉네임 -->
					<div class="row mb-3">
						<label class="mypage_comment mb-1">닉네임</label>
						<div class="col-8">
							<input type="text" class="form-control" id="nickname"
								value="${dto.getNickname()}" name="nickname"
								placeholder="닉네임 입력">

						</div>
						<div class="col-3">
							<button type="button" class="btn w-100" id="btnVerifyNickname">중복확인</button>

						</div>
						<div class="row mb-1">
							<div class="col" id="res_nickname"></div>
						</div>
					</div>

					<!-- 비밀번호 -->
					<div class="row mb-3">
						<label class="mypage_comment mb-1">비밀번호</label>
						<div class="col-8">
							<input type="password" class="form-control" id="pw" name="pw"
								placeholder="비밀번호 입력"> <span class="mypage_comment">
								*비밀번호는 6~20자 이내 (영어 대소문자, 숫자, 특수문자)</span>
						</div>
						<div class="col-4"></div>
						<div class="row mb-1">
							<div class="col" id="res_pw"></div>
						</div>
					</div>

					<!-- 비밀번호 확인 -->
					<div class="row mb-3">
						<label class="mypage_comment mb-1">비밀번호 확인</label>
						<div class="col-8">
							<input type="password" class="form-control" id="pwcheck"
								placeholder="비밀번호 입력"> <span class="mypage_comment"></span>
						</div>
						<div class="col-4"></div>
						<div class="row mb-1">
							<div class="col" id="res_confirmPw"></div>
						</div>
					</div>

					<!-- email 영역 -->
					<div class="row mb-3">
						<div class="col-8">
							<input type="text" class="form-control" id="email" name="email"
								value="${dto.getEmail()}" readonly>
						</div>
					</div>

					<!-- 주소 영역 -->
					<!-- Address 영역 -->
					<div class="row mb-3">
						<label class="mypage_comment mb-1">주소</label>
						<div class="col-8">
							<input type="text" class="form-control" id="Postcode"
								name="Postcode" placeholder="(우편번호)">
						</div>

						<div class="col-3">
							<button type="button" class="btn w-100"
								onclick="ExecDaumPostcode()">우편번호 찾기</button>
						</div>
					</div>

					<div class="row mb-3">
						<div class="col-8">
							<input type="text" class="form-control" id="RoadAddress"
								name="RoadAddress" placeholder="도로명주소">
						</div>
					</div>

					<div class="row mb-3">
						<div class="col-8">
							<input type="text" class="form-control" id="DetailAddress"
								name="DetailAddress" placeholder="상세주소">
						</div>
					</div>

					<div class="row mb-3">
						<div class="col">
							<input type="text" class="form-control" id="Address"
								name="Address" style="display: none;"
								value="${dto.getAddress()}" required="required">
						</div>
					</div>

					<div class="row mb-5">
						<div class="col-6 d-flex justify-content-end">
							<button type="button" class="btn" id="btnConfirm">완료</button>
						</div>
						<div class="col-6 d-flex justify-content-start">
							<button type="reset" class="btn">취소</button>
						</div>
					</div>
				</form>
				<div>
					<button type="button" id="userDeleteBtn">회원탈퇴</button>
				</div>
			</div>


		</div>
	</div>

	<!--메인창 풋터-->
	<div id="footer"></div>
	
	<!-- 쪽지 알림 -->
	<div id="messageNotice"></div>

	<script>
	// 프로필 사진 미리보기
	function setThumbnail(event) { 
		var reader = new FileReader(); // 파일을 읽기 위한 FileReader 객체 생성
		reader.onload = function(event) { // 파일 읽어들이기를 성공했을 때 호출되는 이벤트 핸들러
			let img = "<img class='mypage_profile_img' id='profileImg' src='" +event.target.result+"' width=110 height=110 />"; 
			$("#rightProfileImgBox").html(img); 
			}; 
		reader.readAsDataURL(event.target.files[0]); }
	
	$("#userDeleteBtn").click(function(){
		let rs = confirm("정말 탈퇴하시겠습니까?");
		if(rs){
			alert("회워탈퇴가 완료되었습니다.");
			 location.href = "${pageContext.request.contextPath}/member/delete.do?id=${dto.getId()}"
		}
	});
	
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
	
	<!-- PW -->
	/*__________PW__________*/
	let pw = document.getElementById("pw");
	let ResPW = $("#res_pw");
	let PWconfirm = document.getElementById("pwcheck");
	let ResPWconfirm = $("#res_confirmPw");

	//	regexPW (통과 : true, 불통 : false)
	function regexPW() {
		const RegexPW = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,20}$/; //	PW는 영문 대.소문자, 숫자, 특수문자가 반드시 포함되어야 하고 8~20자 이내로.

		return RegexPW.test(pw.value);
	}

	//	PW입력창을 떠났을 때 Regex 검사
	pw.onchange = function(e) {
		console.log(pw.value);

		if (!regexPW()) { //	RegexPW에 위배시 아래 출력
			ResPW.html("8~20자의 영문 대.소문자, 숫자, 특수문자를 사용하세요.");
			ResPW.css({
				"font-size" : "10px",
				"color" : "red"
			});

			pw.value = ""; //	값 지움

		} else if (regexPW()) { //	보안 단계
			if ((regexPW() == true && pw.value.length >= 8)
					&& (regexPW() == true && pw.value.length <= 10)) {
				ResPW.html("보안 : 낮음");
				ResPW.css({
					"font-size" : "10px",
					"color" : "yellow"
				});
				
			} else if ((regexPW() == true && pw.value.length > 11)
					&& (regexPW() == true && pw.value.length <= 13)) {
				ResPW.html("보안 : 중간");
				ResPW.css({
					"font-size" : "10px",
					"color" : "gray"
				});
				
			} else if ((regexPW() == true && pw.value.length > 14)
					&& (regexPW() == true && pw.value.length <= 20)) {
				ResPW.html("보안 : 강력");
				ResPW.css({
					"font-size" : "10px",
					"color" : "green"
				});
				
			}
		}
	}

	//	PW_Confirm 창에 값이 PW창에서 입력한 값과 일치하는지 여부 확인
	PWconfirm.onchange = function(e) {
		if (pw.value === PWconfirm.value) { //	엄격한 비교 : 값과 자료형이 둘다 일치하는가
			ResPWconfirm.html("비밀번호가 일치합니다.");
			ResPWconfirm.css({
				"font-size" : "10px",
				"color" : "green"
			});
			
		} else if (pw.value !== PWconfirm.value) {
			ResPWconfirm.html("비밀번호가 불일치합니다. <br> 다시 입력하세요.");
			ResPWconfirm.css({
				"font-size" : "10px",
				"color" : "red"
			});

			PWconfirm.value = "";
		}
	}
	
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
	//	수정 완료
	document.getElementById("btnConfirm").onclick = function(e) {
		/* if (pw.value === "" || !regexPW()) {
			alert("비밀번호를 입력 해주세요.");
			
			return;
		} else if (nickname.value === "" || !regexNickname()) {
			alert("닉네임을 입력 해주세요.");
			
			return;
		} else {
			document.getElementById("Address").value = Postcode.value + " " + RoadAddress.value + " " + DetailAddress.value;
			document.getElementById("JoinusForm").submit();
		} */
		console.log(document.getElementById("pw").value);
		if(Postcode.value == null || Postcode.value == ""){
			document.getElementById("Address").value = "${dto.getAddress()}";
		}else{
			document.getElementById("Address").value = Postcode.value + " " + RoadAddress.value + " " + DetailAddress.value;
		}
		console.log(document.getElementById("Address").value);
		document.getElementById("modifyForm").submit();
		}
		
	
	
	</script>


</body>


</html>