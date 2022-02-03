<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
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
<title>마이페이지</title>
<style>
/* 마이페이지 컨테이너 */
*{
	box-sizing: border-box;
}
a {
	text-decoration: none;
	color: black;
}
.myPageContainer {
	width: 800px;
	margin: auto;
}

.myPage_category {
	height: 30px;
	text-align: center;
	font-family: 'Nanum Gothic', sans-serif,;
	text-decoration: none;
	color: rgb(44, 44, 44);
	font-size: 17px;
	border-right: 1px solid black;
}

.myPage_category:hover {
	background: silver;
}

.userInformation {
	margin: auto;
	margin-top: 100px;
	width: 800px;
	height: 400px;
}

#user {
	padding-top: 10px;
	height: 70%;
	border: 1px solid black;
	border-radius: 15px;
}

#user>input {
	margin-top: 10px;
	border: none;
}

.userBtn {
	height: 10%;
	text-align: right;
}
/*  */
</style>
</head>
<body>
	<!-- 헤더 -->
	<div id="header"></div>

	<div class="myPageContainer">
		<div class="row">
			<div class="col-12 d-flex justify-content-center">
				<h4>${dto.nickname}님의페이지</h4>
			</div>
		</div>
	</div>
	<div class=" row mypageNavi">
		<div class="col-3"></div>
		<div class="col-2 myPage_category">
			<a href="${pageContext.request.contextPath}/member/myPage.do"> 회원
				정보 </a>
		</div>
		<div class="col-2 myPage_category">
			<a href="#"> 자기 게시글 조회 </a>
		</div>
		<div class="col-2 myPage_category">
			<a
				href="${pageContext.request.contextPath}/note/select_to_id.do?to_id=${dto.id}&currentPage=1">
				쪽지 보기 </a>
		</div>
		<div class="col-3"></div>
		<div class=" row userInformation">
			<h4>${dto.nickname}님의페이지</h4>
			<div class="col-3">
				<div>

					<c:if test="${null ne dto.sys_name}">
						<img
							src="${pageContext.request.contextPath}/upload/${dto.sys_name}"
							width="100px" height="100px">
					</c:if>
					<c:if test="${null eq dto.sys_name }">
						<img
							src="${pageContext.request.contextPath}/resources/images/profile.jpg"
							width="100px" height="100px">
					</c:if>
				</div>
			</div>
			<div id="user">
				<label>가입일 : </label> <input type="text" value="${dto.signup_date}"
					readonly><br> <label>이메일 : </label> <input type="text"
					value="${dto.email}" readonly><br> <label>주소 :
				</label> <input type="text" value="${dto.address}" size="50" readonly>
			</div>
			<div class="userBtn">
				<button type="button" id="noteBtn" class="btn btn-secondary">쪽지
					보내기</button>
				<button type="button" id="modifyBtn" class="btn btn-warning">정보수정</button>
				<button type="button" id="deleteBtn" class="btn btn-danger">회원탈퇴</button>
			</div>
		</div>
	</div>
	</div>

	<!--푸터 css에는 foot으로 표기-->
	<div id="footer"></div>


	<script>
		document.getElementById("modifyBtn").onclick = function() {
			location.href = "${pageContext.request.contextPath}/member/modify.do?id=${loginSession.id}";
		}

		document.getElementById("deleteBtn").onclick = function() {
			let rs = confirm("정말 삭제하시겠습니까?");
			console.log(rs);
			if (rs) {
				location.href = "${pageContext.request.contextPath}/member/delete.do?id=${loginSession.id}";
			}
		}

		document.getElementById("noteBtn").onclick = function() {
			window.open("${pageContext.request.contextPath}/member/note.do",
					"note", "width=500, height=300");
		}

		document.getElementById("noteListBtn").onclick = function() {
			location.href = "${pageContext.request.contextPath}/note/select_to_id.do?to_id=${loginSession.id}&currentPage=1";
		}

		document.getElementById("reportBtn").onclick = function() {
			location.href = "${pageContext.request.contextPath}/board/myboard.do=reply_writer_idre=${loginSession.id}";
		}
	</script>
</body>
</html>