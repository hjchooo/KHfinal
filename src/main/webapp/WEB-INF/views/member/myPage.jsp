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
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script>
	$(document).ready(function() {
		$("#header").load("/resources/header/header.jsp");
		$("#footer").load("/resources/footer/footer.jsp");
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
	border: 1px solid black;
	width: 100px;
	height: 100px;
	padding: 0%;
	margin: 0%;
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
					<div class="col-12" id="image_container">
					
					</div>
					
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
								href="${pageContext.request.contextPath}/note/select_to_id.do?to_id=${loginSession.id}&currentPage=1">쪽지
									확인</a></li>
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


				<form action="" method="post" id="modifyForm"
					enctype="multipart/form-data" name="file"
					onchange="setThumbnail(event);">
					<!-- 프로필 사진 -->
					<div class="row mb-3" style="margin-left: 200px;">
						<div class="col-12" id="profileImgBox">
							<img class="mypage_profile_img" id="profileImg"
								src="/resources/images/profile.svg">
						</div>
					</div>

					<div class="row mb-3">
						<div class="col-8">
							<input type="file" class="form-control">
						</div>
						<div class="col-4"></div>
					</div>

					<!-- 아이디 -->
					<div class="row mb-3">
						<label class="mypage_comment mb-1">아이디</label>
						<div class="col-8 ">
							<input type="text" id="id" name="id" class="form-control"
								value="${loginSession.id}" readonly>
						</div>

					</div>

					<!-- 닉네임 -->
					<div class="row mb-3">
						<label class="mypage_comment mb-1">닉네임</label>
						<div class="col-8">
							<input type="text" class="form-control" id="nickname"
								value="${loginSession.nickname}" name="nackname"
								placeholder="닉네임 입력">

						</div>
						<div class="col-3">
							<button type="button" class="btn w-100">중복확인</button>

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
					</div>

					<!-- 비밀번호 확인 -->
					<div class="row mb-3">
						<label class="mypage_comment mb-1">비밀번호 확인</label>
						<div class="col-8">
							<input type="password" class="form-control" id="pwcheck"
								placeholder="비밀번호 입력"> <span class="mypage_comment"></span>
						</div>
						<div class="col-4"></div>
						<div class="col-12">
							<span class="mypage_comment">*비밀번호 일치</span>
						</div>
					</div>

					<!-- email 영역 -->
					<div class="row mb-3">
						<div class="col-8">
							<input type="text" class="form-control" id="email" name="email"
								value="${loginSession.email}" readonly>
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
								name="Address" style="display: none;" required="required">
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
			</div>


		</div>
	</div>

	<!--메인창 풋터-->
	<div id="footer"></div>

	<script>
	// 프로필 사진 미리보기
	function setThumbnail(event) { 
		var reader = new FileReader(); // 파일을 읽기 위한 FileReader 객체 생성
		reader.onload = function(event) { // 파일 읽어들이기를 성공했을 때 호출되는 이벤트 핸들러
			let img = "<img src='"+event.target.result+"' width=110 height=110 />"; 
			$("#image_container").append(img); 
			}; 
		reader.readAsDataURL(event.target.files[0]); }
	</script>


</body>


</html>