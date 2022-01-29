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
<title>비밀번호 찾기</title>
<style type="text/css">
label {
	font-size: 10px;
}
</style>
</head>
<body>
	<div class="container">
		<form action="" method="post">
			<div class="row mb-5 justify-content-center">
				<div class="col d-flex justify-content-center">
					<h4>비밀번호 찾기</h4>
				</div>
			</div>

			<!-- 
			<div class="row mb-2">
				<label for="아이디" class="form-label">아이디</label>
				<div class="col-8">
					<input type="text" class="form-control" id="id" name="id"
						placeholder="아이디를 입력하세요." required="required">
				</div>

				<div class="col-4">
					<button type="button" class="btn btn-primary w-100" id="btnNext">다음</button>
				</div>
			</div>
			-->

			<div class="row mb-2" id="email_area"> <!-- style="display: none;" -->
				<label for="이메일" class="form-label">이메일</label>
				<div class="col-8">
					<input type="email" class="form-control" id="email" name="email"
						placeholder="가입 시 등록한 구글 메일을 입력해주세요" required="required">
				</div>

				<div class="col-4">
					<button type="button" class="btn btn-warning w-100" id="btnConfirm">확인</button>
				</div>
			</div>
			
			<div class="row mb-2 justify-content-center" style="display: none;" id="submit_area">
				<div class="col-6 d-flex justify-content-center">
					<button type="button" class="btn btn-primary" id="btnSubmit">임시비밀번호 발송</button>
				</div>
			</div>
		</form>
	</div>

	<script type="text/javascript">
		//	let id = document.getElementById("id");
		let email = document.getElementById("email");

		//	아이디 입력후 '다음'버튼을 눌렀을 때
		/*
		document.getElementById("btnNext").onclick = function(e) {
			if (id.value == "") {	//	아이디 입력창이 비어있으면
				alert("아이디를 입력하세요");
			} else if (id.value != "") {	//	비어있지 않으면, 입력한 아이디의 존재 유.무를 ajax로 처리 
				$.ajax({
					url: "${pageContext.request.contextPath}/member/ExistID.do", 
					type: "post", 
					data: {id : id.value}
				}).done(function(res) {
					if (res == "Exist") {
						
						//	이메일 입력창 보여짐
						$("#email_area").fadeIn(1000);
						
						//	입력한 아이디 막기
						id.disabled = true;
					} else if (res == "Nope") {
						$("#email_area").css("display", "none");
						
						alert("입력하신 아이디를 찾을 수 없습니다.");
						id.value = "";
					}
				}).fail(function(e) {
					console.log(e);
				});
			
			}
		}
		*/
		
		//	이메일 입력 후 '확인'을 눌렀을 때
		document.getElementById("btnConfirm").onclick = function(e) {
			if (email.value == "") {
				alert("이메일을 입력하세요.");
			} else if (email.value != "") {
				$.ajax({
					url: "${pageContext.request.contextPath}/member/ExistEmail.do", 
					type: "post", 
					data: {email : email.value}
				}).done(function(res) {
					if (res == "Exist") {
						alert("확인되었습니다.");
						
						email.disabled = true;
						
						$("#submit_area").fadeIn(1000);
					} else if (res == "Nope") {
						alert("등록되지 않은 이메일 입니다.");
						
						email.value = "";
					}
				}).fail(function(e) {
					console.log(e);
				});
				
			}
		}
		
		// 임시PW 발송 버튼 클릭 시
		document.getElementById("btnSubmit").onclick = function(e) {
			alert("임시 비밀번호를 발송했습니다.");
			
			$.ajax({
				url: "${pageContext.request.contextPath}/member/temporaryPW.do", 
				type: "post", 
				data: {email : email.value}, 
				success : function(data) {
					console.log(data);
				}
			}).done(function(data) {
				//	console.log(data);
			}).fail(function(e) {
				console.log(e);
			});
			
		}
	</script>
</body>
</html>