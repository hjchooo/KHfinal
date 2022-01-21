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
        @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap');



        a {
            text-decoration: none;
        }

        .line_check {
            border: 1px solid black;
        }

        .font_nanum {
            font-family: 'Nanum Gothic', sans-serif, ;
        }

        .nomal_font {
            font-family: 'Nanum Gothic', sans-serif, ;
            text-decoration: none;
            color: rgb(109, 109, 109);
            font-size: 13px;
        }

        .p_center {
            text-align: center;
            font-family: 'Nanum Gothic', sans-serif, ;
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
            font-family: 'Nanum Gothic', sans-serif, ;
            text-decoration: none;
            color: rgb(109, 109, 109);
            font-size: 13px;
        }

        .navi_text {
            text-align: center;
            font-family: 'Nanum Gothic', sans-serif, ;
            text-decoration: none;
            color: rgb(109, 109, 109);
            font-size: 13px;
        }

        .navi_category {
            text-align: center;
            font-family: 'Nanum Gothic', sans-serif, ;
            text-decoration: none;
            color: rgb(70, 70, 70);
            font-size: 25px;
            font-weight: 700;
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
			<c:choose>
			<c:when test="${!empty loginSession}">
				<div class="col-3">
				<a href="${pageContext.request.contextPath}/member/toLogout.do">
				<span class="navi_text"> 로그아웃 </span> 
				</a>
				&nbsp; &nbsp; 
				<a href="${pageContext.request.contextPath}/member/toMyPage.do?id=${loginSession.id}">
				<span class="navi_text"> 마이페이지 </span>
				</a>
				&nbsp; &nbsp; 
				<span class="navi_text"> ${loginSession.id} 님 </span>
				</div>
			</c:when>
			<c:otherwise>
				<div class="col-3">
				<a href="${pageContext.request.contextPath}/member/toJoinus.do">
				<span class="navi_text"> 회원가입 </span>
				</a>
				&nbsp; &nbsp; 
				<a href="${pageContext.request.contextPath}/member/toLogin.do">
				<span class="navi_text"> 로그인 </span> 
				</a>
				&nbsp; &nbsp; 
			</div>
			</c:otherwise>
			</c:choose>
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




</body>

</html>