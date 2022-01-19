<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>게시판</title>
<style>
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
				<select id="select" name="select">
					<option value="all" selected="selected">전체</option>
					<option value="content">내용</option>
					<option value="title">제목</option>
					<option value="writer_nickname">작성자</option>
				</select> 
				<input type="text" id="keyword" name="keyword">
				<button type="button" id="serchBtn">검색</button>
			</div>
		</div>
	</div>
	<div class="boxBtn-bottom">
		<button class="btn btn-success" id="btnHome" type="button">홈으로</button>
	</div>

	<script>
		// 검색 기능
    	$("#serchBtn").on("click", function(){
    		let select = $("#select").val();
    		let keyword = $("#keyword").val();
    		console.log(select + " : " + keyword);
    		let url = "${pageContext.request.contextPath}/board/searchProc.do?select="+select+"&keyword="+keyword+"&currentPage=1";
    		console.log(url);
    		$(location).attr("href", url);
    	})
    	
    	$("#selectOption").on("change", function(){
    		let selectOption = $("#selectOption").val();
    		console.log(selectOption);
    		let url = "${pageContext.request.contextPath}/board/toBoardOption.do?selectOption="+selectOption+"$currentPage=1";
    		console.log(url);
    		$(location).attr("href", url);
    	})
    </script>
</body>
</html>