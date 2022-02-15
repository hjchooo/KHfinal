<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>답장페이지</title>
<style>
* {
	box-sizing: border-box;
}

/* 전체 컨테이너 */
.noteContaienr {
	width: 300px;
	height: 400px;
	margin: auto;
	padding: 10px;
}

/* 족지 아이콘 */
#messageImg {
	width: 40px;
	height: 40px;
}

/* textarea */
#content {
	resize: none;
	width: 100%;
	height: 200px;
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
</style>
</head>
<body>
	<div class="noteContainer">
		<form id="noteForm" name="noteForm">
			<div class="row mt-2 mb-2">
				<div class="col-6 d-flex justify-content-end">
					<img id="messageImg" src="/resources/images/envelope.svg">
				</div>
				<div class="col-6 d-flex justify-content-start">
					<h3>쪽지 보내기</h3>
				</div>
			</div>

			<div class="row">
				<div class="col-2">
					<label>보내는 사람</label>
				</div>
				<div class="col-10">
					<input type="text" id="from_id" name="from_id" class="form-control"
						value="${loginSession.id}" readonly>
				</div>
			</div>

			<div class="row">
				<div class="col-2">
					<label>받는 사람</label>
				</div>
				<div class="col-10">
					<select id="to_id" name="to_id" class="form-select">
						<option value="">선택</option>
						<c:forEach items="${list}" var="dto">
							<option value="${dto.id}">${dto.id}</option>
						</c:forEach>
					</select>
				</div>
			</div>

			<div class="row mt-3">
				<div class="col-2">
					<label>내용</label>
				</div>
				<div class="col-10">
					<textarea id="content" name="content" placeholder="내용을 입력하세요."
						class="form-control"></textarea>
				</div>
			</div>
			<div class="row mt-3">
				<div class="col-6 d-flex justify-content-end">
					<button type="button" id="submitBtn" class="btn">쪽지 보내기</button>
				</div>
				<div class="col-6 d-flex justify-content-start">
					<button type="button" id="btnCancel" class="btn">취소</button>
				</div>
			</div>
		</form>
	</div>
	<script>
		document.getElementById("submitBtn").onclick = function() {
			let noteSubmit = $("#noteForm").serialize();
			$.ajax({
				url : "${pageContext.request.contextPath}/note/note.do",
				method : "post",
				data : noteSubmit
			}).done(function(data) {
				if (data == "success") {
					alert("쪽지가 전송되었습니다.");
					window.close();
				} else {
					alert("쪽지 전송에 실패하였습니다.");
					window.close();
				}
			}).fail(function(e) {
				console.log(e);
			});
		}
		/* document.getElementById("submitBtn").onclick = function() {
			int rs = document.getElementById("noteForm").submit();
			System.out.println(rs);
			if(rs != -1){
				alert("쪽지가 전송되었습니다.");
				window.close();	
			}
		} */

		// 취소 버튼 클릭
		$("#btnCancel").on("click", function() {
			window.close();
		})
	</script>
</body>
</html>