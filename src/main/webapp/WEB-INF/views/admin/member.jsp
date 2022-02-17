<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<script>
	$(document).ready(function() {
		$("#header").load("/resources/header/header.jsp");
		$("#footer").load("/resources/footer/footer.jsp");
	});
</script>
<title>Insert title here</title>
<style>
* {
	border-box: box-sizing;
}

/* 전체 컨테이너 */
.memberContainer {
	width: 800px;
	height: 610px;
	margin: auto;
}

/* 회원관리 이미지 */
#personImg {
	width: 50px;
	height: 50px;
}

/* 회원관리 폰트 */
.titleFont {
	font-size: 30px;
}
</style>
</head>
<body>
	<div id="header"></div>
	<div class="memberContainer">
		<div class="row mt-5 mb-3">
			<div class="col-1">
				<img id="personImg" src="/resources/images/person-lines-fill.svg">
			</div>	
			<div class="col-11">
					<span class="titleFont">회원관리</span>
			</div>
		</div>
		
				

		<div class="row memberTbl">
			<table class="table">
				<thead>
					<tr>
						<th>아이디</th>
						<th>닉네임</th>
						<th>가입날짜</th>
					<tr>
				</thead>
				<tbody class="tb">

				</tbody>
			</table>
		</div>


		<!-- 페이징 -->
		<div class="row">
			<div class="col-12 d-flex justify-content-center">
				<nav aria-label="Page navigation example">
					<ul class="pagination">
						<c:if test="${naviMap.get('needPrev') eq true}">
							<li class="page-item"><a class="page-link"
								href="${pageContext.request.contextPath}/admin/member.do?currentPage=${naviMap.get('startNavi')-1}">이전</a></li>
						</c:if>
						<c:forEach var="i" begin="${naviMap.get('startNavi')}"
							end="${naviMap.get('endNavi')}">
							<li class="page-item"><a class="page-link"
								href="${pageContext.request.contextPath}/admin/member.do?currentPage=${i}">${i}</a></li>
						</c:forEach>
						<c:if test="${naviMap.get('needNext') eq true}">
							<li class="page-item"><a class="page-link"
								href="${pageContext.request.contextPath}/admin/member.do?currentPage=${naviMap.get('endNavi')+1}">다음</a></li>
						</c:if>
					</ul>
				</nav>
			</div>
		</div>
	</div>

	<div id="footer"></div>
	<script>
		$(document).ready(function(){
			member();
		});
		
		function member(){
			let currentPage = ${currentPage};
			$.ajax({
				url : "${pageContext.request.contextPath}/admin/toMember.do?currentPage=" + currentPage
				,type : "get"
			}).done(function(data){
				console.log(data);
				let memberList = data;
				for(member of memberList){
					let memberBox = "<tr>" + "<td>" + member.id + "</td>"
					+ "<td>" + member.nickname + "</td>"
					+ "<td>" + member.signup_date + "</td>"
					+ "<td><button type='button' class='btn btn-danger btn-sm' value='"+ member.id + "'>삭제</button></td>"
					+ "</tr>"
				
				$(".tb").append(memberBox);
				}
				
			}).fail(function(e){
				console.log(e);
			});
		}
		
		$(document).on("click", ".btn", function(e){
			let id = $(e.target).val();
			let rs = confirm("정말 삭제하시겠습니까?");
			if(rs){
				$.ajax({
					url : "${pageContext.request.contextPath}/admin/memberDelete.do?id=" + id 
					,method : "get"
				}).done(function(data){
					if(data == "success"){
						alert("삭제가 완료되었습니다.");
						location.href="${pageContext.request.contextPath}/admin/member.do?currentPage=1";
					}else{
						alert("삭제에 실패하였습니다.");
						location.href="${pageContext.request.contextPath}/admin/member.do?currentPage=1";	
					}
				}).fail(function(e){
					console.log(e);
				});
			}
		});
	</script>
</body>
</html>