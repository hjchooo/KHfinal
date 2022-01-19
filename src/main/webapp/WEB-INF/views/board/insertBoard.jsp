<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<script src="/resources/js/summernote/summernote-lite.js"></script>
<script src="/resources/js/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet"
	href="/resources/css/summernote/summernote-lite.css">
<title>글쓰기</title>
<!--  <link href="/resources/css/insertBoard.css" rel="stylesheet"/>   -->
<style>
* {
	box-sizing: border-box;
}

/* 전체 컨테이너 */
.insertContainer {
	width: 800px;
	margin: auto;
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

/* ========== 내용 입력 영역 ========== */
</style>
</head>

<body>
	<div class="insertContainer">
		<div class="row">
			<div class="col-12 d-flex justify-content-center">
				<h1>여행 커뮤니티</h1>
			</div>
			<div class="col-12 d-flex justify-content-center mt-2"
				style="color: #2d0174">당신의 여행기를 들려주세요</div>
		</div>

		<!-- ==================== 게시글 추가 영역 ==================== -->
		<form id="insertForm" method="post"
			action="${pageContext.request.contextPath}/board/insertBoard"
			enctype="multipart/form-data">
			<div class="row contentContainer">
				<!-- 제목 -->
				<div class="row">
					<div class="col-2">
						<label>제목</label>
					</div>
					<div class="col-10">
						<div class="row">
							<div class="col-12">
								<input type="text" class="form-control" id="title" name="title">
							</div>
						</div>
					</div>
				</div>
				<!-- 옵션 -->
				<div class="row mt-3">
					<div class="col-2">
						<label>옵션</label>
					</div>
					<div class="col-10">
						<label id="secretBox"> <input class="form-check-input"
							type="checkbox" id="secret" name="secret" value=""> <span>비밀글</span>
						</label>
					</div>
				</div>
				<!-- 작성자 -->
				<div class="row mt-3">
					<div class="col-2">
						<label>작성자</label>
					</div>
					<div class="col-5">
						<input type="text" class="content form-control"
							id="writer_nickname" name="writer_nickname" value="abc123"
							style="background-color: transparent;" readonly> <input
							type="text" class="content form-control" id="writer_id"
							name="writer_id" value="abc123" hidden>
					</div>
				</div>
				<!-- 비밀번호 -->
				<div class="row mt-3">
					<div class="col-2">
						<label>비밀번호</label>
					</div>
					<div class="col-5">
						<input type="password" class="content form-control" id="secretPw"
							name="secretPw" value="" readonly>
					</div>
				</div>
				<!-- 카테고리 -->
				<div class="row mt-3">
					<div class="col-2">
						<label>카테고리</label>
					</div>
					<div class="col-5">
						<select id="category" name="category" class="form-select">
							<option value="자유게시판" selected>자유 게시판</option>
							<option value="국내여행">국내여행</option>
							<option value="축제정보">축제정보</option>
							<option value="공연/전시회">공연/전시회</option>
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

	<script>
	/*
		$('#summernote').summernote({
			height : 300, // 에디터 높이
			minHeight : null, // 최소 높이
			maxHeight : null, // 최대 높이
			focus : true, // 에디터 로딩후 포커스를 맞출지 여부
			lang : "ko-KR", // 한글 설정
			placeholder : '최대 2048자까지 쓸 수 있습니다', //placeholder 설정
			callbacks : { //여기 부분이 이미지를 첨부하는 부분
				onImageUpload : function(files) {
					uploadSummernoteImageFile(files[0], this);},
				onPaste : function(e) {
					var clipboardData = e.originalEvent.clipboardData;
					if (clipboardData && clipboardData.items
							&& clipboardData.items.length) {
						var item = clipboardData.items[0];
						if (item.kind === 'file'
								&& item.type.indexOf('image/') !== -1) {
							e.preventDefault();
						}
					}
				}
			}
		});
		*/
		// 썸머노트 이미지 업로드
		 $('#summernote').summernote({
				height: 300,
				width : 1000,
				minHeight: null,
				maxHeight: null,
				focus: true,
				lang: "ko-KR",
				callbacks: {
					onImageUpload : function(files){
						for(let file of files){
							sendFile(file);
						}
					}
				} 
			});
			
		// 썸머노트 이미지 업로드
			function sendFile(file){
				var data = new FormData();
				data.append("file", file);
				console.log(file);
				$.ajax({
					data : data,
					type : "POST",
					url : "${pageContext.request.contextPath}/files/SummerNoteImageFile",
					contentType : false,
					processData : false
				}).done(function(data){
					console.log(data);
					$("#summernote").summernote("insertImage",data.path);
				}).fail(function(e){
					console.log(e);
				});				
			}

		// 서머노트에 text 쓰기
		$('#summernote').summernote('insertText', "써머노트에 쓸 텍스트");
		// 서머노트 쓰기 비활성화
		$('#summernote').summernote('disable');
		// 서머노트 쓰기 활성화
		$('#summernote').summernote('enable');
		// 서머노트 리셋
		$('#summernote').summernote('reset');
		// 마지막으로 한 행동 취소 ( 뒤로가기 )
		$('#summernote').summernote('undo');
		// 앞으로가기
		$('#summernote').summernote('redo');

		// 이미지 드래그& 드랍
		$("div.note-editable").on('drop',function(e) {
			for (i = 0; i < e.originalEvent.dataTransfer.files.length; i++) {
				uploadSummernoteImageFile(
					e.originalEvent.dataTransfer.files[i],
					$("#summernote")[0]);
			}
			e.preventDefault();
		})

		// 체크박스 선택시 readonly 해제
		$(function() {
			$("#secret").change(function() {
				let rs = this.checked;
				let secret = $("#secret");
				if (rs) {
					$("#secretPw").prop("readonly", false);
				} else {
					$("#secretPw").prop("readonly", true);
				}
			});
		});

		// 게시글 등록 버튼 
		$("#btnInsert").on(	"click",function() {
			if ($("#title").val() == "") {
				alert("제목을 입력 해주세요.");
				return;
			} else if ($("#content").val() == "") {
				alert("내용을 입력 해주세요.");
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