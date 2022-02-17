<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#noticeImg {
		width:20px;
		height:20px;
	}
</style>
</head>
<body>
	<div class="position-fixed bottom-0 end-0 p-3" style="z-index: 11">
		<div id="liveToast" class="toast" role="alert" aria-live="assertive"
			aria-atomic="true">
			<div class="toast-header">
				<img id="noticeImg" src="/resources/images/go_logo.png" class="rounded me-2" alt="..."> <strong
					class="me-auto">쪽지 알림</strong>
				<button type="button" class="btn-close" data-bs-dismiss="toast"
					aria-label="Close"></button>
			</div>
			<div class="toast-body">새로운 쪽지가 도착했습니다.!</div>
		</div>
	</div>
	<!-- 쪽지 알람 -->
	<script>
	
	var toastLiveExample = document.getElementById('liveToast');
	

		let loginId = "${loginSession.id}";
		if (loginId != "") {setInterval(function() {
			$.ajax({
				url : "${pageContext.request.contextPath}/note/noteCount.do?to_id="
						+ loginId
					}).done(function(data) {
						if (data == "plus") {
							var toast = new bootstrap.Toast(toastLiveExample);

						    toast.show();
						} else {
							console.log("조회됨.");
						}
					}).fail(function(e) {
						console.log(e);
					});
				}, 3000);
		}
		
	</script>
</body>
</html>