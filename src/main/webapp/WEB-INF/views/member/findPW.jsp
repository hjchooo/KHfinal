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

			<div class="row mb-2">
				<label for="아이디" class="form-label">아이디</label>
				<div class="col-8">
					<input type="text" class="form-control" id="id" name="id"
						placeholder="아이디를 입력하세요." required="required">
				</div>
				
				<div class="col-4">
					<button type="button" class="btn btn-primary" id="next">다음</button>
				</div>
			</div>

			<div class="row mb-2" style="visibility: hidden;">
				<div class="col">
					<label for="이메일" class="form-label">이메일</label> <input type="email"
						class="form-control" id="email" name="email"
						placeholder="가입시 등록한 구글 메일을 입력해주세요" required="required">
				</div>
			</div>
		</form>
	</div>
	
	<script type="text/javascript">
		let id = document.getElementById("id");
	
		document.getElementById("next").onclick = function(e) {
			if (id.value == "") {	//	아이디가 비어있으면
				alert("아이디를 입력하세요");
			} else if (id.value != "" && id.value == ???) {	//	비어있지 않고, 그 아이디가 db에 있으면
				$.ajax({
					url: "${pageContext.request.contextPath}/member/"
				}).done(function(data) {
					console.log(data);
				}).fail(function(e) {
					console.log(e);
				})
			}
		}
	</script>
</body>
</html>