<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>

    <title>Go 가자</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap');



        a {
            text-decoration: none;
        }

        .line_check {
            border: 1px solid black;
        }

        .font_nanum {
            font-family: 'Nanum Gothic', sans-serif, ;
        }

        .nomal_font {
            font-family: 'Nanum Gothic', sans-serif, ;
            text-decoration: none;
            color: rgb(109, 109, 109);
            font-size: 13px;
        }

        .p_center {
            text-align: center;
            font-family: 'Nanum Gothic', sans-serif, ;
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
        .padding-bottom_30{
            padding-bottom: 30px;
        }

        .main_logo_size {
            width: 120px;
        }

        .search_space {
            margin-top: 20px;
            margin-bottom: 10px;
        }




        .foot_container {
            background-color: rgb(100, 100, 100);
            padding-top: 50px;

        }

        .foot_logo_img {
            width: 50px;
        }

        .foot_text {
            color: rgb(226, 226, 226);
            font-family: 'Nanum Gothic', sans-serif, ;
            font-size: 12px;
        }
    </style>

<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript">   
$(document).ready( function() {

$("#headers").load("header.html");  // 원하는 파일 경로를 삽입하면 된다
$("#footers").load("footer.html");  // 추가 인클루드를 원할 경우 이런식으로 추가하면 된다

});
</script>


</head>

<body>

    <!--푸터 css에는 foot으로 표기-->
    <footer>
        <div class="container-fluid foot_container">
            <div class="row "></div>
            <div class="row padding-bottom_30">
                <div class="col-2"></div>
                <div class="col-1">
                    <p class="p_right"> <img class="foot_logo_img" src="/resources/images/go_logo.png"></p>
                </div>

                <div class="col-7">
                    <P class="foot_text">(주)가자 | 사업자등록번호 : 736-81-01238 | 팀장 : 권혁진 | 팀원 : 장대붕 홍진표 송우석 조현재 김덕규 </P>

                    <p class="foot_text">주소 : 서울시 송파구 마천로 30, 상가에이동 127, 128호(방이동) | 대표번호 : 02-3472-4177 | Fax :
                        02-585-3083 </p>

                    <p class="foot_text">Copyright @ 2021 (주)가자</p>
                </div>
                <div class="col-2"></div>
            </div>
        </div>

    </footer>









</body>

</html>