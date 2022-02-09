<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<script>
        $(document).ready(function () {
            $("#header").load("/resources/header/header.jsp");
            $("#footer").load("/resources/footer/footer.jsp");
        });
    </script>
<title>나의 게시물 확인</title>
<style>
* {
	box-sizing: border-box;
}

a {
	text-decoration: none;
	color: black;
	font-weight: bold;
}

a:hover {
	color: black;
	cursor: pointer;
}

/* 전체 컨테이너 */
.myBoardListContainer {
	width: 1200px;
	height: auto;
	margin: auto;
}

/* 마이페이지 컨테이너 */
.myPageContainer {
	height: 100%;
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
	height: 600px;
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

/* 쪽지함 제목 이미지 */
#noteImg {
	width: 45px;
	height: 45px;
	margin-right: 10px;
}

/* 푸터 */
#footer {
	bottom: 0;
	grid-row-start: 2;
	grid-row-end: 3;
}
</style>
</head>

<body>
	<!-- 헤더 -->
	<div id="header"></div>

	<!-- 검색창 아래 라인 -->
	<div class="myBoardListContainer mb-5">
		<div class="row mt-5">
			<div class="col-12 d-flex justify-content-center">
				<img id="noteImg" src="/resources/images/clipboard-check.svg">
				<h3 class="mt-1">나의 게시글 확인</h3>
			</div>
		</div>

		<div class="row myPageContainer mt-5">
			<!-- 마이페이지 왼쪽편 -->
			<div class="col-3 mypage_right_line">
				<div class="row d-flex justify-content-center mb-3">
					<div class="col-12" id="profileImgBox">
						<img class="mypage_profile_img" id="profileImg"
							src="/resources/images/profile.svg">
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
								href="${pageContext.request.contextPath}/note/select_to_id.do?currentPage=1">쪽지
									확인</a></li>
						</ul>
					</div>

				</div>
			</div>

			<div class="col-9 mb-5">
				<div class="row">
					<div class="col-12 mypage_left_line">
						<table class="table">
							<thead>
								<tr>
									<th class="col-1">선택</th>
									<th class="col-1">번호</th>
									<th class="col-5">제목</th>
									<th class="col-3">날짜</th>
									<th class="col-2">조회수</th>
								</tr>
							</thead>
							<tbody class="showBox">
								<c:forEach items="${list}" var="dto">
									<tr>
										<td><input type="checkbox" name="board_seq"
											class="cls-checkBox" value="${dto.board_seq}"></td>
										<td>${dto.board_seq}</td>
										<td><c:choose>
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
											</c:choose></td>
										<td>${dto.written_date}</td>
										<td>${dto.view_count}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				
				<div class="row">
					<div class="col-1" style="margin-left:6px;padding-top:0px;">
						<a onclick="deleteBoardSeq();"><img src="/resources/images/trash3.svg"></a>
					</div>
				</div>
				
				<div class="row mt-3">
					<div class="col-12 d-flex justify-content-center">
						<nav aria-label="Page navigation example">
							<ul class="pagination">
								<c:if test="${naviMap.get('needPrev') eq true}">
									<li class="page-item"><a class="page-link"
										href="${pageContext.request.contextPath}/board/toMyBoardList?currentPage=${naviMap.get('startNavi')-1}">이전</a>
									</li>
								</c:if>
								<c:forEach var="i" begin="${naviMap.get('startNavi')}"
									end="${naviMap.get('endNavi')}">
									<li class="page-item"><a class="page-link"
										href="${pageContext.request.contextPath}/board/toMyBoardList?currentPage=${i}">${i}</a>
									</li>
								</c:forEach>
								<c:if test="${naviMap.get('needNext') eq true}">
									<li class="page-item"><a class="page-link"
										href="${pageContext.request.contextPath}/board/toMyBoardList?currentPage=${naviMap.get('endNavi')+1}">다음</a>
									</li>
								</c:if>
							</ul>
						</nav>
					</div>
				</div>
			</div>



		</div>
	</div>

	<!--푸터 css에는 foot으로 표기-->
	<div id="footer"></div>

	<script>
		// 비밀글 팝업창
		let arrCheck = new Array();
   	
   	$("input[name='board_seq']").change(function(e){
   		console.log($(e.target).val());
    	console.log($(e.target).is(':checked'));
    	if($(e.target).is(':checked')){
    		arrCheck.push($(e.target).val());
    		console.log(arrCheck);
    		console.log(typeof(arrCheck));
    	}else {
    		for(let i=0; i < arrCheck.length; i++){
    			if(arrCheck[i] == $(e.target).val()){
    				arrCheck.splice(i, 1);
    				i--;
    			}
    			
    			console.log(arrCheck);
    		}
    	}
   	});
   	
   	function deleteBoardSeq(){
   		let rs = confirm("정말 삭제하시겠습니까?");
        if (rs) {
            $.ajax({
                url: "${pageContext.request.contextPath}/board/checkDeleteBoard.do"
                , type: "get"
                , data : {
                	arrCheck : arrCheck
                }
            }).done(function (data) {
            	console.log(data);
                if (data == "success") {
                    alert("삭제가 완료되었습니다.");
                    location.href = "${pageContext.request.contextPath}/board/toMyBoardList?currentPage=1";
                } else {
                    alert("삭제에 실패하였습니다.");
                    location.href = "${pageContext.request.contextPath}/board/toMyBoardList?currentPage=1";
                }
            }).fail(function (e) {
                console.log(e);
            });
        }
   	};
			
    </script>
</body>

</html>