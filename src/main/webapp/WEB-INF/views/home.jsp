<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

<title>Go 가자</title>
<style>
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

.list_refrash_icon {
	width: 15px;
}

.list_line1 {
	height: 1px;
	background-color: black;
}

.list_count1 {
	color: black;
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 700;
	font-size: 15px;
}

.list_count2 {
	color: rgb(125, 154, 218);
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 700;
	font-size: 15px;
}

.list_sort_button {
	color: black;
	font-family: 'Nanum Gothic', sans-serif,;
	font-size: 15px;
}

.list_line2 {
	height: 1px;
	background-color: rgb(194, 194, 194);
}

.list_left_photo {
	width: 150px;
}

.list_sub_title {
	color: black;
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 700;
	font-size: 22px;
}

.list_sub_location {
	color: rgb(124, 124, 124);
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 500;
	font-size: 14px;
}

.list_sub_teag {
	color: rgb(124, 124, 124);
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 400;
	font-size: 12px;
}

.list_teag_button {
	border: 0px;
	background-color: rgb(93, 126, 196);
	border-radius: 10px;
	font-family: 'Nanum Gothic', sans-serif,;
	color: white;
	font-size: 13px;
	padding-left: 6px;
	padding-right: 8px;
}

.list_left_margin {
	margin-left: 20px;
	margin-right: 20px;
}

.list_right_margin {
	margin-left: 20px;
	margin-right: 20px;
}

.other_content {
	background-color: rgb(241, 241, 241);
	margin-top: 100px;
	padding-top: 100px;
	padding-bottom: 50px;
}

.info_title {
	color: black;
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 700;
	text-align: center;
}

.youtube_first {
	width: 100%;
}

.news_title {
	color: black;
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 700;
	font-size: 20px;
}

.news_content1 {
	color: peru;
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 600;
	font-size: 16px;
}

.news_content2 {
	color: black;
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 500;
	font-size: 16px;
}

.other_site_box {
	width: 200px;
	border: 1px solid lightgrey;
	border-radius: 5px;
}

