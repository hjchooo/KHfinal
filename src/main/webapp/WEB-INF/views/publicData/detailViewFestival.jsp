<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
<script>
	$(document).ready(function() {
		$("#header").load("/resources/header/header.jsp");
		$("#footer").load("/resources/footer/footer.jsp");
	});
</script>
<title>Go 가자</title>
<title>Insert title here</title>
<style>
* {
	box-sizing: border-box;
}
/* 전체 컨테이너 */
.detailviewContainer {
	width: 800px;
	margin: auto;
}

/* 하단 정보 제목 */
.bottomBox {
	align-items: center;
} 
.detail_info_text_bold {
	font-weight: bold;
}
</style>
</head>
<body>
	<div id="header"></div>

	<div class="detailviewContainer">
		<div class="row mt-5">
			<div class="col-12 d-flex justify-content-center">
				<h1>${dto.title}</h1>
			</div>
			<div class="col-12 d-flex justify-content-center mt-3"
				style="color: gray;">
				<span id="addr1">${dto.addr1}</span>
			</div>
		</div>

		<!-- 상세정보 제목-->
		<div class="row">
			<div class="col-12">
				<p class="list_title"># 상세 정보</p>
			</div>
		</div>
		<!-- 상세정보 제목 끝-->


		<!-- 상세정보 내용-->
		<div class="row margin_top_30">
			<div class="col-12 d-flex justify-content-center">
				<span class="detail_info_text_justify">${dto.content}</span>
			</div>
		</div>
		<!-- 상세정보 내용 끝-->



		<!--상세정보 사진-->
		<div class="row">
			<div class="col-12 d-flex justify-content-center">
				<img class="detail_info_img" src="${dto.firstimage}">
			</div>
		</div>
		<!--상세정보 사진 끝-->



		<!-- 상세정보 주소 시작-->
		<div class="row bottomBox mt-5 mb-5 d-flex justify-content-center">
			<div class="col-8">
				<span class="detail_info_text_bold">• 상세주소</span>&nbsp;&nbsp;&nbsp;${dto.addr1} ${dto.addr2}
			</div>
			<div class="col-4">
				<span class="detail_info_text_bold">• 전화번호</span>&nbsp;&nbsp;&nbsp;${dto.tel}
			</div>
			<div class="col-8">
				<span class="detail_info_text_bold">• 축제시작</span>&nbsp;&nbsp;&nbsp;${dto.eventstartdate}
			</div>
			<div class="col-4">
				<span class="detail_info_text_bold">• 축제마감</span>&nbsp;&nbsp;&nbsp;${dto.eventenddate}
			</div>
		</div>
		<!-- 상세정보 주소 끝-->
	</div>

	<div id="footer"></div>
</body>
</html>