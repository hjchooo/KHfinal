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
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	box-sizing: border-box;
}

body {
	background-color: #80808030;
}

.container>div {
	border: 1px solid black;
}

.container {
	width: 1080px;
	margin: auto;
	display: grid;
	padding: 0px;
	gap: 10px;
}

.btncls {
	text-align: right;
	margin-bottom: 10px;
}

.functionTbl {
	width: 1080px;
	height: 750px;
	padding: 0px;
}

.functionTbl2 {
	height: 100%;
	margin-right: 0px;
	border: 1px solid black;
}

.onecls {
	height: 350px;
}

.onecls>div {
	border: 1px solid black;
	height: 100%;
	margin: 0;
}
</style>
</head>
<body>

	<div class="row container">
		<div class="row btncls">
			<button type="button" class="btn-danger" id="outBtn">나가기</button>
		</div>
		<div class="row functionTbl">
			<div class="col-9 functionTbl2">
				<div class="row onecls">
					<div class="col-md-6" id="freeBoard">
						<h4>자유게시판</h4>
						<div>
							<table>
								<thead>
									<tr>
										<th>등록한 id</th>
										<th>제목</th>
										<th>카테고리</th>
									</tr>
								</thead>
								<c:choose>
									<c:when test="${not empty map.blist}">
										<tbody>
											<c:forEach var="blist" items="${map.blist}" begin="0" end="5">
												<tr>
													<td>${blist.writer_id}</td>
													<td>${blist.title}</td>
													<td>${blist.category}</td>
												</tr>
											</c:forEach>
										</tbody>

									</c:when>
									<c:otherwise>
										<tbody>
											<td colspan="3">최근 작성한 게시글이 존재하지 않습니다....</td>
										</tbody>
									</c:otherwise>
								</c:choose>
							</table>
						</div>
					</div>
					<div class="col-md-6" id="newMember">
						<h3>신규 가입자</h3>
						<div>
							<table>
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
											<td colspan="3">최근 가입한 회원이 없습니다....</td>
										</tbody>
									</c:otherwise>
								</c:choose>
							</table>
						</div>
						<div>
							<a
								href="${pageContext.request.contextPath}/manager/member.do?currentPage=1">회원관리</a>
						</div>
					</div>
				</div>
				<div class="row onecls">
					<div class="col-md-6" id="newReport">
						<h3>당일 신고 내용</h3>
						<div>
							<table>
								<thead>
									<tr>
										<th>신고한 id</th>
										<th>신고된 id</th>
										<th>신고 카테고리</th>
									</tr>
								</thead>
								<%-- <c:choose>
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
											<td colspan="3">신고된 내용이 존재하지 않습니다!</td>
										</tbody>
									</c:otherwise>
								</c:choose> --%>
							</table>
						</div>
						<div>
							<a
								href="${pageContext.request.contextPath}/manager/report.do?currentPage=1">신고관리</a>
						</div>
					</div>
					<div class="col-md-6" id="trip">
						<h3>여행지 추천 게시판 현황</h3>
						<div>
							<h4>
								total :
								<c:out
									value="${map.publicdatalist[0] + map.publicdatalist[1] + map.publicdatalist[2]}" />
								개
							</h4>
							<div>관광지 : ${map.publicdatalist[0]}개 / 축제 :
								${map.publicdatalist[1]}개 / 레포츠 : ${map.publicdatalist[2]}개</div>
							<div>
								<a href="${pageContext.request.contextPath}#">여행지 관리</a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class=" col-3 managerTbl">
				<!-- 현재 접속자, total접속자 -->
				<div id="count">
					오늘 방문자 수 : ${map.todayCount} <br> 
					
					총 방문자 수 : ${map.totalCount}

				</div>
			</div>
		</div>
	</div>
	<div></div>

</body>
</html>