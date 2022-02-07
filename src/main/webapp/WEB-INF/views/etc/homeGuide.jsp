<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
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
<title>홈페이지 소개 페이지</title>
<style>
* {
	/*box-sizing: inherit;*/
}

/* 지도 css */
html, body {
	width: 100%;
	margin: 0;
	padding: 0;
}

.map_wrap {
	position: relative;
	overflow: hidden;
	width: 100%;
	height: 350px;
}

.radius_border {
	border: 1px solid #919191;
	border-radius: 5px;
}

.custom_typecontrol {
	position: absolute;
	top: 10px;
	right: 10px;
	overflow: hidden;
	width: 130px;
	height: 30px;
	margin: 0;
	padding: 0;
	z-index: 1;
	font-size: 12px;
	font-family: 'Malgun Gothic', '맑은 고딕', sans-serif;
}

.custom_typecontrol span {
	display: block;
	width: 65px;
	height: 30px;
	float: left;
	text-align: center;
	line-height: 30px;
	cursor: pointer;
}

.custom_typecontrol .btn {
	background: #fff;
	background: linear-gradient(#fff, #e6e6e6);
}

.custom_typecontrol .btn:hover {
	background: #f5f5f5;
	background: linear-gradient(#f5f5f5, #e3e3e3);
}

.custom_typecontrol .btn:active {
	background: #e6e6e6;
	background: linear-gradient(#e6e6e6, #fff);
}

.custom_typecontrol .selected_btn {
	color: #fff;
	background: #425470;
	background: linear-gradient(#425470, #5b6d8a);
}

.custom_typecontrol .selected_btn:hover {
	color: #fff;
}

.custom_zoomcontrol {
	position: absolute;
	top: 50px;
	right: 10px;
	width: 36px;
	height: 80px;
	overflow: hidden;
	z-index: 1;
	background-color: #f5f5f5;
}

.custom_zoomcontrol span {
	display: block;
	width: 36px;
	height: 40px;
	text-align: center;
	cursor: pointer;
}

.custom_zoomcontrol span img {
	width: 15px;
	height: 15px;
	padding: 12px 0;
	border: none;
}

.custom_zoomcontrol span:first-child {
	border-bottom: 1px solid #bfbfbf;
}

/* 전체 컨테이너 */
.homePageContainer {
	width: 1000px;
	margin: auto;
	margin-top: 30px;
}

/* 관련컨텐츠 박스 */
#leftBox {
	background-color: #f9f9f9;
	border-radius: 5px;
	padding: 20px;
}

/* 전체 label */
label {
	font-weight: bold;
}

/* ul 태그 */
ul {
	font-size: 13px;
	padding-left: 10px;
	color: gray;
}

ul:hover {
	background-color: lightgray;
	color: white;
}

/* 앵커 태그 */
a:hover {
	cursor: pointer;
	border-radius: 10px;
}

/* 교통수단 이미지 */
.imgTrafic {
	width: 20px;
	height: 20px;
	margin-bottom: 3px;
}
</style>
<script>
	$(document).ready(function() {
		$("#header").load("/resources/header/header.jsp");
		$("#footer").load("/resources/footer/footer.jsp");
	});
</script>
</head>

<body>
	<div id="header" class="mb-5"></div>

	<div class="homePageContainer mt-5">
		<div class="row">
			<div class="col-9">
				<div class="row">

					<div class="col-12">
						<h5 style="font-weight: bold;">약도/연락처</h5>
					</div>
					<div class="col-12">
						<p style="font-weight: bold;">본사</p>
					</div>
					<div class="col-12">
						<!-- 지도API -->
						<div class="map_wrap">
							<div id="map" style="width: 100%; height: 350px;"></div>
							<p>
								<em>마커를 드래그 해주세요!</em>
							</p>

							<div id="map"
								style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>
							<!-- 지도타입 컨트롤 div 입니다 -->
							<div class="custom_typecontrol radius_border">
								<span id="btnRoadmap" class="selected_btn"
									onclick="setMapType('roadmap')">지도</span> <span id="btnSkyview"
									class="btnSky" onclick="setMapType('skyview')">스카이뷰</span>
							</div>
							<!-- 지도 확대, 축소 컨트롤 div 입니다 -->
							<div class="custom_zoomcontrol radius_border">
								<span onclick="zoomIn()"><img
									src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_plus.png"
									alt="확대"></span> <span onclick="zoomOut()"><img
									src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_minus.png"
									alt="축소"></span>
							</div>
						</div>
					</div>

					<div class="col-12 mt-2">
						<label>[주소]</label> <span style="font-size: 14px;">서울특별시
							강남구 테헤란로 14길 6 남도빌딩 2F, 3F, 4F, 5F, 6F</span>
					</div>
					<div class="col-12 mt-2">
						<label>[대표전화]</label> <span style="font-size: 14px;">T:
							1544-9970 / F: 02-562-2378</span>
					</div>

					<div class="col-12 mt-5">
						<label>찾아오시는길</label>
					</div>
					<div class="col-12 mt-3" style="font-size: 14px;">
						<label>[대중교통 안내]</label>
						<table class="table">
							<tr>
								<td>버스</td>
								<td><img class="imgTrafic"
									src="/resources/images/bus_blue.png"> 146 / 740 / 341 /
									360</td>
								<td><img class="imgTrafic"
									src="/resources/images/bus_red.png"> 1100 / 1700 / 2000 /
									7007 / 8001</td>
							</tr>
							<tr>
								<td>지하철</td>
								<td><img class="imgTrafic"
									src="/resources/images/metro.png"> 지하철 2호선 역삼역 3번출구 100m</td>
								<td></td>
							</tr>
						</table>
					</div>

				</div>
			</div>

			<div class="col-2 mb-5" id="leftBox">
				<label style="margin-bottom: 10px;"><img
					src="/resources/images/info-circle.svg" style="margin-bottom: 3px;">
					관련콘텐츠</label> <a id="first" onclick=""><ul>본사
					</ul></a> <a id="second" onclick="second();"><ul>종로지원
					</ul></a> <a id="third" onclick=""><ul>당산지원
					</ul></a>
			</div>
		</div>

	</div>

	<div id="footer" class="mt-5"></div>



	<!-- API 키 -->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8af2e1ee4a89fac35295d21034f455f4"></script>

	<script>
		// ======================================== 마커 영역 ========================================
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(37.499180240775516,
					127.03291972680066), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		// 마커가 표시될 위치입니다 
		var markerPosition = new kakao.maps.LatLng(37.499180240775516,
				127.03291972680066);

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
			position : markerPosition
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);

		// 마커가 드래그 가능하도록 설정합니다 
		marker.setDraggable(true);

		// ======================================== 지도 영역 ========================================

		// 지도타입 컨트롤의 지도 또는 스카이뷰 버튼을 클릭하면 호출되어 지도타입을 바꾸는 함수입니다
		function setMapType(maptype) {
			var roadmapControl = document.getElementById('btnRoadmap');
			var skyviewControl = document.getElementById('btnSkyview');
			if (maptype === 'roadmap') {
				map.setMapTypeId(kakao.maps.MapTypeId.ROADMAP);
				roadmapControl.className = 'selected_btn';
				skyviewControl.className = 'btnSky';
			} else {
				map.setMapTypeId(kakao.maps.MapTypeId.HYBRID);
				skyviewControl.className = 'selected_btn';
				roadmapControl.className = 'btnSky';
			}
		}

		// 지도 확대, 축소 컨트롤에서 확대 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
		function zoomIn() {
			map.setLevel(map.getLevel() - 1);
		}

		// 지도 확대, 축소 컨트롤에서 축소 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
		function zoomOut() {
			map.setLevel(map.getLevel() + 1);
		}

		// ======================================== 관련콘텐츠 영역 ========================================
		function second() {
			// 마커가 표시될 위치입니다 
			var markerPosition = new kakao.maps.LatLng(37.56806125986083,
					126.98314334214278);
		}
	</script>
</body>

</html>