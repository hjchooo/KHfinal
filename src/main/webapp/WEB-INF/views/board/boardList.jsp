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
	$(document).ready(function() {
		$("#header").load("/resources/header/header.jsp");
		$("#footer").load("/resources/footer/footer.jsp");
	});
</script>
<title>게시판</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap')
	;

.container {
	width: 90%;
	padding: 10px;
}

th, td {
	text-align: center;
}

td:nth-child(2) {
	text-align: left;
}

a {
	text-decoration: none;
	font-weight: bold;
	color: black;
}

.boxBtn-top {
	margin: 20px;
	width: 90%;
	text-align: right;
}

.boxBtn-bottom {
	margin: 20px;
	width: 90%;
	text-align: right;
}
</style>

</head>
<body>
	<!-- 헤더 -->
	<div id="header"></div>

	<div class="boxBtn-top">
		<button type="button" id="btnLogout" class="btn btn-danger">로그아웃</button>
		<button class="btn btn-warning" id="btnWrite" type="button">글쓰기</button>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-12 mb-5 d-flex justify-content-center">
				<h3>게시판</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-12 d-flex justify-content-end pb-2">
				<select id="selectOption" name="selectOption">
					<option value="new" selected>최신순</option>
					<option value="view_count">조회순</option>
					<option value="like_count">종아요순</option>
				</select>
			</div>
		</div>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th class="col-md-1">글번호</th>
					<th class="col-md-1">카테고리</th>
					<th class="col-md-3">제목</th>
					<th class="col-md-3">글쓴이</th>
					<th class="col-md-2">작성일</th>
					<th class="col-md-1">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="boardDTO">
					<tr>
						<td>${boardDTO.board_seq}</td>
						<td>${boardDTO.category}</td>
						<td><a
							href="${pageContext.request.contextPath}/board/detailView.do?board_seq=${boardDTO.board_seq}&currentPage=1">${boardDTO.title}</a></td>
						<td>${boardDTO.writer_nickname}</td>
						<td>${boardDTO.written_date}</td>
						<td>${boardDTO.view_count}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="row">
			<nav class="col" aria-label="Page navigation example">
				<ul class="pagination justify-content-center">
					<c:if test="${naviMap.get('needPrev') eq true}">
						<li class="page-item"><a class="page-link"
							href="${pageContext.request.contextPath}/board/toBoard.do?currentPage=${naviMap.get('startNavi')-1}">Previous</a></li>
					</c:if>
					<!--startNavi ->endNavi  -->
					<c:forEach var="i" begin="${naviMap.get('startNavi')}"
						end="${naviMap.get('endNavi')}">
						<li class="page-item"><a class="page-link"
							href="${pageContext.request.contextPath}/board/toBoard.do?currentPage=${i}">${i}</a></li>
					</c:forEach>
					<c:if test="${naviMap.get('needNext') eq true}">
						<li class="page-item"><a class="page-link"
							href="${pageContext.request.contextPath}/board/toBoard.do?currentPage=${naviMap.get('endNavi')+1}">Next</a></li>
					</c:if>
				</ul>
			</nav>
		</div>

		<div class="row">
			<div class="col">
				<select id="searchType" name="searchType">
					<option value="all"
						<c:if test="${searchType eq 'all'}">selected</c:if>>전체</option>
					<option value="content"
						<c:if test="${searchType eq 'content'}">selected</c:if>>내용</option>
					<option value="title"
						<c:if test="${searchType eq 'title'}">selected</c:if>>제목</option>
					<option value="writer_nickname"
						<c:if test="${searchType eq 'writer_nickname'}">selected</c:if>>작성자</option>
				</select> <input type="text" id="keyword" name="keyword" value="${keyword}">
				<button type="button" id="searchBtn">검색</button>
			</div>
		</div>
	</div>
	<div class="boxBtn-bottom">
		<button class="btn btn-success" id="btnHome" type="button">홈으로</button>
	</div>

	<!--푸터 css에는 foot으로 표기-->
	<div id="footer"></div>

	<script>
		// 검색 기능
		$("#searchBtn")
				.on(
						"click",
						function() {
							let searchType = $("#searchType").val();
							let keyword = $("#keyword").val();
							console.log(searchType + " : " + keyword);
							let url = "${pageContext.request.contextPath}/board/searchProc.do?searchType="
									+ searchType
									+ "&keyword="
									+ keyword
									+ "&currentPage=1";
							console.log(url);
							$(location).attr("href", url);
						})

		$("#selectOption")
				.on(
						"change",
						function() {
							let selectOption = $("#selectOption").val();
							console.log(selectOption);
							let url = "${pageContext.request.contextPath}/board/toBoardOption.do?selectOption="
									+ selectOption + "$currentPage=1";
							console.log(url);
							$(location).attr("href", url);
						})
	</script>
</body>
</html>