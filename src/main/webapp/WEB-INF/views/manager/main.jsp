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
<script>
   $(document).ready(function() {
      $("#footer").load("/resources/footer/footer.jsp");
   });
</script>
<title>관리자 페이지</title>
<style>
* {
	box-sizing: border-box;
}

a {
	text-decoration: none;
	color: gray;
}

a:hover {
	color: black;
}

/* 전체 컨테이너 */
.managerContainer {
	width: 1200px;
	width: 1500px;
	margin: auto;
	width: 1500px;
	margin: auto;
}

/* 오른쪽 영역 */
.managerTbl {
	border-right: 1px solid lightgray;
	height: 700px;
	height: 1000px;
	border-right: 1px solid lightgray;
	height: 1000px;
}

/* 관리자 이미지 */
#managerImgBox {
	width: 150px;
	height: 120px;
	margin-bottom: 20px;
	border-radius: 100%;
}

#managerImg {
	width: 100%;
	height: 100%;
	padding: 0%;
	margin: 0%;
}

/* 전체 라벨 */
label {
	font-weight: bold;
}

/* 테이블 제목 */
h3 {
	color: gray;
}

/* 방문자수 박스 */
.visitorBox {
	
}

/* 테이블 헤더 */
thead {
	background-color: #f7f7f7;
}

/* 여행지 추천 박스 */
.travelTitle {
	border-bottom: 1px solid lightgray;
	padding-bottom: 10px;
}

.travelFooter {
	border-top: 1px solid lightgray;
	padding-top: 5px;
}

/* 전체 버튼 */
.btn {
	background-color: #f9f9f9;
	color: gray
}

.btn:hover {
	background-color: gray;
	color: white;
	background-color: gray;
	color: white;
}

/* 지역 코드 */
#codeInfo {
	font-weight: border;
}

#code {
	font-size: 13px;
	font-weight: lighter;
}

a {
	text-decoration: none;
}

.line_check {
	border: 1px solid black;
}

.font_nanum {
	font-family: 'Nanum Gothic', sans-serif,;
}

.nomal_font {
	font-family: 'Nanum Gothic', sans-serif,;
	text-decoration: none;
	color: rgb(109, 109, 109);
	font-size: 13px;
	font-weight: lighter;
}

.p_center {
	text-align: center;
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: 700;
	font-size: 15px;
}

.p_right {
	text-align: right;
	margin: 0px;
	margin-right: 0px;
	padding: 0px;
	padding-right: 0px;
}

.p_left {
	text-align: left;
	margin: 0px;
	margin-left: 0px;
	padding: 0px;
	margin-left: 0px;
}

.margin_top_100 {
	margin-top: 100px;
}

.margin_top_50 {
	margin-top: 50px;
}

.margin_top_30 {
	margin-top: 30px;
}

.margin_top_20 {
	margin-top: 20px;
}

.margin_top_10 {
	margin-top: 10px;
}

.margin_top_5 {
	margin-top: 5px;
}

.margin_bottom_100 {
	margin-bottom: 100px;
}

.margin_bottom_50 {
	margin-bottom: 50px;
}

.margin_bottom_30 {
	margin-bottom: 30px;
}

.margin_bottom_20 {
	margin-bottom: 20px;
}

.margin_bottom_10 {
	margin-bottom: 10px;
}

.margin_bottom_5 {
	margin-bottom: 5px;
}

.main_logo_size {
	width: 120px;
}

.search_space {
	margin-top: 20px;
	margin-bottom: 10px;
}

.search_icon_img {
	width: 30px;
}

.main_search_bar {
	background-color: rgb(245, 245, 245);
	font-family: 'Nanum Gothic', sans-serif,;
	text-decoration: none;
	color: rgb(109, 109, 109);
	font-size: 13px;
}

.navi_text {
	text-align: center;
	font-family: 'Nanum Gothic', sans-serif,;
	text-decoration: none;
	color: rgb(109, 109, 109);
	font-size: 13px;
}

.navi_category {
	text-align: center;
	font-family: 'Nanum Gothic', sans-serif,;
	text-decoration: none;
	color: rgb(70, 70, 70);
	font-size: 25px;
	font-weight: 700;
}

.socketBox {
	position: relative;
}

