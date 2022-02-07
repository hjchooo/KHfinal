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
<script>
	$(document).ready(function() {
		$("#header").load("/resources/header/header.jsp");
		$("#footer").load("/resources/footer/footer.jsp");
	});
</script>
<title>Insert title here</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap')
	;

a {
	text-decoration: none;
}

*{
	box-sizing: border-box;
}

/* 전체 컨테이너 */
.wrapper {
	width: 800px;
	margin: auto;
}

.titleAddr1 {
	text-align: center;
}

/* 하단 정보 박스 */
.detail_info_text_bold {
	font-weight: bold;
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
	<div id="header"></div>
	
	<div class="wrapper">
	
	<div class="row mt-5">
		<div class="col-12 d-flex justify-content-center">
			<h1>${dto.title}</h1>
		</div>
		<div class="col-12 d-flex justify-content-center mt-2">
			<span style="color:gray;">${dto.addr1}</span>
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
	<div class="row">
		<div class="col-12">
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
	<div class="row d-flex justify-content-center mt-3 mb-5">
		<div class="col-6">
			<span class="detail_info_text_bold">• 상세주소</span> &nbsp;&nbsp;&nbsp;${dto.addr1} ${dto.addr2}
		</div>
		<div class="col-6">
			<span class="detail_info_text_bold">• 좌표</span> &nbsp;&nbsp;&nbsp;X: ${dto.mapx}, Y: ${dto.mapy}
		</div>
	</div>
	<!-- 상세정보 주소 끝-->
	
	<!-- 버튼 박스 -->
	<div class="row mb-3">
		<div class="col-12 d-flex justify-content-startd">
			<button type="button" class="btn" id="btnBack">목록으로</button>
		</div>
	</div>
	</div>
	
	<div id="footer"></div>
	
	<script>
		// 목록으로 버튼 클릭시
		$("#btnBack").on("click", function(){
			location.href = "${pageContext.request.contextPath}/publicdata//areaLeportsDataList.do?currentPage=1";
		})
	</script>
</body>
</html>