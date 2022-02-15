<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<title>로그인 페이지</title>
<style>
/**/
* {
	box-sizing: border-box;
}

a {
	text-decoration: none;
	color: gray;
}

a:hover {
	color: black;
	cursor: pointer;
}

/* 전체 컨테이너 */
.wrapper {
	height: 100%;
}

/* 로그인 컨테이너 */
.loginContainer {
	width: 350px;
	margin: auto;
	min-height: 100%;
	display: grid;
	grid-template-rows: 1fr aut
}

/* 버튼 */
.loginBtn {
	background-color: #f9f9f9;
	color: gray
}

.loginBtn:hover {
	background-color: gray;
	color: white;
}

/* 찾기 버튼 */
.findBtn {
	color: gray;
}

.findBnt:hover {
	color: black;
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
	<div class="wrapper">

		<div id="header"></div>

		<!-- 회원 가입 영역 -->
		<div class="loginContainer">
			<form action="" method="post" id="loginForm">
				<div class="row mb-5 mt-5">
					<div class="col-12 d-flex justify-content-center">
						<h3>로그인</h3>
					</div>
				</div>

				<div class="row mb-3">
					<div class="col-12">
						<label for="ID" class="form-label">아이디</label> <input type="text"
							class="form-control" id="id" name="id" onkeyup="enterkey();">
					</div>
				</div>

				<div class="row mb-3">
					<div class="col-12">
						<label for="PW" class="form-label">비밀번호</label> <input
							type="password" class="form-control" id="pw" name="pw"
							onkeyup="enterkey();">
					</div>
				</div>

				<div class="row mb-3">
					<div class="col-12">
						<label> <input type="checkbox" class="form-check-input"
							id="rememberId" name="rememberId"> ID 기억하기
						</label>
					</div>
				</div>

				<div class="row mb-3">
					<div class="col-6 d-flex justify-content-end">
						<a href="#" class="findBtn" id="findID">아이디 찿기&nbsp;&nbsp;/</a>
					</div>
					<div class="col-6 d-flex justify-content-start p-0">
						<a href="#" class="findBtn" id="findPW">비밀번호 찾기</a>
					</div>
				</div>

				<div class="row mb-3">
					<div class="col-6 d-flex justify-content-end">
						<input type="button" class="btn loginBtn" id="btnLogin"
							onkeyup="enterkey();" value="로그인">
					</div>

					<div class="col-6 d-flex justify-content-start">
						<button type="button" class="btn loginBtn" id="btnBack">취소</button>
					</div>
				</div>
			</form>

			<div class="row mt-5">
				<div class="col-12 d-flex justify-content-start mb-1">
					<a href="${pageContext.request.contextPath}/member/toJoinus.do">
						<label style="font-size: 11px; font-weight: bold;"> <img
							src="/resources/images/question-circle.svg">
							&nbsp;&nbsp;회원이 아니신가요?
					</label>
					</a>
				</div>
			</div>

			<div class="row mb-5">
				<div class="col-12 d-flex justify-content-start">
					<button type="button" class="btn btn-primary w-100" id="btnJoinus">회원가입</button>
				</div>

				<!-- 네이버 아이디로 로그인 -->
				<div id="naver_id_login" style="text-align: center">
					<a href="${url}"> <img width="223"
						src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png" /></a>
				</div>
			</div>

		</div>
		<!--푸터 css에는 foot으로 표기-->
		<div id="footer" class="mt-3"></div>
	</div>

	<script>
		// 로그인
		function login() {
			let data = $("#loginForm").serialize();
			console.log(data);
			$.ajax({
					url : "${pageContext.request.contextPath}/member/toLogin",
					type : "post",
					data : data
				}).done(function(rs) {
					console.log(rs);
					if (rs == "성공") {
						location.href = "${pageContext.request.contextPath}/";
					} else if (rs == "admin") {
						location.href = "${pageContext.request.contextPath}/manager/main.do?currentPage=1";
					} else if (rs == "실패") {
						alert("아이디 혹은 비밀번호가 일치하지 않습니다.");
					}
				}).fail(function(e) {
					console.log(e);
			})
		}

		function login() {
			let data = $("#loginForm").serialize();
			console.log(data);
			$.ajax({
				url : "${pageContext.request.contextPath}/member/toLogin",
				type : "post",
				data : data
			}).done(function(rs) {
				console.log(rs);
				if (rs == "성공") {
					location.href = "${pageContext.request.contextPath}/";
				} else if (rs == "admin") {
					location.href = "${pageContext.request.contextPath}/manager/main.do?currentPage=1";
				} else if (rs == "실패") {
					alert("아이디 혹은 비밀번호가 일치하지 않습니다.");
				}
			}).fail(function(e) {
				console.log(e);
			})
		}

		$("#btnLogin").on("click", function() {
			login();
		})

		// 엔터키 입력 처리
		function enterkey() {
			if (window.event.keyCode == 13) {
				login();
			}
		}

		// 아이디 기억하기
		$(document).ready(function() {
			let userId = getCookie("cookieUserId");
			$("input[name='id']").val(userId);

			if ($("input[name='id']").val() != "") { // Cookie에 만료되지 않은 아이디가 있어 입력됬으면 체크박스가 체크되도록 표시
				$("input[name='rememberId']").attr("checked", true);
			}

			$("button[type='button']", $('#loginForm')).click(function() { // Login Form을 Submit할 경우,
				if ($("input[name='rememberId']").is(":checked")) { // ID 기억하기 체크시 쿠키에 저장
					let userId = $("input[name='id']").val();
					setCookie("cookieUserId", userId, 7); // 7일동안 쿠키 보관
				} else {
					deleteCookie("cookieUserId");
				}
			});
		})

		function setCookie(cookieName, value, exdays) {
			let exdate = new Date();
			exdate.setDate(exdate.getDate() + exdays);
			let cookieValue = escape(value)
					+ ((exdays == null) ? "" : "; expires="
							+ exdate.toGMTString());
			document.cookie = cookieName + "=" + cookieValue;
		}
		function deleteCookie(cookieName) {
			let expireDate = new Date();
			expireDate.setDate(expireDate.getDate() - 1);
			document.cookie = cookieName + "= " + "; expires="
					+ expireDate.toGMTString();
		}
		function getCookie(cookieName) {
			cookieName = cookieName + '=';
			let cookieData = document.cookie;
			let start = cookieData.indexOf(cookieName);
			let cookieValue = '';
			if (start != -1) {
				start += cookieName.length;
				let end = cookieData.indexOf(';', start);
				if (end == -1)
					end = cookieData.length;
				cookieValue = cookieData.substring(start, end);
			}
			return unescape(cookieValue);

		}

		// 아이디 찾기
		document.getElementById("findID").onclick = function(e) {
			let url = "${pageContext.request.contextPath}/member/tofindID.do";
			let name = "아이디 찾기";
			let option = "width = 500, height = 400, top = 50";

			window.open(url, name, option);
		}

		//	비밀번호 찾기 (이메일을 입력하면 임시비밀번호가 갈 예정)
		document.getElementById("findPW").onclick = function(e) {
			let url = "${pageContext.request.contextPath}/member/tofindPW.do";
			let name = "비밀번호 찾기";
			let option = "width = 500, height = 300, top = 50";

			window.open(url, name, option);
		}

		// 뒤로가기
		document.getElementById("btnBack").onclick = function(e) {
			location.href = "${pageContext.request.contextPath}/";
		}

		// 회원가입 페이지 이동
		document.getElementById("btnJoinus").onclick = function(e) {
			location.href = "${pageContext.request.contextPath}/member/toJoinus.do";
		}
	</script>
</body>
</html>