#socketAlert {
	position: fixed;
	display: none;
	z-index: 99;
	top: 0px;
	width: 100%;
	height: 50px;
	font-weight: bold;
	align-items: center;
}

.margin {
	margin-top: 20px;
}
</style>
</head>
<div class="managerContainer mt-5">
	<!-- 왼쪽 영역 -->
	<div class="row">
		<div class=" col-3 managerTbl">
			<div class="row d-flex justify-content-center">
				<div class="col-12" id="managerImgBox">
					<a href="https://desk.channel.io/#/signin"><img id="managerImg"
						src="/resources/images/go_logo.png"></a>
				</div>
				<div class="col-12 d-flex justify-content-center">
					<label>관리자 : </label>${loginSession.id}
				</div>

			</div>
			<!-- 현재 접속자, total접속자 -->
			<div class="row mt-5">
				<div class="col-12 visitorBox d-flex justify-content-center">
					<label>오늘 방문자 수 : </label> ${map.todayCount} 명
				</div>
				<div class="col-12 visitorBox d-flex justify-content-center">
					<label>총 방문자 수 : </label> ${map.totalCount} 명
				</div>
			</div>
		</div>


		<!-- 오른쪽 영역 -->

		<div class="col-9">
			<div class="row">
				<!-- 자유게시판 -->
				<div class="col-6">
					<h3 class="d-flex justify-content-center mb-3">자유게시판</h3>

					<table class="table">
						<thead>
							<tr>
								<th>등록한 id</th>
								<th>제목</th>
								<th>카테고리</th>
							</tr>
						</thead>
						<c:choose>
							<c:when test="${not empty list}">
								<tbody>
									<c:forEach var="boarList" items="${list}">
										<tr>
											<td>${boarList.writer_id}</td>
											<td>${boarList.title}</td>
											<td>${boarList.category}</td>
										</tr>
									</c:forEach>
								</tbody>
							</c:when>
							<c:otherwise>
								<tbody>
									<td colspan="3">최근 작성한 게시글이 존재하지 않습니다.</td>
								</tbody>
							</c:otherwise>
						</c:choose>
					</table>

					<!-- 게시판 페이지 네이션 -->
					<div class="row mt-5 mb-5">
						<nav class="col" aria-label="Page navigation example">
							<ul class="pagination justify-content-center">
								<c:if test="${boardNaviMap.get('needPrev') eq true}">
									<li class="page-item"><a class="page-link"
										href="${pageContext.request.contextPath}/manger/main.do?currentPage=${boardNaviMap.get('startNavi')-1}">이전</a></li>
								</c:if>
								<!--startNavi, endNavi  -->
								<c:forEach var="i" begin="${boardNaviMap.get('startNavi')}"
									end="${boardNaviMap.get('endNavi')}">
									<li class="page-item"><a
										href="${pageContext.request.contextPath}/manger/main.do?currentPage=${i}"
										class="page-link">${i}</a></li>
								</c:forEach>
								<c:if test="${boardNaviMap.get('needNext') eq true}">
									<li class="page-item"><a class="page-link"
										href="${pageContext.request.contextPath}/manger/main.do?currentPage=${boardNaviMap.get('endNavi')+1}">다음</a></li>
								</c:if>
							</ul>
						</nav>
					</div>



				</div>

				<!-- 신규 가입자 -->
				<div class="col-6">
					<h3 class="d-flex justify-content-center mb-3">신규 가입자</h3>

					<table class="table">
						<thead>
							<tr>
								<th>id</th>
								<th>nickname</th>
								<th>생성 날짜</th>
							</tr>
						</thead>
						<c:choose>
							<c:when test="${not empty map.mlist}">
								<tbody>
									<c:forEach var="list" items="${map.mlist}" begin="0" end="5">
										<tr>
											<td>${list.id}</td>
											<td>${list.nickname}</td>
											<td>${list.signup_date}</td>
										</tr>
									</c:forEach>
								</tbody>

							</c:when>
							<c:otherwise>
								<tbody>
									<td colspan="3">최근 가입한 회원이 없습니다.</td>
								</tbody>
							</c:otherwise>
						</c:choose>
					</table>

					<div>
						<a
							href="${pageContext.request.contextPath}/manager/member.do?currentPage=1">회원관리</a>
					</div>

					<!-- 게시판 페이지 네이션 -->
					<div class="row">
						<div class="col-12">
							<nav aria-label="Page navigation example">
								<ul class="pagination justify-content-center">
									<li class="page-item disabled"><a class="page-link">이전</a>
									</li>
									<li class="page-item"><a class="page-link" href="#">${i}</a></li>
									<li class="page-item"><a class="page-link" href="#">다음</a>
									</li>
								</ul>
							</nav>
						</div>
					</div>

				</div>
			</div>


			<div class="row mt-5">
				<!-- 신고 -->
				<div class="col-6">
					<h3 class="d-flex justify-content-center mb-3">당일 신고 내용</h3>

					<table class="table">
						<thead>
							<tr>
								<th>신고한 id</th>
								<th>신고된 id</th>
								<th>신고 카테고리</th>
							</tr>
						</thead>
						<c:choose>
							<c:when test="${not empty map.mlist}">
								<tbody>
									<c:forEach var="list" items="${map.mlist}" begin="0" end="5">
										<tr>
											<td>${list.id}</td>
											<td>${list.nickname}</td>
											<td>${list.signup_date}</td>
										</tr>
									</c:forEach>
								</tbody>

							</c:when>
							<c:otherwise>
								<tbody>
									<td colspan="3">신고된 내용이 존재하지 않습니다.</td>
								</tbody>
							</c:otherwise>
						</c:choose>
					</table>

					<div>
						<a
							href="${pageContext.request.contextPath}/manager/report.do?currentPage=1">신고관리</a>
					</div>

					<!-- 게시판 페이지 네이션 -->
					<div class="row mt-5 mb-5">
						<nav class="col" aria-label="Page navigation example">
							<ul class="pagination justify-content-center">
								<c:if test="${naviMap.get('needPrev') eq true}">
									<li class="page-item"><a class="page-link"
										href="${pageContext.request.contextPath}/manger/main.do?currentPage=${naviMap.get('startNavi')-1}">이전</a></li>
								</c:if>
								<!--startNavi, endNavi  -->
								<c:forEach var="i" begin="${naviMap.get('startNavi')}"
									end="${naviMap.get('endNavi')}">
									<li class="page-item"><a
										href="${pageContext.request.contextPath}/manger/main.do?currentPage=${i}"
										class="page-link">${i}</a></li>
								</c:forEach>
								<c:if test="${naviMap.get('needNext') eq true}">
									<li class="page-item"><a class="page-link"
										href="${pageContext.request.contextPath}/manger/main.do?currentPage=${naviMap.get('endNavi')+1}">다음</a></li>
								</c:if>
							</ul>
						</nav>
					</div>

				</div>

				<!-- 관광지 추천 현황 -->
				<div class="col-6" id="trip">
					<h3 class="travelTitle d-flex justify-content-center mb-4">관광지
						추천 현황</h3>
					<div class="row mb-3">
						<div class="col-4">
							<div class="row" style="border-right: 1px solid lightgray;">
								<div class="col-12 d-flex justify-content-center">
									<label>관광지</label>
								</div>
								<div class="col-12 d-flex justify-content-center">${map.publicdatalist[0]}개</div>
							</div>
						</div>
						<div class="col-4">
							<div class="row" style="border-right: 1px solid lightgray;">
								<div class="col-12 d-flex justify-content-center">
									<label>축제</label>
								</div>
								<div class="col-12 d-flex justify-content-center">${map.publicdatalist[1]}개</div>
							</div>
						</div>
						<div class="col-4">
							<div class="row">
								<div class="col-12 d-flex justify-content-center">
									<label>레포츠</label>
								</div>
								<div class="col-12 d-flex justify-content-center">${map.publicdatalist[2]}개</div>
							</div>
						</div>
						<div class="col-12 travelFooter d-flex justify-content-end mt-4">
							<h4>
								total :
								<c:out
									value="${map.publicdatalist[0] + map.publicdatalist[1] + map.publicdatalist[2]}" />
								개
							</h4>
						</div>
					</div>
					<div class="container">
						<div class="row">
							<div class="col-12">
								<div id="codeInfo">※ 지역코드</div>
								<div id="code">1.서울 31.경기 32.강원 33.충북 34충남. 35.경북 36.경남
									37.전북 38.전남 39.제주</div>
							</div>
						</div>
						<!-- 관광지 -->
						<div class="row margin_top_10">
							<div class="col-12 d-flex justify-content-center">
								<span>관광지 관리</span>
							</div>
						</div>
						<div class="row margin_top_10">
							<div class="col-6">
								<input type="text" class="form-control" id="areaCode1"
									name="areaCode1" placeholder="지역코드">
							</div>
							<div class="col-6">
								<input type="text" class="form-control" id="numOfRows1"
									name="numOfRows1" placeholder="데이터 수">
							</div>
						</div>
						<div class="row arter-boxBtn justify-content-center margin_top_10">
							<div class="col-12 d-flex justify-content-evenly">
								<button class="btn" type="button" id="touristBtn">관광지 삽입</button>
								<button class="btn" type="button" id="touristDeleteBtn">관광지 삭제</button>
							</div>
						</div>
						<!-- 축제 -->
						<div class="row margin_top_10">
							<div class="col-12 d-flex justify-content-center">
								<span>축제 관리</span>
							</div>
						</div>
						<div class="row margin_top_10">
							<div class="col-6">
								<input type="text" class="form-control" id="areaCode2"
									name="areaCode2" placeholder="지역코드">
							</div>
							<div class="col-6">
								<input type="text" class="form-control" id="numOfRows2"
									name="numOfRows2" placeholder="데이터 수">
							</div>
						</div>
						<div class="row arter-boxBtn justify-content-center margin_top_10">
							<div class="col-12 d-flex justify-content-evenly">
								<button class="btn" type="button" id="festivalBtn">축제 삽입</button>
								<button class="btn" type="button" id="festivalDeleteBtn">축제 삭제</button>
							</div>
						</div>
						<!-- 레포츠 -->
						<div class="row margin_top_10">
							<div class="col-12 d-flex justify-content-center">
								<span>레포츠 관리</span>
							</div>
						</div>
						<div class="row margin_top_10">
							<div class="col-6">
								<input type="text" class="form-control" id="areaCode"
									name="areaCode" placeholder="지역코드">
							</div>
							<div class="col-6">
								<input type="text" class="form-control" id="numOfRows"
									name="numOfRows" placeholder="데이터 수">
							</div>
						</div>
						<div class="row arter-boxBtn justify-content-center margin_top_10">
							<div class="col-12 d-flex justify-content-evenly">
								<button class="btn" type="button" id="leportsBtn">레포츠 삽입</button>
								<button class="btn" type="button" id="leportsDeleteBtn">레포츠 삭제</button>
							</div>
						</div>
					</div>



				</div>
			</div>
		</div>

	</div>

	<!-- 버튼영역 -->
	<div class="row mb-5">
		<div class="col-12 btncls d-flex justify-content-end">
			<button type="button" class="btn" id="btnExit">나가기</button>
		</div>
	</div>

