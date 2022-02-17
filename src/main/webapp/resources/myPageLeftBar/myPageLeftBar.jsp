<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지 왼쪽편</title>
</head>
<body>
	<!-- 마이페이지 왼쪽편 -->

			<div class="col-3 mypage_right_line">
				<div class="row d-flex justify-content-center mb-3">
					<c:if test="${loginSession.ori_name == null}">
						<div class="col-12" id="profileImgBox">
							<img class="mypage_profile_img" id="profileImg"
								src="/resources/images/profile.svg">
						</div>
					</c:if>
					<c:if test="${loginSession.ori_name != null}">
						<div class="col-12" id="profileImgBox">
							<img class="mypage_profile_img" id="profileImg"
								src="${pageContext.request.contextPath}/upload/${dto.getSys_name()}">
						</div>
					</c:if>


				</div>
				<div class="row">
					<div class="col-12 d-flex justify-content-center">
						<h5 style="color: gray;">${loginSession.id}</h5>
					</div>
				</div>

				<div class="row mt-5">
					<div class="col-12" style="margin-left: 30px;">
						<ul>
							<li class="ulList"><a
								href="${pageContext.request.contextPath}/member/toMyPage.do">회원정보
									수정</a></li>
							<li class="ulList"><a
								href="${pageContext.request.contextPath}/board/toMyBoardList?currentPage=1">나의
									게시글 확인</a></li>
							<li class="ulList"><a
								href="${pageContext.request.contextPath}/note/select_to_id.do?to_id=${dto.getId()}&currentPage=1">쪽지
									확인</a></li>
							<li class="ulList"><a
								href="${pageContext.request.contextPath}/member/note.do"
								onclick="window.open(this.href,'쪽지보내기','width=450, height=500');return false;">쪽지
									보내기</a></li>
							<li class="ulList"><a class="btn-open-popup" href="#">follow</a></li>
						</ul>
					</div>

				</div>
			</div>
			
			<div class="modal">
				<div class="modal_body">
					<div>
						<h2>팔로워</h2>
					</div>
					<div>
						<table>
							<tbody>
								<c:if test="${!empty fList}">
									<c:forEach var="list" items="${fList}">
										<c:choose>
											<c:when test="${! empty f2List }">
												<c:forEach var="list2" items="${f2List}">
													<c:choose>
														<c:when
															test="${list.getFollow_id() eq list2.getFollower_id()}">
															<tr>
																<td>${list.follow_id}</td>
																<td>
																	<button type="button" class="followBtn"
																		value="${list.follow_id}">팔로우 취소</button>
																</td>
															</tr>
														</c:when>
														<c:otherwise>
															<tr>
																<td>${list.follow_id}</td>
																<td>
																	<button type="button" class="followBtn"
																		value="${list.follow_id}">팔로우</button>
																</td>
															</tr>
														</c:otherwise>

													</c:choose>
												</c:forEach>
											</c:when>
											<c:otherwise>
												<tr>
													<td>${list.follow_id}</td>
													<td>
														<button type="button" class="followBtn"
															value="${list.follow_id}">팔로우</button>
													</td>
												</tr>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</c:if>
							</tbody>
						</table>
					</div>
					<div>
						<button type="button" id="closeBtn">닫기</button>
					</div>
				</div>
			</div>
</body>
</html>