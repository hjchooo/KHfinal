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
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<title>신고</title>
<style>
.report_container {
	height: 450px;
	width: 500px;
	margin: auto;
}

#title {
	text-align: center;
}

#report_type {
	width: 100%;
	text-align: center;
}

#report_content {
	width: 100%;
	height: 300px;
	resize: none;
}

#reportBtn {
	text-align: center;
	border: 1px solid red;
	background-color: rgba(0, 0, 0, 0);
	color: red;
	padding: 5px;
	width: 100%;
	border-radius: 5px;
}

</style>
</head>
<body>
	<form id="reportForm" action="${pageContext.request.contextPath}/board/report.do" method="post">
		<div class="container report_container">
			<div class="row">
				<div class="col-12 title p-2">
					<h2 id="title">신고하기</h2>
					<input type="text" id="report_value" name="report_value" value="게시글" hidden>
					<input type="text" id="reported_person" name="reported_person" value="${reported_person}" hidden>
					<input type="text" id="report_writer_id" name="report_writer_id" value="${loginSession.id}" hidden>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<select id="report_type" name="report_type">
						<option value="a" selected>신고 항목을
							선택해주세요</option>
						<option value="도용">사진, 글 도용</option>
						<option value="언어폭력">욕설, 혐오 발언</option>
						<option value="불괘감">불쾌감을 주거나 부적절한 이름 사용</option>
						<option value="기타">기타</option>
					</select>
				</div>
			</div>
			<div class="row">
				<div class="col-12 p-2">
					<textarea id="report_content" name="report_content"></textarea>
				</div>
			</div>
			<div class="row">
				<div class="col-12 d-flex justify-content-center">
					<button type="button" id="reportBtn" class="btn btn-light">신고하기</button>
				</div>
			</div>
		</div>
	</form>
	
	<script>
	$("#reportBtn").on("click", function(){
		if($("#report_type").val() == "a" && $("#report_content").val() == ""){
			alert("신고 항목 선택 후 신고내용을 작성해주세요.");
			return
		}else if($("#report_type").val() == "a"){
			alert("신고 항목을 선택해주세요");
			return
		}else if($("#report_content").val() == ""){
			alert("신고내용을 입력해주세요");
			return
		}else if($("#report_type").val !== "a" && $("#report_content").val() !== ""){
			$("#reportForm").submit();
			alert("신고 완료");
		}
		/* self.close(); */
	})
	</script>
</body>
</html>