</div>
<div id="footer"></div>
<script>
      // 나가기 버튼 클릭
      $("#btnExit").on("click", function() {
         location.href = "${pageContext.request.contextPath}/";
      })

      // 관광지 삽입 버튼
      $("#touristBtn").on(
            "click",
            function() {
               let numOfRows1 = $("#numOfRows1").val()
               let areaCode1 = $("#areaCode1").val()
               console.log(numOfRows1);
               console.log(areaCode1);
               let regexNumOfRows1 = /[0-9]/g;
               let regexAreaCode1 = /^1$|^31$|^32$|^33$|^34$|^35$|^36$|^37$|^38$|^39$/;
               
               if($("#areaCode1").val() == ""){
                  alert("지역코드를 입력해주세요.");
                  $("#areaCode1").focus();
                  return
               }else if(!regexAreaCode1.test($("#areaCode1").val())){
                  alert("지역코드 양식을 확인하세요.");
                  $("#areaCode1").val("");
                  $("#areaCode1").focus();
                  return
               }else if($("#numOfRows1").val() == ""){
                  alert("저장할 데이터 수를 입력하세요.");
                  $("#numOfRows1").focus();
                  return
               }else if(!regexNumOfRows1.test($("#numOfRows1").val())){
                  alert("숫자만 입력해주세요.");
                  $("#numOfRows1").val("");
                  $("#numOfRows1").focus();
                  return
               }else if($("#numOfRows1").val() < 0 || $("#numOfRows1").val() > 100){
                  alert("데이터 수 양식을 확인해주세요.");
                  $("#numOfRows1").val("");
                  $("#numOfRows1").focus();
                  return
               }
                location.href = "${pageContext.request.contextPath}/publicdata/saveData.do?numOfRows1="+numOfRows1+"&areaCode1="+areaCode1;
            })
      
      // 관광지 삭제 버튼
      $("#touristDeleteBtn").on("click", function(){
         if(confirm("정말 삭제하시겠습니까?")){
            $(location).attr("href", "${pageContext.request.contextPath}/publicdata/deleteTourist.do")
         }
      })
      
      // 축제 삽입 버튼
      $("#festivalBtn").on("click", function(){
         let numOfRows2 = $("#numOfRows2").val()
         let areaCode2 = $("#areaCode2").val()
         console.log(numOfRows2);
         console.log(areaCode2);
         let regexNumOfRows2 = /[0-9]/g;
         let regexAreaCode2 = /^1$|^31$|^32$|^33$|^34$|^35$|^36$|^37$|^38$|^39$/;
         
         if($("#areaCode2").val() == ""){
            alert("지역코드를 입력해주세요.");
            $("#areaCode2").focus();
            return
         }else if(!regexAreaCode.test($("#areaCode2").val())){
            alert("지역코드 양식을 확인하세요.");
            $("#areaCode2").val("");
            $("#areaCode2").focus();
            return
         }else if($("#numOfRows2").val() == ""){
            alert("저장할 데이터 수를 입력하세요.");
            $("#numOfRows2").focus();
            return
         }else if(!regexNumOfRows.test($("#numOfRows2").val())){
            alert("숫자만 입력해주세요.");
            $("#numOfRows2").val("");
            $("#numOfRows2").focus();
            return
         }else if($("#numOfRows2").val() < 0 || $("#numOfRows2").val() > 100){
            alert("데이터 수 양식을 확인해주세요.");
            $("#numOfRows2").val("");
            $("#numOfRows2").focus();
            return
         }
          location.href = "${pageContext.request.contextPath}/publicdata/saveFestival.do?numOfRows="+numOfRows+"&areaCode="+areaCode;
      })
      
      // 축제 삭제 버튼
      $("#festivalDeleteBtn").on("click", function(){
         if(confirm("정말 삭제하시겠습니까?")){
            $(location).attr("href", "${pageContext.request.contextPath}/publicdata/deleteFestival.do")
         }
      })
      
      // 레포츠 삽입 버튼
      $("#leportsBtn").on("click", function(){
         let numOfRows = $("#numOfRows").val()
         let areaCode = $("#areaCode").val()
         console.log(numOfRows);
         console.log(areaCode);
         let regexNumOfRows = /[0-9]/g;
         let regexAreaCode = /^1$|^31$|^32$|^33$|^34$|^35$|^36$|^37$|^38$|^39$/;
         
         if($("#areaCode").val() == ""){
            alert("지역코드를 입력해주세요.");
            $("#areaCode").focus();
            return
         }else if(!regexAreaCode.test($("#areaCode").val())){
            alert("지역코드 양식을 확인하세요.");
            $("#areaCode").val("");
            $("#areaCode").focus();
            return
         }else if($("#numOfRows").val() == ""){
            alert("저장할 데이터 수를 입력하세요.");
            $("#numOfRows").focus();
            return
         }else if(!regexNumOfRows.test($("#numOfRows").val())){
            alert("숫자만 입력해주세요.");
            $("#numOfRows").val("");
            $("#numOfRows").focus();
            return
         }else if($("#numOfRows").val() < 0 || $("#numOfRows").val() > 100){
            alert("데이터 수 양식을 확인해주세요.");
            $("#numOfRows").val("");
            $("#numOfRows").focus();
            return
         }
          location.href = "${pageContext.request.contextPath}/publicdata/saveLeports.do?numOfRows="+numOfRows+"&areaCode="+areaCode;
      })
      
      // 레포츠 삭제 버튼
      $("#leportsDeleteBtn").on("click", function(){
         if(confirm("정말 삭제하시겠습니까?")){
            $(location).attr("href", "${pageContext.request.contextPath}/publicdata/deleteLeports.do")
         }
      })
   </script>
</body>

</html>