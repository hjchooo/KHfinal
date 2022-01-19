<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<title>상세보기</title>
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

	<!-- 헤더 끝 -->
	${loginSession.id}
	<div class="detailViewContainer">
		<!-- ==================== 게시글 내용 ==================== -->
		<div class="row">
			<div class="col-12 d-flex justify-content-start">
				<h3>${dto.title}</h3>
				<a class="text-dark follow" style="text-decoration-line: none;">
					<img src="/resources/images/followPlusWhite.svg" id="follow">
				</a>
			</div>
		</div>

		<div class="row d-flex justify-content-center" id="titleBox">
			<div class="col-2">
				<label>${dto.category}</label>
			</div>
			<div class="col-4">
				<label>작성자 : </label> <a class="btn btn-secondary dropdown-toggle"
					href="#" role="button" id="dropdownMenuLink"
					data-bs-toggle="dropdown" aria-expanded="false">${dto.writer_id}</a>
				<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
					<li><a class="dropdown-item" href="#">쪽지쓰기</a></li>
					<li><a class="dropdown-item" href="#">게시물 보기</a></li>
					<li><a class="dropdown-item" href="#">팔로우</a></li>
				</ul>

			</div>
			<div class="col-4">
				<label>작성일 : </label> ${dto.written_date}
			</div>
			<div class="col-2">
				<label>조회 : </label> ${dto.view_count}
			</div>
		</div>
		<!-- 내용 -->
		<div class="row" id="contentBox">
			<div class="col-12">
				<c:forEach items="${list}" var="fdto">
					<img
						src="${pageContext.request.contextPath}/upload/${fdto.ori_name}">
				</c:forEach>
			</div>
			<div class="col-12 d-flex justify-cotent-center">
				${dto.content}</div>
		</div>

		<!-- 좋아요 영역 -->
		<div class="row-12 mt-3">
			<div class="col-12 d-flex justify-content-end">
				<a class="text-dark likes" style="text-decoration-line: none;">
					<img src="/resources/images/heartWhite.svg" id="likes">
				</a>
			</div>
		</div>

		<!-- ==================== 댓글 영역 ==================== -->
		<!-- 댓글 헤더 -->
		<div class="row mt-5" id="replyHeader">
			<div class="col-12">
				<img src="/resources/images/replyIconWhite(...).svg" id="replyIcon">
				<label>댓글</label>
			</div>
		</div>

		<!-- 댓글 출력 -->
		<div id="replyContainer"></div>

		<!-- 댓글 입력 -->
		<form id="replyForm" method="post">
			<div class="row">
				<div class="col-12 mt-2">
					<textarea id="reply_content" name="re_content" class="form-control"
						placeholder="댓글을 입력 해주세요"></textarea>
					<input type="text" id="reply_writer_id" name="reply_writer_id"
						value="abc123" hidden> <input type="text"
						id="reply_writer_nickname" name="reply_writer_nickname"
						value="abc123" hidden>
				</div>
				<div class="col-12 mt-2 d-flex justify-content-end">
					<button type="button" id="btnReplyConfirm" class="btn">등록</button>
				</div>
			</div>
		</form>

		<!-- 댓글 페이징 -->
		<div class="row">
			<div class="col-12 d-flex justify-content-center">
				<nav aria-label="Page navigation example">
					<ul class="pagination">
						<c:if test="${naviMap.get('needPrev') eq true}">
							<li class="page-item"><a class="page-link"
								href="${pageContext.request.contextPath}/board/detailView.do?currentPage=${naviMap.get('startNavi')-1}">이전</a></li>
						</c:if>
						<c:forEach var="i" begin="${naviMap.get('startNavi')}"
							end="${naviMap.get('endNavi')}">
							<li class="page-item"><a class="page-link"
								href="${pageContext.request.contextPath}/board/detailView.do?currentPage=${i}">${i}</a></li>
						</c:forEach>
						<c:if test="${naviMap.get('needNext') eq true}">
							<li class="page-item"><a class="page-link"
								href="${pageContext.request.contextPath}/board/detailView.do?currentPage=${naviMap.get('endNavi')+1}">다음</a></li>
						</c:if>
					</ul>
				</nav>
			</div>
		</div>


		<!-- 수정, 삭제, 목록으로 버튼 -->
		<div class="row mt-5">
			<div class="col-2 d-flex justify-content-start">
				<button type="button" id="btnGetList" class="btn">목록으로</button>
			</div>
			<div class="col-8 d-flex justify-content-end">
				<button type="button" id="btnModify" class="btn">글수정</button>
			</div>
			<div class="col-2 d-flex justify-content-end">
				<button type="button" id="btnDelete" class="btn">글삭제</button>
			</div>
		</div>
	</div>
	
	<!--푸터 css에는 foot으로 표기-->
	<footer>
		<div class="container-fluid foot_container margin_top_100">
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

	<script>
	// 팔로우 기능
	$(document).ready(function () {
				
	// 팔로우 있는지 확인한 값을 likesVal에 저장
        let followVal = "${follow.follow_count}";
        if(followVal > 0) {
            console.log(followVal);
            $("#follow").prop("src", "/resources/images/followPlusBlack.svg");
            $(".follow").prop('name', followVal)
        }
        else {
            console.log(followVal);
            $("#follow").prop("src", "/resources/images/followPlusWhite.svg");
            $(".follow").prop('name', followVal)
        }

	// 팔로우을 클릭 시 실행되는 코드
        $(".follow").on("click", function () {
            let that = $(".follow");
	    $.ajax({
	    	url :"${pageContext.request.contextPath}/follow/insertFollow",
	        type :"POST",
	        data : {"follow_id":"${loginSession.id}", "follower_id":"${dto.writer_id}"},
	    	success : function(data){
	    		that.prop("name",data);
	        	if(data == 1) {
            	     $("#follow").prop("src","/resources/images/followPlusBlack.svg");
	        	} else {
               	     $("#follow").prop("src","/resources/images/followPlusWhite.svg");
	        	}
           	}
	    });
        });
    });
	
	
	
	// 좋아요 기능 영역
	$(document).ready(function () {
				
	// 좋아요가 있는지 확인한 값을 likesVal에 저장
        let likesVal = "${likes.likes_count}";
        // likesVal이 1이면 좋아요가 이미 되있는것이므로 heartBlack.svg를 출력하는 코드
        if(likesVal > 0) {
            console.log(likesVal);
            $("#likes").prop("src", "/resources/images/heartBlack.svg");
            $(".likes").prop("name", likesVal)
        }
        else {
            console.log(likesVal);
            $("#likes").prop("src", "/resources/images/heartWhite.svg");
            $(".likes").prop("name", likesVal)
        }

	// 좋아요 버튼을 클릭 시 실행되는 코드
        $(".likes").on("click", function () {
            let that = $(".likes");
	    $.ajax({
	    	url :"${pageContext.request.contextPath}/likes/insertLikes",
	        type :"POST",
	        data : {"board_seq":"${dto.board_seq}", "likes_id":'${loginSession.id}'},
	    	success : function(data){
	    		that.prop("name",data);
	        	if(data == 1) {
            	     $("#likes").prop("src","/resources/images/heartBlack.svg");
	        	} else {
               	     $("#likes").prop("src","/resources/images/heartWhite.svg");
	        	}
           	}
	    });
        });
    });
	
	
	// 댓글 출력
	// $("#replyContainer")
	$(document).ready(function(){
		getReplyList();
	})
	function getReplyList(){
		let re_board_seq = ${dto.board_seq};
		$.ajax({
			url: "${pageContext.request.contextPath}/reply/getReplyList?re_board_seq=" + re_board_seq + "&currentPage=1"
			, type : "get"
		}).done(function(data){
			// 기존 댓글을 비워주는 작업
			let replyList = data.replyList;
			$("#replyContainer").empty();
			for(let reply of replyList) {
				let replyBox = "<div class='row mt-3 p-2' style='background-color:#f9f9f9; border-radius:5px;'>"
				+ "<form id='modifyReplyForm'>"
				+ "<div class='col-12'>작성자 : "
				+ reply.reply_writer_id
				+ "</div>"
				+ "<div class='col-12'>"
				+ "<input type='text' class='form-control' value='" + reply.re_content + "' name='" + reply.reply_seq + "'readonly>"
				+ "</div>"
				+ "<div class='col-12 contentDiv-cmt'>작성일 : "
				+ reply.reply_written_date
				+ "</div>"
				+ "</form>"
				+ "</div></br>"
				// 댓글 동적 요소 추가
				$("#replyContainer").append(replyBox);
				
				// 댓글 수정 삭제 버튼
				// 세션에 담겨 있는 id와 댓글리스트 안의 reply_writer 와 같은 경우 버튼 생성
				if("abc123" == reply.reply_writer_id) {
					let btns = "<div class='col-12 d-flex justify-content-end pd-5'>"
					+ "<button type='button' class='btn btn-modifyReply' value='"+ reply.reply_seq +"' >수정</button>"
					+ "<button type='button' class='btn btn-deleteReply' value='"+ reply.reply_seq +"' >삭제</button>"
					+ "</div>";
					
					// 가장 최근에 만들어진 댓글 옆에 버튼 추가
					$(".contentDiv-cmt:last").after(btns);
				}
			}
		}).fail(function(e){
			console.log(e);
		})
	}
	
	// 댓글 수정(동적 댓글 생성후 클릭버튼 위임) 
	$("#replyContainer").on("click", ".btn-modifyReply" , function(e){
		console.log($(e.target).val());
		let data = $("#modifyReplyForm").serialize();
		let reply_seq = $(this).val();
		console.log(reply_seq);
		let re_content = $("input[name='" + reply_seq + "']").val();
		console.log(re_content);
		
		$.ajax({
			url : "${pageContext.request.contextPath}/reply/modifyReply?reply_seq="
					+ reply_seq + "&re_content=" + re_content
			, type : "put"
			, data : re_content
		}).done(function(rs) {
			if (rs == "성공") {
				alert("댓글 수정 성공");
				getReplyList();
			} else if (rs == "실패") {
				alert("댓글 등록에 실패 했습니다.");
			}
		}).fail(function(e) {
			console.log(e);
		})
		
	})
	
	// 댓글 삭제
	$("#replyContainer").on("click", ".btn-deleteReply" , function(e){
		console.log($(e.target).val());
		let reply_seq = $(e.target).val();
		$.ajax({
			url : "${pageContext.request.contextPath}/reply/deleteReply?reply_seq="
					+ reply_seq
			, type : "post"
		}).done(function(rs) {
			if (rs == "성공") {
				alert("댓글 삭제 성공");
				getReplyList();
			} else if (rs == "실패") {
				alert("댓글 삭제 에 실패 했습니다.");
			}
		}).fail(function(e) {
			console.log(e);
		})
		
	})
		
		
	
	// 댓글 등록 버튼
	$("#btnReplyConfirm").on("click",function() {
		let board_seq = ${dto.board_seq};
		console.log(board_seq);
		let data = $("#replyForm").serialize();
		//if(${not empty loginSession}) { // 로그인을 할 경우
			$.ajax({
				url : "${pageContext.request.contextPath}/reply/insertReply?re_board_seq="
						+ board_seq + "&currentPage=1",
				type : "post",
				data : data
			}).done(function(rs) {
				if (rs == "성공") {
					alert("댓글 등록 성공");
					location.href = "${pageContext.request.contextPath}/board/detailView.do?board_seq="
							+ board_seq + "&currentPage=1";
				} else if (rs == "실패") {
					alert("댓글 등록에 실패 했습니다.");
				}
			}).fail(function(e) {
				console.log(e);
			})
		//} else { // 로그인이 안했을 경우
		//	alert("로그인이 필요합니다.");
		//}
	})
	
	// 목록으로 버튼 클릭
	$("#btnGetList").on("click", function(){
		location.href = "${pageContext.request.contextPath}/board/toBoard.do?currentPage=1";
	})
	</script>

</body>
</html>