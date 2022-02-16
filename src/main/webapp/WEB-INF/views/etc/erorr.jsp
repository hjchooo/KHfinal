<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

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
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
	integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<title>에러페이지</title>

<style>
* {
	box-sizing: border-box;
	font-size: 15px;
}

.container {
	width: 100%;
	height: 100%;
	margin: auto;
}

#erorrImg {
	width: 300px;
	height: 300px;
}

.body {
	margin-left: 480px;
}
</style>
</head>

<body>
	<div class="container">
		<div class="row mt-5">
			<div class="col-12 d-flex justify-content-center">
				<img id="erorrImg" src="/resources/images/error-48260.png">
			</div>
		</div>
		<div class="row body">
			<div class="col-12 d-flex justify-content-start mt-5">사이트에 연결할
				수 없음</div>
			<div class="col-12 d-flex justify-content-start mt-2">
				www.go.co.kr에 오타가 있는지 확인 하세요.</div>
			<div class="col-12 d-flex justify-content-start mt-2">철자가 올바르다면
				Window 네트워크 진단을 실행해 보세요.</div>
			<div class="col-12 d-flex justify-content-start mt-2">
				DNS_PROBE_FINISHED_NXDOMAIN</div>
			<div class="col-12 mt-3">
				<button id="btnHome" class="btn btn-primary">홈으로</button>
			</div>
		</div>
	</div>

	<script>
    // 홈으로 버튼 클릭시
        $("#btnHome").on("click", function(){
            location.href = "${pageContext.request.contextPath}/";
        })

    </script>
</body>

</html>