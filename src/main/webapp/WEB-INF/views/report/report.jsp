<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
	integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
	crossorigin="anonymous"></script>
<title>신고하기</title>
<style>
* {
	box-sizing: border-box;
	font-size: 13px;
}

/* 전체 컨테이너 */
.container {
	width: 370px;
	height: 450px;
	margin: auto;
}

/* 제목 */
#repTitle {
	text-align: center;
}

/* 신고 아이콘 */
#reportImg {
	width: 35px;
	height: 35px;
}

/* 내용 */
#report_content {
	height: 150px;
	resize: none;
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
	<div class="container">
		<form id="reportForm"
			action="${pageContext.request.contextPath}/board/report.do"
			method="post">
			<div class="row">
				<div class="col-12">
					<table class="table">
						<thead>
							<tr>
								<th id="repTitle" colspan="2">
									<div class="row">
										<div class="col-5 d-flex justify-content-end">
											<img id="reportImg" src="/resources/images/reportIcon.svg">
										</div>
										<div class="col-7 d-flex justify-content-start"
											style="margin-top: 4px;">
											<h4>신고하기</h4>

										</div>
									</div>
								</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td hidden><input type="text" id="report_value"
									name="report_value" value="게시글"> <input type="text"
									id="reported_person" name="reported_person"
									value="${reported_person}"> <input type="text"
									id="report_writer_id" name="report_writer_id"
									value="${loginSession.id}"></td>
							</tr>
							<tr>
								<td>신고항목</td>
								<td><select id="report_type" name="report_type"
									class="form-select">
										<option value="a" selected>신고 항목을 선택해주세요</option>
										<option value="도용">사진, 글 도용</option>
										<option value="언어폭력">욕설, 혐오 발언</option>
										<option value="불괘감">불쾌감을 주거나 부적절한 이름 사용</option>
										<option value="기타">기타</option>
								</select></td>
							</tr>
							<tr>
								<td>내용</td>
								<td><textarea id="report_content" class="form-control"
										name="report_content"></textarea></td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="row">
										<div class="col-6 d-flex justify-content-end">
											<button type="button" id="reportBtn" class="btn">신고</button>
										</div>
										<div class="col-6 d-flex justify-content-start">
											<button type="button" id="reportCancel" class="btn">취소</button>
										</div>
									</div>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</form>
	</div>
	<script>
		// 신고버튼 클릭시
		$("#reportBtn").on("click", function() {
			if ($("#report_type").val() == "a" && $("#report_content").val() == "") {
				alert("신고 항목 선택 후 신고내용을 작성해주세요.");
				return
			} else if ($("#report_type").val() == "a") {
				alert("신고 항목을 선택해주세요");
				return
			} else if ($("#report_content").val() == "") {
				alert("신고내용을 입력해주세요");
				return
			}
			
			let data = $("#reportForm").serialize(); // 댓글 form 안의 데이터 직렬화
			console.log(data);
			$.ajax({
				type : "post",
				url : "${pageContext.request.contextPath}/board/report.do",
				data : data
			// 신고 하기 성공시	
			}).done(function(rs) {
				if (rs == "success") {
					window.close();
				} else if (rs == "fail") {
					alert("신고 등록에 실패 했습니다.");
				}
			// 신고 하기 실패시	
			}).fail(function(e) {
				console.log(e);
				alert("신고 등록에 실패 했습니다.");
			});
		});

		// 취소버튼 클릭
		$("#reportCancel").on("click", function () {
			window.close();
		})

	</script>

</body>

</html>