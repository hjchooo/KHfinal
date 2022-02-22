<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script>
	$(document).ready(function(){
		$("#header").load("/resources/header/header.jsp");
		$("#footer").load("/resources/footer/footer.jsp");
		$("#messageNotice").load("/resources/messageNotice/messageNotice.jsp");
	});
</script>
<title>Go 가자</title>
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
	font-size: 12px;
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
	background-color: #e3effd;
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
	background-color: #f7f7f7;
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
	background-color: white;
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

/* 추가 */
.topBtn {
	border: 0px solid white;
	background-color: rgba(0, 0, 0, 0);
	color: #white;
}

/* 인기축제 a태그 */
#rightTop a {
	color: gray;
}

#rightTop a:hover {
	color: black;
}

#leftTop a {
	color: gray;
}

#leftTop a:hover {
	color: black;
}

/* 인기관광지, 인기 축제 container */
#middle_content {
	width: 80%
}

.bestCaroucel {
	font-size: 12px;
	text-align: center;
	width: 100%;
	padding: 0;
}

#areaType:hover {
	cursor: pointer;
}
</style>
</head>

<body>
	<!-- 헤더 -->
	<div id="header"></div>




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
				<c:choose>
					<c:when test="${!empty loginSession}">
					<a
						href="${pageContext.request.contextPath}/board/toBoard.do?currentPage=1&category=전체">
						<p class="p_center">
							<button type="button" class="btn com_go_comunity_box"
								id="boardBtn">
								자유게시판 <br> 바로가기
							</button>
						</p>
					</a>
					</c:when>
					<c:otherwise>
						<a onclick="toBoard();">
							<p class="p_center">
								<button type="button" class="btn com_go_comunity_box"
									id="boardBtn">
									자유게시판 <br> 바로가기
								</button>
							</p>
						</a>
					</c:otherwise>
				</c:choose>

			</div>
			<div class="col-2">
				<a href=""></a>
				<p class="p_center">
					<button type="button" id="travelBtn"
						class="btn com_go_comunity_box">
						국내여행 <br> 바로가기
					</button>
				</p>
			</div>
			<div class="col-2">
				<a href=""></a>
				<p class="p_center">
					<button type="button" id="festivalBtn"
						class="btn com_go_comunity_box">
						축제정보 <br> 바로가기
					</button>
				</p>
			</div>
			<div class="col-2">
				<a href=""></a>
				<p class="p_center">
					<button type="button" id="stayBtn" class="btn com_go_comunity_box">
						레포츠 <br> 바로가기
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
			<p class="explan_title">BEST 레포츠 추천지</p>
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
						<select class="form-select" aria-label="Default select example"
							id="areaType" name="areaType">
							<option value="all">전체</option>
							<option value="서울">서울</option>
							<option value="경기">경기도</option>
							<option value="강원">강원도</option>
							<option value="충청">충청도</option>
							<option value="전라">전라도</option>
							<option value="경상">경상도</option>
							<option value="제주">제주도</option>
						</select>
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
					<div class="carousel-inner" id="carousel-leports"></div>
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


	<!-- 인기 관광지 css에 list로 표기-->
	<div class="container-fluid" id="middle_content">
		<div class="row margin_top_100">
			<!-- 왼쪽 리스트 시작-->
			<div class="col list_left_margin ">
				<!-- 상단 타이틀 시작-->
				<div class="row">
					<div class="col-10">
						<p class="list_title"># 인기 관광지</p>
					</div>
					<div class="col-2">
						<a href="#"> <img class="list_refrash_icon"
							src="/resources/images/refrash_icon.png">
						</a>
					</div>
				</div>

				<div class="row list_line1"></div>

				<div class="row">
					<div class="col-6 margin_top_10">
						<span class="list_count1">총</span><span class="list_count2"></span><span
							class="list_count1"> 5건</span>
					</div>
					<div class="col-2 margin_top_10"></div>
					<div class="col-4 margin_top_10">
						<span class="list_sort_button"><button type="button"
								class="btn btn-light topBtn" id="leftReadcountBtn">인기순</button>
						</span> <span>|</span> <span class="list_sort_button"><button
								type="button" class="btn btn-light topBtn"
								id="leftModifiedtimeBtn">최신순</button></span>
					</div>
					<div class="col-2 margin_top_10"></div>
				</div>
				<!-- 상단 타이틀 끝-->

				<div class="row list_line2"></div>

				<!-- 리스트 시작-->
				<div class="row" id="leftTop"></div>

			</div>
			<div class="col list_right_margin">
				<!-- 오른쪽 리스트 시작-->
				<!-- 상단 타이틀 시작-->
				<div class="row">
					<div class="col-10">
						<p class="list_title"># 인기 축제</p>
					</div>
					<div class="col-2">
						<a href="#"> <img class="list_refrash_icon"
							src="/resources/images/refrash_icon.png">
						</a>
					</div>
				</div>

				<div class="row list_line1"></div>

				<div class="row">
					<div class="col-6 margin_top_10">
						<span class="list_count1">총</span><span class="list_count2"></span><span
							class="list_count1"> 5건</span>
					</div>
					<div class="col-2 margin_top_10"></div>
					<div class="col-4 margin_top_10">
						<span class="list_sort_button"><button type="button"
								class="btn btn-light topBtn" id="rightReadcountBtn">인기순</button></span>
						<span>|</span> <span class="list_sort_button"><button
								type="button" class="btn btn-light topBtn"
								id="rightModifiedtimeBtn">최신순</button></span>
					</div>
					<div class="col-2 margin_top_10"></div>
				</div>
				<!-- 상단 타이틀 끝-->

				<div class="row list_line2"></div>

				<!-- 리스트 시작-->
				<div class="row" id="rightTop"></div>

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
	<div id="footer"></div>

	<!-- 쪽지 알림 -->
	<div id="messageNotice"></div>

	<script>
      // 뿌려주는 함수
      function makeElements(parentId, item, phone, url){
         let div = $("<div class='col-12'>");
         
         let div2 = $("<div class='row margin_top_20'>");
         div2.append("<div class='col-3 topDataImage'><img class='list_left_photo' style='height:113px;width:150px;' src='"+item.firstimage2+"'></div>");
         div.append(div2);
         let div3 = $("<div class='col-8'>");
         div3.append("<div class='row topDataTitle'><div class='col-12'><h4 class='list_sub_title'><a href='${pageContext.request.contextPath}/publicdata/"+url+".do?contentid="+item.contentid+"'>"+item.title+"</a></h4></div></div>")
         div3.append("<div class='row topDataAddr1'><div class='col-12'><span class='list_sub_location'>"+item.addr1+"</span></div></div>");
         if(phone != 'none'){
            // 핸드폰 넣어주는 작업 
            div3.append("<div class='row topDataAddr1'><div class='col-12'><span class='list_sub_location'>"+item.tel+"</span></div></div>");
         }
         div3.append("<div class='row topDataTime margin_top_5'><div class='col-12'><span class='list_sub_teag'>"+item.modifiedtime+"</span></div></div>");
         div2.append(div3);
         div2.append("<div class='col-1'></div>");
         
         div.append("<div class='row list_line2 margin_top_20'></div>");
         $(parentId).append(div);
         
      }   
      
      // 페이지 로딩 시 list 띄워주기
      $(document).ready(function(){
         // 캐러셀 레포츠
    	 $.ajax({
    		 url : "${pageContext.request.contextPath}/getCarouselLeports.do"
    	 }).done(function(rs){
    		 let divC = $("<div class='carousel-item active'>");
    		 let divC2 = $("<div class='row best_margin_top_bottom_20'>");
    		 divC2.append("<div class='col-1'></div>");
    		 for(let i = 0; i < 5; i++){
    		 	divC2.append("<div class='col-2'><a href='${pageContext.request.contextPath}/publicdata/toDetailViewLeports.do?contentid="+rs[i].contentid+"'><div class='card best_card_border' style='width: 12rem;'><img class='best_image_border' src='"+rs[i].firstimage2+"'><div class='best_title_back'><p class='bestCaroucel best_p_card_linehight card_font'>"+rs[i].title+"</p></div></div></a></div>");
    		 }
    		 divC.append(divC2);
    		 $("#carousel-leports").append(divC);
    		 
			 // 2번째 캐러셀  
    		 divC = $("<div class='carousel-item'>");
    		 divC2 = $("<div class='row best_margin_top_bottom_20'>");
    		 divC2.append("<div class='col-1'></div>");
    		 for(let i = 5; i < 10; i++){
    		 	divC2.append("<div class='col-2'><a href='${pageContext.request.contextPath}/publicdata/toDetailViewLeports.do?contentid="+rs[i].contentid+"'><div class='card best_card_border' style='width: 12rem;'><img class='best_image_border' src='"+rs[i].firstimage2+"'><div class='best_title_back'><p class='bestCaroucel best_p_card_linehight card_font'>"+rs[i].title+"</p></div></div></a></div>");
    		 }
    		 divC.append(divC2);
    		 $("#carousel-leports").append(divC);
    		 
    	 }).fail(function(e){
    		 console.log(e);
    	 })
    	  
    	 // 인기 여행지
    	 $.ajax({
            url : "${pageContext.request.contextPath}/getTopDataList.do"
         }).done(function(rs){
            for(let item of rs){
               makeElements("#leftTop", item, 'none', "detailView");
            }
         }).fail(function(e){
            console.log(e);
         })
         
         // 인기 축제
         $.ajax({
            url : "${pageContext.request.contextPath}/getTopFestivalList.do"
         }).done(function(sr){
            for(let item of sr){
               makeElements("#rightTop", item, "number", "toDetailViewFestival");
            }   
         }).fail(function(e){
            console.log(e);
         })
      })
      
      // select 지역선택 이벤트
      $("#areaType").change(function(){
    	  $.ajax({
        	  url : "${pageContext.request.contextPath}/getAreaLeports.do",
        	  data : {areaType : $("#areaType").val()}
          }).done(function(rs){
        	 $("#carousel-leports").empty();
        	 let divC = $("<div class='carousel-item active'>");
     		 let divC2 = $("<div class='row best_margin_top_bottom_20'>");
     		 divC2.append("<div class='col-1'></div>");
     		 for(let i = 0; i < 5; i++){
     			console.log(rs[i].contentid);
     		 	divC2.append("<div class='col-2'><a href='${pageContext.request.contextPath}/publicdata/toDetailViewLeports.do?contentid="+rs[i].contentid+"'><div class='card best_card_border' style='width: 12rem;'><img class='best_image_border' src='"+rs[i].firstimage2+"'><div class='best_title_back'><p class='bestCaroucel best_p_card_linehight card_font'>"+rs[i].title+"</p></div></div></a></div>");
     		 }
     		 divC.append(divC2);
     		 $("#carousel-leports").append(divC);
     		 
     		 // 2번째 캐러셀
     		 divC = $("<div class='carousel-item'>");
     		 divC2 = $("<div class='row best_margin_top_bottom_20'>");
     		 divC2.append("<div class='col-1'></div>");
     		 for(let i = 5; i < 10; i++){
     		 	divC2.append("<div class='col-2'><a href='${pageContext.request.contextPath}/publicdata/toDetailViewLeports.do?contentid="+rs[i].contentid+"'><div class='card best_card_border' style='width: 12rem;'><img class='best_image_border' src='"+rs[i].firstimage2+"'><div class='best_title_back'><p class='bestCaroucel best_p_card_linehight card_font'>"+rs[i].title+"</p></div></div></a></div>");
     		 }
     		 divC.append(divC2);
     		 $("#carousel-leports").append(divC);
        	
          }).fail(function(e){
        	  console.log(e);
          })
      })
      
      // 좌측 top 인기순 버튼
      $("#leftReadcountBtn").on("click", function(){
         $.ajax({
            url : "${pageContext.request.contextPath}/getTopDataList.do"
         }).done(function(rs){
            $("#leftTop div").empty();
            for(let item of rs){
               makeElements("#leftTop", item, 'none', "detailView")
            }
         }).fail(function(e){
            console.log(e);
         })
      })
      
      // 좌측 top 최신순 버튼
      $("#leftModifiedtimeBtn").on("click", function(){
         $.ajax({
            url : "${pageContext.request.contextPath}/getModifiedtimeDataList.do"
         }).done(function(rs){
            $("#leftTop div").empty();
            for(let item of rs){
               makeElements("#leftTop", item, 'none', "detailView")
            }
         }).fail(function(e){
            console.log(e);
         })
      })
      
      // 우측 top 인기순 버튼
      $("#rightReadcountBtn").on("click", function(){
         $.ajax({
            url : "${pageContext.request.contextPath}/getTopFestivalList.do"
         }).done(function(rs){
            $("#rightTop div").empty();
            for(let item of rs){
               makeElements("#rightTop", item, 'number', "toDetailViewFestivalList")
            }
         }).fail(function(e){
            console.log(e);
         })
      })
      
      // 우측 top 최신순 버튼
      $("#rightModifiedtimeBtn").on("click", function(){
         $.ajax({
            url : "${pageContext.request.contextPath}/getModifiedtimeFestivalList.do"
         }).done(function(rs){
            $("#rightTop div").empty();
            for(let item of rs){
               makeElements("#rightTop", item, 'number', "toDetailViewFestivalList")
            }
         }).fail(function(e){
            console.log(e);
         })
      })
      
      // 관광지 리스트로 가기
      $("#travelBtn").on("click", function(){
         location.href = "${pageContext.request.contextPath}/publicdata/toDetailList.do?currentPage=1"
      })
      
      // 축제 리스트로 가기
      $("#festivalBtn").on("click", function(){
         location.href = "${pageContext.request.contextPath}/publicdata/toFestivalList.do?currentPage=1"
      })
      
      // 레포츠 리스트로 가기
      $("#stayBtn").on("click", function(){
         location.href = "${pageContext.request.contextPath}/publicdata/toLeportsList.do?currentPage=1"
      })
      
      // 게시판으로 이동
		function toBoard() {
			alert("로그인 후에 이용 가능 합니다.");
			return;
		}
     
   </script>
</body>
</html>