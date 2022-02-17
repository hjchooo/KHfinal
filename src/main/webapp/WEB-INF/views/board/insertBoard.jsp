<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"
   integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
   crossorigin="anonymous"></script>
<script
   src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
   integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
   crossorigin="anonymous"></script>

<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
   integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
   crossorigin="anonymous">
<script
   src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
   integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
   crossorigin="anonymous"></script>

<link
   href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css"
   rel="stylesheet">
<script
   src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>



<script>
   $(document).ready(function(){
      $("#header").load("/resources/header/header.jsp");
      $("#footer").load("/resources/footer/footer.jsp");
   });
</script>

<!-- 썸머노트 -->

<title>글쓰기</title>
<!--  <link href="/resources/css/insertBoard.css" rel="stylesheet"/>   -->
<style>
* {
   box-sizing: border-box;
}

a {
   text-decoration: none;
}

a:hover {
	text-decoration: none;
}

/* 전체 컨테이너 */
.wrapper {
   height: 1000px;
}

/* 전체 컨테이너 */
.insertContainer {
   width: 800px;
   margin: auto;
   margin-top: 50px;
}
/* 제목 */
h1 {
   color: #2d0174;
   font-weight: bold;
}

/* 글쓰기 내용 컨테이너 */
.contentContainer {
   margin-top: 120px;
}

/* input 보더 지우기 */
#title {
   border: none;
   border-bottom: 1px solid lightgray;
}

.content {
   border: none;
   border-bottom: 1px solid lightgray;
}
/* intput창 outline 제거 */
.content:focus {
   outline: none;
}

#category {
   border: none;
   border-bottom: 1px solid lightgray;
}

textarea.autosize {
   min-height: 50px;
}

.row {
   margin-bottom: 10px;
}

label {
   font-weight: bold;
}

/* 푸터 */
#footer {
   bottom: 0;
   grid-row-start: 2;
   grid-row-end: 3;
}

/* ========== 내용 입력 영역 ========== */
</style>
</head>

<body>
<div class="wrapper">
   <div id="header"></div>


   <div class="insertContainer">
      <!-- ==================== 게시글 추가 영역 ==================== -->
      <form id="insertForm" method="post"
         action="${pageContext.request.contextPath}/board/insertBoard">


         <div class="row">
            <div class="col-3">
               <label>제목</label>
            </div>
            <div class="col-7">
               <input type="text" class="form-control" id="title" name="title">
            </div>
         </div>
         <div class="row">
            <div class="col-3">
               <label>옵션</label>
            </div>
            <div class="col-9">
               <label id="secretBox" style="margin-left: 20px;"> <input
                  class="form-check-input" type="checkbox" id="secret" name="secret"
                  value="N">비밀글
               </label>
            </div>
         </div>
         <div class="row">
            <div class="col-3">
               <label>비밀번호</label>
            </div>
            <div class="col-7">
               <input type="password" class="content form-control" id="secretPw"
                  name="secretPw" placeholder="비밀번호" readonly>
            </div>
         </div>
         <div class="row">
            <div class="col-3">
               <label>작성자</label>
            </div>
            <div class="col-7">
               <input type="text" class="content form-control" id="writer_id"
                  name="writer_id" value="${loginSession.id}"
                  style="background-color: transparent; border: none; border-bottom: 1px solid lightgray;"
                  readonly> <input type="text" class="content form-control"
                  id="writer_nickname" name="writer_nickname"
                  value="${loginSession.nickname}" hidden>
            </div>
         </div>
         <div class="row">
            <div class="col-3">
               <label>카테고리</label>
            </div>
            <div class="col-9">
               <select id="category" name="category" class="form-select">
                  <option value="자유게시판" selected>자유 게시판</option>
                  <option value="국내여행">국내여행</option>
                  <option value="축제정보">축제정보</option>
                  <option value="레포츠">레포츠</option>
               </select>
            </div>
         </div>

         <!-- 내용 -->
         <!-- 텍스트 Editor 버튼 -->
         <div class="row mt-3">
            <div class="col-12">

               <!-- 썸머노트 -->
               <textarea id="summernote" name="content"></textarea>

            </div>
         </div>

         <!-- ==================== 게시글 버튼 영역 ==================== -->
         <div class="row mt-3">
            <div class="col-6 d-flex justify-content-start">
               <button type="button" id="btnBack" class="btn btn-secondary">돌아가기</button>
            </div>
            <div class="col-6 d-flex justify-content-end">
               <button type="button" id="btnInsert" class="btn btn-primary">확인</button>
            </div>
         </div>
      </form>
   </div>

   <div id="footer" class="mt-5"></div>
</div>
	<script>
	// 썸머노트 이미지 업로드
	 $('#summernote').summernote({
		width : 800,
		minHeight: 500,
		maxHeight: null,
		resize: true,
		focus: true,
		lang: "ko-KR",
		callbacks: {
			onImageUpload : function(files, editor, welEditable){
				for(let file of files){
					console.log(file);
					sendFile(file,this);
					console.log("sendFile 함수로 이동");
				}
			}
		} 
	});
	
	  // 썸머노트 이미지 업로드
		function sendFile(file){
			var data = new FormData();
			data.append("file", file);
			$.ajax({
				data : data,
				type : "POST",
				url : "${pageContext.request.contextPath}/files/SummerNoteImageFile",
				contentType : false,
				processData : false
			}).done(function(data){
				// 경로갑 출력
				$("#summernote").summernote("insertImage", data.path);
			}).fail(function(e){
				console.log(e);
			});				
		}
	  
		// 체크박스 선택시 readonly 해제
		$(function() {
			$("#secret").change(function() {
				let rs = this.checked;
				if (rs) {
					$("#secretPw").prop("readonly", false);
					$("#secret").val("Y");
					$("#secretPw").focus();
				} else if (!rs){
					$("#secret").val("N");
					$("#secretPw").prop("readonly", true);
					$("#secretPw").val("");
				}
			});
		});
		
		// 게시글 등록 버튼 
		$("#btnInsert").on(	"click",function() {
			
			console.log($("#secret").val());
			if($("#secret").val() == "Y") {
				console.log($("#secret").val());
				if($("#secretPw").val() == "") {
					alert("비밀번호를 입력 해주세요.");
					$("#secretPw").focus();
					return;
				}
			} else if ($("#title").val() == "") {
				alert("제목을 입력 해주세요.");
				$($("#title")).focus();
				return;
			} else if ($("#summernote").val() == "") {
				alert("내용을 입력 해주세요.");
				$("#summernote").focus();
				return;
			}
			$("#insertForm").submit();
		});
		
		
		// 뒤로가기 버튼 클릭
		$("#btnBack").on("click", function() {
			location.href = "${pageContext.request.contextPath}/board/toBoard.do?currentPage=1";
		});
	</script>
</body>
</html>