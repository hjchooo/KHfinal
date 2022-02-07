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


<<<<<<< HEAD
	<!-- 상세정보 내용-->
	<div class="row">
		<div class="col-12">
			<span class="detail_info_text_justify">${dto.content}</span>
		</div>
	</div>
	<!-- 상세정보 내용 끝-->
=======
			<div class="col-2"></div>
			<div class="col-8">
			
			<div class="row margin_bottom_50 titleAddr10">
				<div class="col">
					<span>한국관광공사에서 제공하는 공공데이터를 활용하여 ${dto.title} 정보를 소개합니다.</span><br>
					<span>
						<a href="${pageContext.request.contextPath}/">Home</a>
						&nbsp;》&nbsp;<a href="${pageContext.request.contextPath}/publicdata/toLeportsList.do?currentPage=1">레포츠</a>
						 &nbsp;》&nbsp;${dto.title}
					</span>
				</div>
			</div>

			<div class="row margin_bottom_50 titleAddr1">
				<div class="col">
					<h1>${dto.title}</h1>
					<span id="addr1">${dto.addr1}</span>
				</div>
			</div>

				<!-- 상세정보 제목-->
				<div class="row">
					<div class="col">
						<p class="list_title"># 상세 정보</p>
					</div>
				</div>
				<!-- 상세정보 제목 끝-->
>>>>>>> ea0403fde31d67f0458d46436b968824e1e3b901



	<!--상세정보 사진-->
	<div class="row">
		<div class="col-12 d-flex justify-content-center">
			<img class="detail_info_img" src="${dto.firstimage}">
		</div>
	</div>
	<!--상세정보 사진 끝-->



<<<<<<< HEAD
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
=======
				<!-- 상세정보 내용-->
				<div class="row margin_top_30">

					<div class="col">
						<span class="detail_info_text_justify">${dto.content}</span>
					</div>

				</div>
				<!-- 상세정보 내용 끝-->



				<!--상세정보 사진-->
				<div class="row margin_top_20">

					<div class="col">
						<img class="detail_info_img" src="${dto.firstimage}">
					</div>

				</div>
				<!--상세정보 사진 끝-->



				<!-- 상세정보 주소 시작-->
				<div class="row margin_top_20">

					<div class="col-6">
						<span class="detail_info_text_bold">• 상세주소</span> &nbsp;&nbsp;&nbsp;
						<!--실제 주소 들어가는 부분-->
						<span class="detail_info_text">${dto.addr1} ${dto.addr2}</span>
					</div>
					<div class="col-6">
						<span class="detail_info_text_bold">• 좌표</span> &nbsp;&nbsp;&nbsp;
						<span class="detail_info_text">X: ${dto.mapx}, Y: ${dto.mapy}</span>
					</div>

				</div>
				<!-- 상세정보 주소 끝-->
				
				
				<div class="row margin_top_20">
					<div class="col-6">
						<div id="map" style="width:850px;height:489.61px;"></div>
					</div>
				</div>


				<!--풋터와의 간격-->
				<div class="row margin_top_100"></div>

			</div>
			<div class="col-2"></div>











			<footer>
				<div class="container-fluid foot_container margin_top_100">
					<div class="row "></div>
					<div class="row">
						<div class="col-2">
							<p class="p_right">
								<img class="foot_logo_img"
									src="/resources/images/go_logo_gray.png">
							</p>
						</div>

						<div class="col-10">
							<P class="foot_text">(주)가자 | 사업자등록번호 : 736-81-01238 | 팀장 :
								권혁진 | 팀원 : 장대붕 홍진표 송우석 조현재 김덕규</P>

							<p class="foot_text">주소 : 서울시 송파구 마천로 30, 상가에이동 127,
								128호(방이동) | 대표번호 : 02-3472-4177 | Fax : 02-585-3083</p>

							<p class="foot_text">Copyright @ 2021 (주)가자</p>
						</div>
					</div>
				</div>
			</footer>
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d5bd9b524492db054c1f20a692496b8e"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(${dto.mapy}, ${dto.mapx}),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
		
		// 마커가 표시될 위치입니다 
		var markerPosition  = new kakao.maps.LatLng(${dto.mapy}, ${dto.mapx}); 

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
		
		// 마커를 클릭했을 때 마커 위에 표시할 인포윈도우를 생성합니다
		var iwContent = '<div style="padding:5px;">${dto.title} : ${dto.addr1}</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
		    iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다

		// 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
		    content : iwContent,
		    removable : iwRemoveable
		});

		// 마커에 클릭이벤트를 등록합니다
		kakao.maps.event.addListener(marker, 'click', function() {
		      // 마커 위에 인포윈도우를 표시합니다
		      infowindow.open(map, marker);  
		}); 
		
	</script>		
>>>>>>> ea0403fde31d67f0458d46436b968824e1e3b901
</body>
</html>