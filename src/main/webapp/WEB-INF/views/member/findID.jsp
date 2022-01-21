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
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<title>아이디 찾기</title>
<style type="text/css">
label {
	font-size: 10px;
}
</style>
</head>
<body>
	<div class="container">
		<form action="" method="post">
			<div class="row mb-3 justify-content-center">
				<div class="col d-flex justify-content-center">
					<h4>아이디 찾기</h4>
				</div>
			</div>

			<div class="row mb-2">
				<label for="이메일" class="form-label">이메일</label>
				<div class="col-8">
					<input type="email" class="form-control" id="email" name="email"
						placeholder="가입시 등록한 구글 메일을 입력해주세요" required="required">
				</div>

				<div class="col-4 d-flex justify-content-center">
					<button type="button" class="btn btn-dark w-100"
						id="btnCertificate_code">인증번호 발송</button>
				</div>
			</div>

			<div class="row mb-2">
				<div class="col" id="res_email"></div>
			</div>

			<div class="row mb-3">
				<div class="col-4">
					<input type="text" class="form-control" id="inputCode"
						placeholder="인증번호" disabled="disabled" maxlength="6"
						required="required">
				</div>

				<div class="col-4" id="res_emailvalidation"
					style="vertical-align: middle;"></div>

				<div class="col-4">
					<button type="button" class="btn btn-success" id="btnFindID"
						style="visibility: hidden;">아이디 찾기</button>
				</div>
			</div>

			<div class="row mb-3">
				<div class="col" id="result_ID"></div>
			</div>

			<div class="row justify-content-center">
				<div class="col-4 d-flex justify-content-center">
					<button type="button" class="btn btn-success" id="btnConfirm"
						disabled="disabled">확인</button>
				</div>
			</div>
		</form>
	</div>

	<script type="text/javascript">
		/*__________이메일__________*/
		let email = document.getElementById("email"); //	이메일 입력 input창
		let btnCertificatecode = document.getElementById("btnCertificate_code"); //	인증번호 발송 버튼
		let ResEmail = $("#res_email"); //	이메일이 제대로 입력됐는지 확인을 알려주는 결과를 담아줄 변수
		let inputCode = $("#inputCode"); //	인증번호 입력 input창
		let code = ""; //	이메일 인증코드 저장을 위한 변수
		let ResEmailvalidation = $("#res_emailvalidation"); //	입력한 인증번호가 맞는지 틀린지 알려주는 결과를 담아줄 변수
		let resultID = $("#result_ID");	//	아이디를 보여줄 결과창
		let btnFindID = $("#btnFindID");
		let list = null;

		//	E-mail regex (정규식 문구 올바른지 검증 필요)
		function regexEmail() {
			const RegexEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;

			return RegexEmail.test(email.value);
		}

		//	E-mail 입력창을 벗어났을 때 정규식 검사
		email.onchange = function(e) {
			if (!regexEmail()) {
				ResEmail.html("이메일이 정확하지 않습니다.");
				ResEmail.css({
					"font-size" : "10px",
					"color" : "red"
				});

			}
		}

		//	인증번호 발송을 눌렀을때
		btnCertificatecode.onclick = function(e) {
			if (regexEmail()) { //	regex를 통과해야 비로소 중복 검사 실행

				ResEmail.html("인증번호를 보냈습니다");
				ResEmail.css({
					"font-size" : "10px",
					"color" : "green"
				});

				$.ajax({
					url : "${pageContext.request.contextPath}/member/CertificateCode.do", 
					type : "post", 
					data : {email : email.value}, 
					success : function(data) {
						//	console.log("data : " + data);	//	인증번호 값이 잘 넘어왔나 확인

						inputCode.attr("disabled", false); //	disabled를 풀어버림

						code = data; //	코드를 담음
						console.log(code);
					}
				}).done(function(data) {
					//	console.log(data);
				}).fail(function(e) {
					console.log(e);
				});

			}
		}

		inputCode.change(function(e) {
			if (inputCode.val() === code) {
				ResEmailvalidation.html("인증번호가 일치합니다.");
				ResEmailvalidation.css({
					"font-size" : "10px",
					"color" : "green"
				});

				inputCode.attr("disabled", true);

				btnFindID.css("visibility", "visible");
				
			} else if (inputCode.val() !== code) {
				ResEmailvalidation.html("인증번호가 불일치합니다.");
				ResEmailvalidation.css({
					"font-size" : "10px",
					"color" : "red"
				});

			}
		});
		
		//	아이디 찾기 버튼을 누르면 resultID에 아이디가 보여짐
		btnFindID.click(function(e) {
			$.ajax({
				url: "${pageContext.request.contextPath}/member/findID.do", 
				type: "post", 
				data: {email : email.value}
			}).done(function(data) {
				console.log(data);
				
				list = data;
				
				resultID.html("아이디 : ");
				
				for (var i = 0; i < list.length; i++) {
					console.log(list[i].id);
					
					resultID.append("<span>" + list[i].id + ", " + "</span>"); 
				}
			}).fail(function(e) {
				console.log(e);
			});
			
			$("#btnConfirm").attr("disabled", false);	//	활성화된 아이디 찾기 버튼을 누르면 아이디가 보여지면서 확인버튼을 클릭가능
		});
		
		//	확인버튼을 눌렀을 때
		document.getElementById("btnConfirm").onclick = function(e) {
			window.close();	//	팝업창 닫음
		}
	</script>
</body>
</html>