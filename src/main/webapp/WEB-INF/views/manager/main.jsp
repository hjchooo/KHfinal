<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<button type="button" id="memberBtn">회원관리</button>
	<button type="button" id="reportBtn">신고관리</button>
	<button type="button" id="boardBtn">게시글 관리</button>
	<button type="button" id="replyBtn">댓글 관리</button>
	
	<script>
		document.getElementById("memberBtn").onclick = function(){
			location.href = "${pageContext.request.contextPath}/manager/member.do?currentPage=1";
		}
		
		document.getElementById("reportBtn").onclick = function(){
			location.href = "${pageContext.request.contextPath}/manager/report.do?currentPage=1";
		}
		
		document.getElementById("boardBtn").onclick = function(){
			location.href = "${pageContext.request.contextPath}/manager/board.do?currentPage=1";
		}
		
		document.getElementById("replyBtn").onclick = function(){
			location.href = "${pageContext.request.contextPath}/manager/reply.do?currentPage=1";
		}
	</script>
</body>
</html>