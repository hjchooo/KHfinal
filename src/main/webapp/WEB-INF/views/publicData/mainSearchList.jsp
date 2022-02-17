<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<script>
	$(document).ready(function(){
		$("#header").load("/resources/header/header.jsp");
		$("#footer").load("/resources/footer/footer.jsp");
		$("#messageNotice").load("/resources/messageNotice/messageNotice.jsp");
	});
</script>
<title>Insert title here</title>
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

.board_category_color {
	background-color: rgb(235, 235, 235);
	padding-top: 10px;
	padding-bottom: 10px;
}

.board_category {
	height: 30px;
	text-align: center;
	font-family: 'Nanum Gothic', sans-serif,;
	text-decoration: none;
	color: rgb(44, 44, 44);
	font-size: 17px;
	border-right: 1px solid black;
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

/*추가할지말지...*/
.thumbnail {
	height: 113px;
	width: 150px;
}

#korea-flag {
	height: 100%;
	width: 100%;
}

A:link {
	text-decoration: none;
	color: black;
}

A:visited {
	text-decoration: none;
	color: black;
}

A:active {
	text-decoration: none;
	color: black;
}

A:hover {
	text-decoration: none;
	color: black;
}

.table {
	vertical-align: middle;
}
</style>
</head>
<body>
	<div id="header"></div>
	
	<div class="container-fluid">

		<div class="row margin_top_100">

			<!-- 리스트 시작-->
			<div class="col-2"></div>
			<div class="col-8 list_right_margin">

				<!-- 상단 타이틀 시작-->
				<div class="row">
					<div class="col-10">
						<p class="list_title"># 검색결과</p>
					</div>
					<div class="col-2">
						<img class="list_refrash_icon"
							src="/resources/images/refrash_icon.png">
					</div>
				</div>

				<div class="row list_line1"></div>

				<div class="row">
					<div class="col-6 margin_top_10">
						<span class="list_count1">총</span><span class="list_count2">
							${recordTotalCnt1}</span><span class="list_count1">건</span>
					</div>
					<div class="col-2 margin_top_10"></div>
					<div class="col-4 margin_top_10"></div>
					<div class="col-2 margin_top_10"></div>
				</div>
				<!-- 상단 타이틀 끝-->

				<div class="row list_line2"></div>

				<!-- 여기까지가 한 묶음 다음은 라인 시작-->
				<div class="row list_line2 margin_top_20"></div>

				<table class="table">
					<thead>
						<tr>
							<th>Thumbnail</th>
							<th>명칭</th>
							<th>주소</th>
							<th>콘텐츠 조회수</th>
							<th>수정일</th>
						</tr>
					</thead>
					<tbody id="dataBody">
						<c:forEach items="${searchList}" var="list">
							<tr>
								<td><img class="thumbnail" src="${list.firstimage2}"></td>
								<td><a
									href="${pageContext.request.contextPath}/publicdata/toDetailViewLeports.do?contentid=${list.contentid}">${list.title}</a></td>
								<td>${list.addr1}</td>
								<td>${list.readcount}</td>
								<td>${list.modifiedtime}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="row">
					<nav class="col" aria-label="Page navigation example">
						<ul class="pagination justify-content-center">
							<c:if test="${naviMap.get('needPrev') eq true}">
								<li class="page-item"><a class="page-link"
									href="${pageContext.request.contextPath}/mainSearch.do?main_search=${main_search}&currentPage=${naviMap.get('startNavi')-1}">이전</a></li>
							</c:if>
							<!--startNavi ->endNavi  -->
							<c:forEach var="i" begin="${naviMap.get('startNavi')}"
								end="${naviMap.get('endNavi')}">
								<li class="page-item"><a class="page-link"
									href="${pageContext.request.contextPath}/mainSearch.do?main_search=${main_search}&currentPage=${i}">${i}</a></li>
							</c:forEach>
							<c:if test="${naviMap.get('needNext') eq true}">
								<li class="page-item"><a class="page-link"
									href="${pageContext.request.contextPath}/mainSearch.do?main_search=${main_search}&currentPage=${naviMap.get('endNavi')+1}">다음</a></li>
							</c:if>
						</ul>
					</nav>
				</div>
			</div>
		</div>

	</div>

	<div id="footer"></div>

	<!-- 쪽지 알림 -->
	<div id="messageNotice"></div>

</body>
</html>