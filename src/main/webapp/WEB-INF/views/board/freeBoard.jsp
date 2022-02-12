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
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
	integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<script>
	$(document).ready(function() {
		$("#header").load("/resources/header/header.jsp");
		$("#footer").load("/resources/footer/footer.jsp");
	});
</script>
<title>Go 가자</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap')
	;
/* 전체 컨테이너 */
.wrapper {
	height: 950px;
}

a {
	text-decoration: none;
	color: black;
}

a:hover {
	color: black;
	cursor: pointer;
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

.text_center {
	text-align: center;
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
	background-color: #f7f7f7;
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

.board_name {
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 600;
	font-size: 18px;
}

.listBox {
	margin-top: 20px;
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

#keyword {
	width: 200px;
}

/* 비밀글 관련 영역 */
#select {
	width: 80px;
}

#secretImg {
	margin-bottom: 6px;
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
	<div id="header"></div>

	<div class="wrapper">
		<!-- 게시판 메인 메뉴 css에 board로 표기-->
		<div class="container-fluid">
			<div class="row board_category_color margin_top_30">
				<div class="col-1 board_category"></div>
				<div class="col-2 board_category">
					<a
						href="${pageContext.request.contextPath}/board/toBoard.do?currentPage=1">전체게시판</a>
				</div>
				<div class="col-2 board_category">
					<a onclick="toSelectFreeBoard();">자유게시판</a>
				</div>
				<div class="col-2 board_category">
					<a onclick="toSelectDomestic();">국내여행</a>
				</div>
				<div class="col-2 board_category">
					<a onclick="toSelectFestival();">축제정보</a>
				</div>
				<div class="col-2 board_category">
					<a onclick="toSelectReports();">레포츠</a>
				</div>
				<div class="col-1 "></div>
			</div>
		</div>

		<!--게시판 시작-->
		<!-- 인기 여행코스 css에 list로 표기-->
		<div class="container-fluid">
			<div class="row margin_top_100">

				<!-- 리스트 시작-->
				<div class="col-2"></div>
				<div class="col-8 list_right_margin">

					<!-- 상단 타이틀 시작-->
					<div class="row">
						<div class="col-10">
							<p class="list_title"># 전체 게시판</p>
						</div>
						<div class="col-2">
							<a
								href="${pageContext.request.contextPath}/board/toBoard.do?currentPage=1"><img
								class="list_refrash_icon"
								src="/resources/images/refrash_icon.png"></a>
						</div>
					</div>

					<div class="row list_line1"></div>

					<div class="row">
						<div class="col-6 margin_top_10">
							<span class="list_count1">총</span><span class="list_count2">${recordTotalCnt}</span><span
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
					<!-- 게시글 전체 리스트 -->

					<!-- 기존 List -->
					<c:forEach items="${list}" var="dto">

						<div class="row listBox">
							<div class="col-1 freeBoard_seq">${dto.board_seq}</div>
							<div class="col-2 text_center">${dto.category}</div>
							<div class="col-5 board_name">
								<c:choose>
									<c:when test="${dto.secret eq 'Y'}">
										<a onclick="toSecretBoard(${dto.board_seq});"
											style="color: gray; font-size: 15px;"> <img
											id="secretImg" src="/resources/images/lock.svg"> 비밀로
											작성된 글 입니다.
										</a>
									</c:when>
									<c:otherwise>
										<a
											href="${pageContext.request.contextPath}/board/detailView.do?board_seq=${dto.board_seq}&re_board_seq=${dto.board_seq}&currentPage=1">${dto.title}</a>
									</c:otherwise>
								</c:choose>
							</div>
							<div class="col-1 text_center">${dto.writer_id}</div>
							<div class="col-2 text_center">${dto.written_date}</div>
							<div class="col-1 text_center">${dto.view_count}</div>
						</div>

					</c:forEach>



					<div class="row list_line2 margin_top_20"></div>

					<!-- 검색 영역 -->
					<div class="row mt-2">
						<div class="col-10 d-flex jusitfy-content-center">

							<!-- 검색 조건 -->
							<select id="select" name="select" class="form-select">
								<option value="all" selected="selected">전체</option>
								<option value="content">내용</option>
								<option value="title">제목</option>
								<option value="writer_id">작성자</option>
							</select>

							<!-- 검색 키워드 -->
							<input type="text" id="keyword" name="keyword"
								class="form-control" style="margin-left: 10px;">

							<!-- 검색 버튼 -->
							<button type="button" id="searchBtn" class="btn"
								style="margin-left: 10px;">검색</button>

						</div>

						<div class="col-2 d-flex justify-content-end">
							<button type="button" class="btn" id="btnWrite">글쓰기</button>
						</div>
					</div>

					<!-- 리스트 페이지 네이션 -->
					<div class="row mt-5 mb-5">
						<nav class="col" aria-label="Page navigation example">
							<ul class="pagination justify-content-center">
								<c:if test="${naviMap.get('needPrev') eq true}">
									<li class="page-item"><a class="page-link"
										href="${pageContext.request.contextPath}/board/toBoard.do?currentPage=${naviMap.get('startNavi')-1}">이전</a></li>
								</c:if>
								<!--startNavi, endNavi  -->
								<c:forEach var="i" begin="${naviMap.get('startNavi')}"
									end="${naviMap.get('endNavi')}">
									<li class="page-item"><a class="page-link"
										onclick="pageNation(${i});">${i}</a></li>
								</c:forEach>
								<c:if test="${naviMap.get('needNext') eq true}">
									<li class="page-item"><a class="page-link"
										href="${pageContext.request.contextPath}/board/toBoard.do?currentPage=${naviMap.get('endNavi')+1}">다음</a></li>
								</c:if>
							</ul>
						</nav>
					</div>

				</div>
				<div class="col-2"></div>
			</div>
		</div>
	</div>

	<!--푸터 css에는 foot으로 표기-->
	<footer id="footer"></footer>

	<!-- 스크립트 영역 -->
	<script>
		// 게시글 등록 버튼
		$("#btnWrite").on("click", function() {
			location.href = "${pageContext.request.contextPath}/board/toInsertBoard";
		})
		
		var toPageNation;
		var pageNo = "";
		
		//console.log("전역 pageNation : " , toPageNation);
		console.log("전역 pageNo : ", pageNo);
		
		// 자유게시판 리스트 불러오기
		function toSelectFreeBoard() {
			let url = "${pageContext.request.contextPath}/board/toSelectFreeBoard?category=자유게시판&currentPage=1";
			toPageNation = "${pageContext.request.contextPath}/board/toSelectFreeBoard?currentPage=" + pageNo;
			pageNation();
			//$("a[href='${pageContext.request.contextPath}/board/toBoard.do?currentPage=${i}']").prop("href", pageNation);
			//$(location).attr("href", url);
		}
		
		console.log("함수밖 toPageNation : ", toPageNation);
		
		function pageNation(no) {
			//$(location).attr("href", "${pageContext.request.contextPath}/board/toBoard.do?currentPage=" + no);
			console.log("no : ", no)
			pageNo = no;
			console.log("toPageNation : ", toPageNation, pageNo);
			//$(location).attr("href", toPageNation);
		}
		
		// 국내여행으로 리스트 불러오기
		function toSelectDomestic() {
			let url = "${pageContext.request.contextPath}/board/toSelectDomestic?category=국내여행&currentPage=1";
			let toPageNation = "${pageContext.request.contextPath}/board/toSelectDomestic?currentPage=" + pageNo;
			//$("a.page-link").attr("href", pageNation);
			$(location).attr("href", url);
			console.log(pageNation);
		}
		
		// 축제정보로 리스트 불러오기
		function toSelectFestival() {
			let url = "${pageContext.request.contextPath}/board/toSelectFestival?category=축제정보&currentPage=1";
			let pageNation = "${pageContext.request.contextPath}/board/toSelectFestival?currentPage=${i}";
			$("a.page-link").prop("href", "${pageContext.request.contextPath}/board/toSelectFestival?currentPage=${i}");
			$(location).attr("href", url);
		}
		
		// 레포츠로 리스트 불러오기
		function toSelectReports() {
			let url = "${pageContext.request.contextPath}/board/toSelectReports?category=레포츠&currentPage=1";
			$(location).attr("href", url);
		}
		
		// 검색 버튼
		$("#searchBtn").on("click",	function(e) {
			let select = $("#select").val();
			let keyword = $("#keyword").val();
			if(keyword != null) {
			let url = "${pageContext.request.contextPath}/board/searchProc.do?select="
					+ select
					+ "&keyword="
					+ keyword
					+ "&currentPage=1";
			$(location).attr("href", url);
			}
		})
		
		// option
		$("#selectOption").on("change",	function() {
			let selectOption = $("#selectOption").val();
			console.log(selectOption);
			let url = "${pageContext.request.contextPath}/board/toBoardOption.do?selectOption="
					+ selectOption + "$currentPage=1";
			console.log(url);
			$(location).attr("href", url);
		})
		
		// 비밀글 팝업창
		function toSecretBoard(no) {
			let board_seq = no;
			let width = '350';
			let height = '350';
			let left = Math.ceil(( window.screen.width - width )/2);
			let top = Math.ceil(( window.screen.height - height )/2); 
			
			let url = "${pageContext.request.contextPath}/board/toBoardSecret?board_seq=" + board_seq;
			let name = "비밀글";
			let option = "width=" + width + ", height=" + height
				+ ", left=" + left + ", top=" + top;
			window.open(url, name, option);
			
		}
	</script>
</body>

</html>