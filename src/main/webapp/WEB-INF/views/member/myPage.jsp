<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<meta charset="UTF-8">
<title>마이페이지</title>
<style>
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

/**/


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

.myPage_category {
	height: 30px;
	text-align: center;
	font-family: 'Nanum Gothic', sans-serif,;
	text-decoration: none;
	color: rgb(44, 44, 44);
	font-size: 17px;
	border-right: 1px solid black;
}
.myPage_category:hover {
	background : silver;
}



.userInformation{
	
    margin:auto;
    margin-top : 100px;
	width : 800px;
	height : 400px;
	
}

#user{
    padding-top: 10px;
    height: 70%;
    border: 1px solid black;
    border-radius: 15px;
}
#user > input {
    margin-top: 10px;
    border : none;
}

.userBtn{
    height: 10%;
    text-align: right;
}
/*  */
</style>
</head>
<body>
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
			<div><h4>${dto.nickname} 님의 페이지</h4></div>
			<div class=" row mypageNavi">
				<div class="col-3"></div>
				<div class="col-2 myPage_category">
					<a href="${pageContext.request.contextPath}/member/myPage.do">
						회원 정보 </a>
				</div>
				<div class="col-2 myPage_category">
					<a href="#"> 나의 게시글 조회 </a>
				</div>
				<div class="col-2 myPage_category">
					<a
						href="${pageContext.request.contextPath}/note/select_to_id.do?to_id=${dto.id}&currentPage=1">
						쪽지 보기 </a>
				</div>
				<div class="col-3"></div>
			<div class=" row userInformation">
				<div class="row">
				</div>
				<div class="row">
                    <div class="col-2">
                        <p class="center">나의 프로필 이미지</p>
                        <p class="center"><img class="mypage_profile_img" src="/final_01-16/images/profile_01.png"></p>
                    </div>
                    <div id="user" class="col-10">
					<label>가입일 : </label> <input type="text" value="${dto.signup_date}" readonly><br>
					<label>이메일 : </label> <input type="text" value="${dto.email}" readonly><br>
					<label>주소 : </label> <input type="text" value="${dto.address}" size="50"readonly>
				</div>
                </div>
                <div class="userBtn">
					<button type="button" id="noteBtn" class="btn btn-secondary">쪽지 보내기</button>
					<button type="button" id="modifyBtn" class="btn btn-warning">나의 정보 수정</button>
					<button type="button" id="deleteBtn" class="btn btn-danger">회원탈퇴</button>
				</div>
				</div>
			</div>
		</div>
	</div>
	
	<!--푸터 css에는 foot으로 표기-->
	<div id="footer"></div>
	

	<script>
	
		document.getElementById("modifyBtn").onclick = function(){
			location.href="${pageContext.request.contextPath}/member/modify.do?id=${loginSession.id}";
		}
	
		document.getElementById("deleteBtn").onclick = function(){
			let rs = confirm("정말 삭제하시겠습니까?");
			console.log(rs);
			if(rs){
				location.href = "${pageContext.request.contextPath}/member/delete.do?id=${loginSession.id}";	
			}
		}
		
		document.getElementById("noteBtn").onclick = function(){
			window.open("${pageContext.request.contextPath}/member/note.do", "note", "width=500, height=300");
		}
		
		document.getElementById("noteListBtn").onclick = function(){
			location.href = "${pageContext.request.contextPath}/note/select_to_id.do?to_id=${loginSession.id}&currentPage=1";
		}
		
		document.getElementById("reportBtn").onclick = function(){
			location.href = "${pageContext.request.contextPath}/board/myboard.do=reply_writer_idre=${loginSession.id}";
		}
	</script>
</body>
</html>