.site_info {
	background-color: rgb(214, 214, 214);
	padding-top: 20px;
}

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




	<!-- 메인 메뉴-->
	<div class="container">
		<div class="row">
			<div class="col-2"></div>
			<div class="col-3">
				<a href="${pageContext.request.contextPath}/board/toBoard.do?currentPage=1">
				<h5 class="navi_category">여행 커뮤니티</h5></a>
			</div>
			<div class="col-2">
				<a href="${pageContext.request.contextPath}/">
				<h5 class="navi_category">홈</h5></a>
			</div>
			<div class="col-3">
				<a href="${pageContext.request.contextPath}/publicdata/toDetailList">
					<h5 class="navi_category">여행 정보</h5></a>
			</div>
			<div class="col-2"></div>
		</div>
	</div>





	<!-- 메인 캐러셀-->

	<div id="carouselExampleCaptions" class="carousel slide margin_top_10"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="/resources/images/main_images_01.png"
					class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h3>가자는 여행 정보 & 커뮤니티 입니다.</h3>
					<p>여행을 사랑하는 사람들의 모임입니다.</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="/resources/images/main_images_02.png"
					class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h3>나의 여행 노하우&팁을 공유하세요.</h3>
					<p>나만의 숨어있는 여행정보를 공유하세요.</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="/resources/images/main_images_03.png"
					class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h3>주기적인 자동 업데이트</h3>
					<p>주기적으로 정보가 업데이트 됩니다.</p>
				</div>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>






	<!--커뮤니티 바로가기 css에 com_go 로 표기-->
	<div class="container-fluid">
		<div class="row margin_top_50">
			<div class="col-2"></div>
			<div class="col-2">
				<a href="board.html">
					<p class="p_center">
						<button type="button" class="btn com_go_comunity_box">
							자유게시판 <br> 바로가기
						</button>
					</p>
				</a>
			</div>
			<div class="col-2">
				<a href=""></a>
				<p class="p_center">
					<button type="button" class="btn com_go_comunity_box">
						국내여행 <br> 바로가기
					</button>
				</p>
			</div>
			<div class="col-2">
				<a href=""></a>
				<p class="p_center">
					<button type="button" class="btn com_go_comunity_box">
						축제정보 <br> 바로가기
					</button>
				</p>
			</div>
			<div class="col-2">
				<a href=""></a>
				<p class="p_center">
					<button type="button" class="btn com_go_comunity_box">
						공연/전시회 <br> 바로가기
					</button>
				</p>
			</div>
			<div class="col-2"></div>
		</div>
	</div>




	<!--GO 설명하기 css explan으로 표기-->
	<div class="container">
		<div class="row go_explan_space">
			<div class="col">
				<p class="p_center">
					<img class="go_explan_img" src="/resources/images/go_logo.png">
				</p>
			</div>
		</div>

		<div class="row">
			<div class="col margin100px"></div>
		</div>

		<div class="row">
			<div class="col">
				<p class="explan_title">가자를 소개합니다.</p>
			</div>
		</div>
	</div>



	<!--베스트 여행지 추천 CSS_best로 표기-->
	<div class="container-fluid">
		<div class="row best_margin_top_50">
			<p class="explan_title">BEST 여행 추천지</p>
			<div class="col">
				<div class="row margin_top_30">
					<div class="col-2"></div>
					<div class="col-1">
						<p class="p_right">
							<img class="best_title_img" src="/resources/images/go_logo.png">
						</p>
					</div>
					<div class="col-5">
						<p class="p_left best_title">빅데이터 기반의 안전여행정보를 콕콕 알려드려요!</p>
					</div>
					<div class="col-1">
						<p></p>
					</div>
					<div class="col-1">
						<p>지역선택</p>
					</div>
					<div class="col-1"></div>
				</div>


				<!--베스트 여행지 캐러셀 -->

				<div id="carouselExampleIndicators" class="carousel slide"
					data-bs-ride="carousel">
					<div class="carousel-indicators">
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="0" class="active" aria-current="true"
							aria-label="Slide 1"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="1" aria-label="Slide 2"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="2" aria-label="Slide 3"></button>
					</div>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<!--베스트 여행지 캐러셀 1번 -->
							<div class="row best_margin_top_bottom_20">
								<div class="col-1"></div>
								<div class="col-2">
									<a href="#">
										<div class="card best_card_border" style="width: 12rem;">
											<img class="best_image_border"
												src="/resources/images/best_photo_01.png" alt="...">
											<div class="best_title_back">
												<p class="p_center best_p_card_linehight card_font">소매물도</p>
											</div>
										</div>
									</a>
								</div>
								<div class="col-2">
									<a href="#">
										<div class="card best_card_border" style="width: 12rem;">
											<img class="best_image_border"
												src="/resources/images/best_photo_02.png" alt="...">
											<div class="best_title_back">
												<p class="p_center best_p_card_linehight card_font">지리산</p>
											</div>
										</div>
									</a>
								</div>
								<div class="col-2">
									<a href="#">
										<div class="card best_card_border" style="width: 12rem;">
											<img class="best_image_border"
												src="/resources/images/best_photo_03.png" alt="...">
											<div class="best_title_back">
												<p class="p_center best_p_card_linehight card_font">트롤퉁가</p>
											</div>
										</div>
									</a>
								</div>
								<div class="col-2">
									<a href="#">
										<div class="card best_card_border" style="width: 12rem;">
											<img class="best_image_border"
												src="/resources/images/best_photo_05.png" alt="...">
											<div class="best_title_back">
												<p class="p_center best_p_card_linehight card_font">성균관대
													명륜관</p>
											</div>
										</div>
									</a>
								</div>
								<div class="col-2">
									<a href="#">
										<div class="card best_card_border" style="width: 12rem;">
											<img class="best_image_border"
												src="/resources/images/best_photo_06.png" alt="...">
											<div class="best_title_back">
												<p class="p_center best_p_card_linehight card_font">마곡사</p>
											</div>
										</div>
									</a>
								</div>

								<div class="col-1"></div>
							</div>
							<!-- 첫번째 캐러셀 종료-->




						</div>
						<div class="carousel-item">
							<!--베스트 여행지 캐러셀 2번 -->
							<div class="row best_margin_top_bottom_20">
								<div class="col-1"></div>
								<div class="col-2">
									<a href="#">
										<div class="card best_card_border" style="width: 12rem;">
											<img class="best_image_border"
												src="/resources/images/best_photo_01.png" alt="...">
											<div class="best_title_back">
												<p class="p_center best_p_card_linehight card_font">소매물도</p>
											</div>
										</div>
									</a>
								</div>
								<div class="col-2">
									<a href="#">
										<div class="card best_card_border" style="width: 12rem;">
											<img class="best_image_border"
												src="/resources/images/best_photo_02.png" alt="...">
											<div class="best_title_back">
												<p class="p_center best_p_card_linehight card_font">지리산</p>
											</div>
										</div>
									</a>
								</div>
								<div class="col-2">
									<a href="#">
										<div class="card best_card_border" style="width: 12rem;">
											<img class="best_image_border"
												src="/resources/images/best_photo_03.png" alt="...">
											<div class="best_title_back">
												<p class="p_center best_p_card_linehight card_font">트롤퉁가</p>
											</div>
										</div>
									</a>
								</div>
								<div class="col-2">
									<a href="#">
										<div class="card best_card_border" style="width: 12rem;">
											<img class="best_image_border"
												src="/resources/images/best_photo_05.png" alt="...">
											<div class="best_title_back">
												<p class="p_center best_p_card_linehight card_font">성균관대
													명륜관</p>
											</div>
										</div>
									</a>
								</div>
								<div class="col-2">
									<a href="#">
										<div class="card best_card_border" style="width: 12rem;">
											<img class="best_image_border"
												src="/resources/images/best_photo_06.png" alt="...">
											<div class="best_title_back">
												<p class="p_center best_p_card_linehight card_font">마곡사</p>
											</div>
										</div>
									</a>
								</div>

								<div class="col-1"></div>
							</div>
							<!-- 캐러셀 두번째 종료-->



						</div>

					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>

				<!-- 베스트 캐러셀 종료-->





			</div>
		</div>
	</div>









	<!-- 인기 여행코스 css에 list로 표기-->
	<div class="container-fluid">
		<div class="row margin_top_100">
			<!-- 왼쪽 리스트 시작-->
			<div class="col list_left_margin ">
				<!-- 상단 타이틀 시작-->
				<div class="row">
					<div class="col-10">
						<p class="list_title"># 인기 여행코스</p>
					</div>
					<div class="col-2">
						<img class="list_refrash_icon"
							src="/resources/images/refrash_icon.png">
					</div>
				</div>

				<div class="row list_line1"></div>

				<div class="row">
					<div class="col-6 margin_top_10">
						<span class="list_count1">총</span><span class="list_count2">16</span><span
							class="list_count1">건</span>
					</div>
					<div class="col-2 margin_top_10"></div>
					<div class="col-4 margin_top_10">
						<span class="list_sort_button">최신순</span> <span>|</span> <span
							class="list_sort_button">인기순</span>
					</div>
					<div class="col-2 margin_top_10"></div>
				</div>
				<!-- 상단 타이틀 끝-->




				<div class="row list_line2"></div>

				<!-- 리스트 시작-->
				<div class="row margin_top_20">
					<div class="col-3">
						<img class="list_left_photo"
							src="/resources/images/best_photo_06.png">
					</div>
					<div class="col-8">
						<div class="row">
							<h4 class="list_sub_title">단풍의 명소, 마곡사를 가보셨나요?</h4>
						</div>
						<div class="row">
							<span class="list_sub_location">충남 공주</span>
						</div>
						<div class="row margin_top_5">
							<span class="list_sub_teag">#단풍여행 #당일치기 #1박2일 #사진명소 #데이트코스
								#산책코스</span>
						</div>
						<div class="row margin_top_5">
							<div class="col">
								<button type="button" class="list_teag_button">공주산성</button>
								<button type="button" class="list_teag_button">금강</button>
								<button type="button" class="list_teag_button">부여</button>
							</div>
						</div>
					</div>
					<div class="col-1"></div>
				</div>
				<!-- 여기까지가 한 묶음 다음은 라인 시작-->
				<div class="row list_line2 margin_top_20"></div>




				<!-- 리스트 시작-->
				<div class="row margin_top_20">
					<div class="col-3">
						<img class="list_left_photo"
							src="/resources/images/best_photo_05.png">
					</div>
					<div class="col-8">
						<div class="row">
							<h4 class="list_sub_title">단풍의 명소, 마곡사를 가보셨나요?</h4>
						</div>
						<div class="row">
							<span class="list_sub_location">충남 공주</span>
						</div>
						<div class="row margin_top_5">
							<span class="list_sub_teag">#단풍여행 #당일치기 #1박2일 #사진명소 #데이트코스
								#산책코스</span>
						</div>
						<div class="row margin_top_5">
							<div class="col">
								<button type="button" class="list_teag_button">공주산성</button>
								<button type="button" class="list_teag_button">금강</button>
								<button type="button" class="list_teag_button">부여</button>
							</div>
						</div>
					</div>
					<div class="col-1"></div>
				</div>
				<!-- 여기까지가 한 묶음 다음은 라인 시작-->
				<div class="row list_line2 margin_top_20"></div>


				<!-- 리스트 시작-->
				<div class="row margin_top_20">
					<div class="col-3">
						<img class="list_left_photo"
							src="/resources/images/best_photo_03.png">
					</div>
					<div class="col-8">
						<div class="row">
							<h4 class="list_sub_title">단풍의 명소, 마곡사를 가보셨나요?</h4>
						</div>
						<div class="row">
							<span class="list_sub_location">충남 공주</span>
						</div>
						<div class="row margin_top_5">
							<span class="list_sub_teag">#단풍여행 #당일치기 #1박2일 #사진명소 #데이트코스
								#산책코스</span>
						</div>
						<div class="row margin_top_5">
							<div class="col">
								<button type="button" class="list_teag_button">공주산성</button>
								<button type="button" class="list_teag_button">금강</button>
								<button type="button" class="list_teag_button">부여</button>
							</div>
						</div>
					</div>
					<div class="col-1"></div>
				</div>
				<!-- 여기까지가 한 묶음 다음은 라인 시작-->
				<div class="row list_line2 margin_top_20"></div>



				<!-- 리스트 시작-->
				<div class="row margin_top_20">
					<div class="col-3">
						<img class="list_left_photo"
							src="/resources/images/best_photo_02.png">
					</div>
					<div class="col-8">
						<div class="row">
							<h4 class="list_sub_title">단풍의 명소, 마곡사를 가보셨나요?</h4>
						</div>
						<div class="row">
							<span class="list_sub_location">충남 공주</span>
						</div>
						<div class="row margin_top_5">
							<span class="list_sub_teag">#단풍여행 #당일치기 #1박2일 #사진명소 #데이트코스
								#산책코스</span>
						</div>
						<div class="row margin_top_5">
							<div class="col">
								<button type="button" class="list_teag_button">공주산성</button>
								<button type="button" class="list_teag_button">금강</button>
								<button type="button" class="list_teag_button">부여</button>
							</div>
						</div>
					</div>
					<div class="col-1"></div>
				</div>
				<!-- 여기까지가 한 묶음 다음은 라인 시작-->
				<div class="row list_line2 margin_top_20"></div>


				<!-- 리스트 시작-->
				<div class="row margin_top_20">
					<div class="col-3">
						<img class="list_left_photo"
							src="/resources/images/best_photo_01.png">
					</div>
					<div class="col-8">
						<div class="row">
							<h4 class="list_sub_title">단풍의 명소, 마곡사를 가보셨나요?</h4>
						</div>
						<div class="row">
							<span class="list_sub_location">충남 공주</span>
						</div>
						<div class="row margin_top_5">
							<span class="list_sub_teag">#단풍여행 #당일치기 #1박2일 #사진명소 #데이트코스
								#산책코스</span>
						</div>
						<div class="row margin_top_5">
							<div class="col">
								<button type="button" class="list_teag_button">공주산성</button>
								<button type="button" class="list_teag_button">금강</button>
								<button type="button" class="list_teag_button">부여</button>
							</div>
						</div>
					</div>
					<div class="col-1"></div>
				</div>
				<!-- 여기까지가 한 묶음 다음은 라인 시작-->
				<div class="row list_line2 margin_top_20"></div>

			</div>
			<div class="col list_right_margin">
				<!-- 오른쪽 리스트 시작-->
				<!-- 상단 타이틀 시작-->
				<div class="row">
					<div class="col-10">
						<p class="list_title"># 인기 축제코스</p>
					</div>
					<div class="col-2">
						<img class="list_refrash_icon"
							src="/resources/images/refrash_icon.png">
					</div>
				</div>

				<div class="row list_line1"></div>

				<div class="row">
					<div class="col-6 margin_top_10">
						<span class="list_count1">총</span><span class="list_count2">16</span><span
							class="list_count1">건</span>
					</div>
					<div class="col-2 margin_top_10"></div>
					<div class="col-4 margin_top_10">
						<span class="list_sort_button">최신순</span> <span>|</span> <span
							class="list_sort_button">인기순</span>
					</div>
					<div class="col-2 margin_top_10"></div>
				</div>
				<!-- 상단 타이틀 끝-->




				<div class="row list_line2"></div>

				<!-- 리스트 시작-->
				<div class="row margin_top_20">
					<div class="col-3">
						<img class="list_left_photo"
							src="/resources/images/best_photo_06.png">
					</div>
					<div class="col-8">
						<div class="row">
							<h4 class="list_sub_title">단풍의 명소, 마곡사를 가보셨나요?</h4>
						</div>
						<div class="row">
							<span class="list_sub_location">충남 공주</span>
						</div>
						<div class="row margin_top_5">
							<span class="list_sub_teag">#단풍여행 #당일치기 #1박2일 #사진명소 #데이트코스
								#산책코스</span>
						</div>
						<div class="row margin_top_5">
							<div class="col">
								<button type="button" class="list_teag_button">공주산성</button>
								<button type="button" class="list_teag_button">금강</button>
								<button type="button" class="list_teag_button">부여</button>
							</div>
						</div>
					</div>
					<div class="col-1"></div>
				</div>
				<!-- 여기까지가 한 묶음 다음은 라인 시작-->
				<div class="row list_line2 margin_top_20"></div>




				<!-- 리스트 시작-->
				<div class="row margin_top_20">
					<div class="col-3">
						<img class="list_left_photo"
							src="/resources/images/best_photo_05.png">
					</div>
					<div class="col-8">
						<div class="row">
							<h4 class="list_sub_title">단풍의 명소, 마곡사를 가보셨나요?</h4>
						</div>
						<div class="row">
							<span class="list_sub_location">충남 공주</span>
						</div>
						<div class="row margin_top_5">
							<span class="list_sub_teag">#단풍여행 #당일치기 #1박2일 #사진명소 #데이트코스
								#산책코스</span>
						</div>
						<div class="row margin_top_5">
							<div class="col">
								<button type="button" class="list_teag_button">공주산성</button>
								<button type="button" class="list_teag_button">금강</button>
								<button type="button" class="list_teag_button">부여</button>
							</div>
						</div>
					</div>
					<div class="col-1"></div>
				</div>
				<!-- 여기까지가 한 묶음 다음은 라인 시작-->
				<div class="row list_line2 margin_top_20"></div>


				<!-- 리스트 시작-->
				<div class="row margin_top_20">
					<div class="col-3">
						<img class="list_left_photo"
							src="/resources/images/best_photo_03.png">
					</div>
					<div class="col-8">
						<div class="row">
							<h4 class="list_sub_title">단풍의 명소, 마곡사를 가보셨나요?</h4>
						</div>
						<div class="row">
							<span class="list_sub_location">충남 공주</span>
						</div>
						<div class="row margin_top_5">
							<span class="list_sub_teag">#단풍여행 #당일치기 #1박2일 #사진명소 #데이트코스
								#산책코스</span>
						</div>
						<div class="row margin_top_5">
							<div class="col">
								<button type="button" class="list_teag_button">공주산성</button>
								<button type="button" class="list_teag_button">금강</button>
								<button type="button" class="list_teag_button">부여</button>
							</div>
						</div>
					</div>
					<div class="col-1"></div>
				</div>
				<!-- 여기까지가 한 묶음 다음은 라인 시작-->
				<div class="row list_line2 margin_top_20"></div>



				<!-- 리스트 시작-->
				<div class="row margin_top_20">
					<div class="col-3">
						<img class="list_left_photo"
							src="/resources/images/best_photo_02.png">
					</div>
					<div class="col-8">
						<div class="row">
							<h4 class="list_sub_title">단풍의 명소, 마곡사를 가보셨나요?</h4>
						</div>
						<div class="row">
							<span class="list_sub_location">충남 공주</span>
						</div>
						<div class="row margin_top_5">
							<span class="list_sub_teag">#단풍여행 #당일치기 #1박2일 #사진명소 #데이트코스
								#산책코스</span>
						</div>
						<div class="row margin_top_5">
							<div class="col">
								<button type="button" class="list_teag_button">공주산성</button>
								<button type="button" class="list_teag_button">금강</button>
								<button type="button" class="list_teag_button">부여</button>
							</div>
						</div>
					</div>
					<div class="col-1"></div>
				</div>
				<!-- 여기까지가 한 묶음 다음은 라인 시작-->
				<div class="row list_line2 margin_top_20"></div>


				<!-- 리스트 시작-->
				<div class="row margin_top_20">
					<div class="col-3">
						<img class="list_left_photo"
							src="/resources/images/best_photo_01.png">
					</div>
					<div class="col-8">
						<div class="row">
							<h4 class="list_sub_title">단풍의 명소, 마곡사를 가보셨나요?</h4>
						</div>
						<div class="row">
							<span class="list_sub_location">충남 공주</span>
						</div>
						<div class="row margin_top_5">
							<span class="list_sub_teag">#단풍여행 #당일치기 #1박2일 #사진명소 #데이트코스
								#산책코스</span>
						</div>
						<div class="row margin_top_5">
							<div class="col">
								<button type="button" class="list_teag_button">공주산성</button>
								<button type="button" class="list_teag_button">금강</button>
								<button type="button" class="list_teag_button">부여</button>
							</div>
						</div>
					</div>
					<div class="col-1"></div>
				</div>
				<!-- 여기까지가 한 묶음 다음은 라인 시작-->
				<div class="row list_line2 margin_top_20"></div>



			</div>
		</div>
	</div>





	<!--여행 뉴스 및 유튜브 영상 css에는 news, youtube로 표기-->
	<div class="container-fluid other_content">
		<h1 class="display-6 info_title">다양한 여행정보</h1>

		<div class="row margin_top_50">

			<div class="col-1"></div>
			<!-- 왼쪽 유튜브 자리-->
			<div class="col-5">
				<div class="row">
					<div class="col-12 youtube_box">
						<iframe class="youtube_first" width="560" height="315"
							src="https://www.youtube.com/embed/ToJfrZ3t0_Y" frameborder="0"
							allowfullscreen></iframe>

					</div>
				</div>
				<div class="row">
					<div class="col-12 youtube_box">
						<iframe class="youtube_first" width="560" height="315"
							src="https://www.youtube.com/embed/c9iefTxIAMg"
							title="YouTube video player" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>

					</div>
				</div>
			</div>
			<!-- 오른쪽 여행 NEW 자리-->
			<div class="col-5">
				<div class="row">
					<div class="col">
						<P class="news_title">오늘의 여행 NEWS</P>
					</div>
				</div>
				<div class="row list_line2"></div>

				<!--뉴스 한줄 시작-->
				<div class="row ">
					<div class="col margin_top_10">
						<a href="https://www.cnbnews.com/news/article.html?no=528679"
							target="_blank"><span class="news_content1"> CNB뉴스 | </span>
							<span class="news_content2">담양군, ‘여행자의 도시, 담양’ 여행후기 작성 이벤트
								진행</span> </a>
					</div>
				</div>
				<div class="row list_line2 margin_top_10"></div>
				<!--뉴스 한줄 끝-->


				<!--뉴스 한줄 시작-->
				<div class="row ">
					<div class="col margin_top_10">
						<a
							href="http://cnews.thebigdata.co.kr/view.php?ud=20220114092101803191b8960534_23"
							target="_blank"><span class="news_content1"> 빅데이터뉴스 |
						</span> <span class="news_content2">야놀자, 관광업계 회복 기여 ‘지역 여행 기획전’ 실시</span>
						</a>
					</div>
				</div>
				<div class="row list_line2 margin_top_10"></div>
				<!--뉴스 한줄 끝-->


				<!--뉴스 한줄 시작-->
				<div class="row ">
					<div class="col margin_top_10">
						<a href="https://www.news1.kr/photos/view/?5165850"
							target="_blank"><span class="news_content1"> 뉴스1 | </span> <span
							class="news_content2">대전 동구 상소동 얼음동산 겨울 여행지 인기</span> </a>
					</div>
				</div>
				<div class="row list_line2 margin_top_10"></div>
				<!--뉴스 한줄 끝-->


				<!--뉴스 한줄 시작-->
				<div class="row ">
					<div class="col margin_top_10">
						<a
							href="https://www.visualdive.com/2022/01/%ea%b0%99%ec%9d%b4-%ec%97%ac%ed%96%89%ea%b0%80%eb%a9%b4-%ed%94%bc%ea%b3%a4%ed%95%9c-%ec%9c%a0%ed%98%95/"
							target="_blank"><span class="news_content1"> 비주얼다이브 |
						</span> <span class="news_content2">같이 여행가면 피곤한 유형</span> </a>
					</div>
				</div>
				<div class="row list_line2 margin_top_10"></div>
				<!--뉴스 한줄 끝-->


				<!--뉴스 한줄 시작-->
				<div class="row ">
					<div class="col margin_top_10">
						<a
							href="http://cnews.thebigdata.co.kr/view.php?ud=20220112093057468391b8960534_23"
							target="_blank"><span class="news_content1"> 빅데이터뉴스 |
						</span> <span class="news_content2">한국관광공사, ‘강원 ESG 불착 트레킹 구독 상품’
								선봬</span> </a>
					</div>
				</div>
				<div class="row list_line2 margin_top_10"></div>
				<!--뉴스 한줄 끝-->


				<!--뉴스 한줄 시작-->
				<div class="row ">
					<div class="col margin_top_10">
						<a href="https://newsis.com/view/?id=NISI20220105_0018309159"
							target="_blank"><span class="news_content1"> 뉴시스 | </span> <span
							class="news_content2">설경 즐기는 여행객들</span> </a>
					</div>
				</div>
				<div class="row list_line2 margin_top_10"></div>
				<!--뉴스 한줄 끝-->


				<!--뉴스 한줄 시작-->
				<div class="row ">
					<div class="col margin_top_10">
						<a href="https://www.cnbnews.com/news/article.html?no=528679"
							target="_blank"><span class="news_content1"> CNB뉴스 | </span>
							<span class="news_content2">담양군, ‘여행자의 도시, 담양’ 여행후기 작성 이벤트
								진행</span> </a>
					</div>
				</div>
				<div class="row list_line2 margin_top_10"></div>
				<!--뉴스 한줄 끝-->


				<!--뉴스 한줄 시작-->
				<div class="row ">
					<div class="col margin_top_10">
						<a
							href="http://cnews.thebigdata.co.kr/view.php?ud=20220114092101803191b8960534_23"
							target="_blank"><span class="news_content1"> 빅데이터뉴스 |
						</span> <span class="news_content2">야놀자, 관광업계 회복 기여 ‘지역 여행 기획전’ 실시</span>
						</a>
					</div>
				</div>
				<div class="row list_line2 margin_top_10"></div>
				<!--뉴스 한줄 끝-->


				<!--뉴스 한줄 시작-->
				<div class="row ">
					<div class="col margin_top_10">
						<a href="https://www.news1.kr/photos/view/?5165850"
							target="_blank"><span class="news_content1"> 뉴스1 | </span> <span
							class="news_content2">대전 동구 상소동 얼음동산 겨울 여행지 인기</span> </a>
					</div>
				</div>
				<div class="row list_line2 margin_top_10"></div>
				<!--뉴스 한줄 끝-->


				<!--뉴스 한줄 시작-->
				<div class="row ">
					<div class="col margin_top_10">
						<a
							href="https://www.visualdive.com/2022/01/%ea%b0%99%ec%9d%b4-%ec%97%ac%ed%96%89%ea%b0%80%eb%a9%b4-%ed%94%bc%ea%b3%a4%ed%95%9c-%ec%9c%a0%ed%98%95/"
							target="_blank"><span class="news_content1"> 비주얼다이브 |
						</span> <span class="news_content2">같이 여행가면 피곤한 유형</span> </a>
					</div>
				</div>
				<div class="row list_line2 margin_top_10"></div>
				<!--뉴스 한줄 끝-->


				<!--뉴스 한줄 시작-->
				<div class="row ">
					<div class="col margin_top_10">
						<a
							href="http://cnews.thebigdata.co.kr/view.php?ud=20220112093057468391b8960534_23"
							target="_blank"><span class="news_content1"> 빅데이터뉴스 |
						</span> <span class="news_content2">한국관광공사, ‘강원 ESG 불착 트레킹 구독 상품’
								선봬</span> </a>
					</div>
				</div>
				<div class="row list_line2 margin_top_10"></div>
				<!--뉴스 한줄 끝-->


				<!--뉴스 한줄 시작-->
				<div class="row ">
					<div class="col margin_top_10">
						<a href="https://newsis.com/view/?id=NISI20220105_0018309159"
							target="_blank"><span class="news_content1"> 뉴시스 | </span> <span
							class="news_content2">설경 즐기는 여행객들</span> </a>
					</div>
				</div>
				<div class="row list_line2 margin_top_10"></div>
				<!--뉴스 한줄 끝-->

				<!--뉴스 한줄 시작-->
				<div class="row ">
					<div class="col margin_top_10">
						<a href="https://newsis.com/view/?id=NISI20220105_0018309159"
							target="_blank"><span class="news_content1"> 뉴시스 | </span> <span
							class="news_content2">설경 즐기는 여행객들</span> </a>
					</div>
				</div>
				<div class="row list_line2 margin_top_10"></div>
				<!--뉴스 한줄 끝-->

				<div class="row"></div>
				<div class="row"></div>



			</div>
			<div class="col-1"></div>
		</div>
	</div>





	<!--기타 여행 정보 사이트 안내-->
	<div class="container-fluid site_info">
		<div class="row">
			<div class="col">
				<div id="carouselExampleControls" class="carousel slide"
					data-bs-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<div class="row">
								<div class="col-1"></div>
								<div class="col-3">
									<a href="https://kto.visitkorea.or.kr/kor.kto" target="_blank">
										<p class="p_center">
											<img class="other_site_box"
												src="/resources/images/other_site_05.jpg"
												class="d-block w-100" alt="...">
										</p>
									</a>
								</div>
								<div class="col-4">
									<a href="https://www.gocamping.or.kr/" target="_blank">
										<p class="p_center">
											<img class="other_site_box"
												src="/resources/images/other_site_04.jpg"
												class="d-block w-100" alt="...">
										</p>
									</a>
								</div>
								<div class="col-3">
									<a href="https://www.durunubi.kr/" target="_blank">
										<p class="p_center">
											<img class="other_site_box"
												src="/resources/images/other_site_03.jpg"
												class="d-block w-100" alt="...">
										</p>
									</a>
								</div>
								<div class="col-1"></div>
							</div>
						</div>
						<div class="carousel-item">
							<div class="row">
								<div class="col-1"></div>
								<div class="col-3">
									<a href="https://www.durunubi.kr/" target="_blank">
										<p class="p_center">
											<img class="other_site_box"
												src="/resources/images/other_site_03.jpg"
												class="d-block w-100" alt="...">
										</p>
									</a>
								</div>
								<div class="col-4">
									<a href="https://korean.visitkorea.or.kr/" target="_blank">
										<p class="p_center">
											<img class="other_site_box"
												src="/resources/images/other_site_02.jpg"
												class="d-block w-100" alt="...">
										</p>
									</a>
								</div>
								<div class="col-3">
									<a href="https://safestay.visitkorea.or.kr/" target="_blank">
										<p class="p_center">
											<img class="other_site_box"
												src="/resources/images/other_site_01.jpg"
												class="d-block w-100" alt="...">
										</p>
									</a>
								</div>
								<div class="col-1"></div>
							</div>
						</div>
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExampleControls" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleControls" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
			</div>
		</div>
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
</body>
</html>
