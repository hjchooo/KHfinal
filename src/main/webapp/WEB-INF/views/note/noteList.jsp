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
	$(document).ready(function() {
		$("#header").load("/resources/header/header.jsp");
		$("#footer").load("/resources/footer/footer.jsp");
	});
</script>
<title>쪽지보기페이지</title>
<style>
* {
	box-sizing: border-box;
}
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


/**/

/* 전체 컨테이너 */
.detailViewContainer {
	width: 900px;
	margin: auto;
}
/* 제목 */
h1 {
	color: #2d0174;
	font-weight: bold;
}

/* 게시글 헤더 영역 */
#titleBox {
	background-color: #f9f9f9;
	height: 50px;
	width: 100%;
	padding-top: 15px;
	border-radius: 5px;
	margin: 0%;
}
/* 팔로우 버튼 */
#follow {
	width: 25px;
	height: 25px;
	margin-left: 15px;
	margin-top: 7px;
}

/* label 태그 */
label {
	font-weight: bold;
}

/* 좋아요 */
#likes {
	width: 25px;
	height: 25px;
}

#likesBlack {
	width: 25px;
	height: 25px;
	border: none;
	color: red;
}

/* 댓글 영역 */
#replyHeader {
	background-color: #f9f9f9;
	border-radius: 5px;
	padding: 5px;
	margin-bottom: 10px;
	border-bottom: 1px solid lightgray;
}
/* 댓글 아이콘 */
#replyIcon {
	width: 25px;
	height: 25px;
}
/* 댓글 내용 */
#reply_content {
	width: 100%;
	overflow: hidden;
	resize: none;
	height: auto;
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

/**/

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


/**/
</style>
</head>
<body>
	<!-- 헤더 -->
	<div id="header"></div>
	
	<!-- 검색창 아래 라인 -->
	<div class="container">
		<h2>쪽지 보기</h2>
		<div class="row">
			<table>
				<thead>
					<tr>
						<th class="col-2">보낸 사람</th>
						<th class="col-5">내용</th>
						<th class="col-2">보낸 날짜</th>
						<th class="col-3">선택</th>
					</tr>
				</thead>
				<tbody class="notebody">

				</tbody>
			</table>
		</div>
		<!-- 페이징 -->
		<div class="row">
			<div class="col-12 d-flex justify-content-center">
				<nav aria-label="Page navigation example">
					<ul class="pagination">
						<c:if test="${naviMap.get('needPrev') eq true}">
							<li class="page-item"><a class="page-link"
								href="${pageContext.request.contextPath}/note/select_to_id.do?to_id=${loginSession.id}&currentPage=${naviMap.get('startNavi')-1}">이전</a></li>
						</c:if>
						<c:forEach var="i" begin="${naviMap.get('startNavi')}"
							end="${naviMap.get('endNavi')}">
							<li class="page-item"><a class="page-link"
								href="${pageContext.request.contextPath}/note/select_to_id.do?to_id=${loginSession.id}&currentPage=${i}">${i}</a></li>
						</c:forEach>
						<c:if test="${naviMap.get('needNext') eq true}">
							<li class="page-item"><a class="page-link"
								href="${pageContext.request.contextPath}/note/select_to_id.do?to_id=${loginSession.id}&currentPage=${naviMap.get('endNavi')+1}">다음</a></li>
						</c:if>
					</ul>
				</nav>
			</div>
		</div>
	</div>
	
	<!--푸터 css에는 foot으로 표기-->
	<div id="footer"></div>
		
	<script>
	
	$(document).ready(function(){
		noteList();
	})
	function noteList(){
		let currentPage = ${currentPage};
			$.ajax({
				url: "${pageContext.request.contextPath}/note/getNoteList.do?to_id=${loginSession.id}&currentPage=" +currentPage
				, type : "get"
			}).done(function(data){
				console.log(data);
				// 기존 댓글을 비워주는 작업
				let noteList = data.list;
				let naviMap = data.naviMap;
				$(".notebody").empty();
				if(noteList.length != 0){
					for(let note of noteList) {
						let noteBox = "<tr><td class='col-2'>"+ note.from_id +"</td>"
						+ "<td class='col-5'>"+ note.content + "</td>"
						+ "<td class='col-2'>"+ note.note_date + "</td>"
						+ "<td class='col-3'>" 
						+ "<button type='button' class='deleteBtn' value='"+ note.note_seq +"'>삭제</button>"
						+ "<button type='button' class='replyBtn' value='"+ note.from_id +"'>답장</button></td>"
						+"</tr>"
						// 댓글 동적 요소 추가
						$(".notebody").append(noteBox);
						
						}	
				}else {
					let noteBox = "데이터가 없습니다."
					$(".notebody").append(noteBox);
					
				}
			}).fail(function(e){
				console.log(e);
			});	
		}
	
	$(document).on("click", ".deleteBtn", function(e){
		console.log("a");
		let note_seq = $(e.target).val();
		let rs = confirm("정말 삭제하시겠습니까?");
		if(rs){
			$.ajax({
				url : "${pageContext.request.contextPath}/note/deleteNote.do?note_seq="+ note_seq
				,method : "get"
			}).done(function(data){
				if(data == "success"){
					alert("삭제가 완료되었습니다.");
					location.href="${pageContext.request.contextPath}/note/select_to_id.do?to_id=${loginSession.id}&currentPage=1";
				}else{
					alert("삭제에 실패하였습니다.");
					location.href="${pageContext.request.contextPath}/note/select_to_id.do?to_id=${loginSession.id}&currentPage=1";	
				}
			}).fail(function(e){
				console.log(e);
			});
		}
	});
	
	$(document).on("click", ".replyBtn", function(e){
		console.log("a");
		let from_id = "${loginSession.id}";
		let to_id = $(e.target).val();
		console.log(from_id + " : " + to_id);
		window.open("${pageContext.request.contextPath}/note/reply.do?from_id="+from_id
				+"&to_id="+to_id, "note", "width=500, height=300");
	});

	
	</script>
</body>
</html>