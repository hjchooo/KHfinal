<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
        crossorigin="anonymous"></script>
    <title>관리자 페이지</title>
    <style>
        * {
            box-sizing: border-box;
        }
        a{
            text-decoration: none;
            color: gray;
        }
        a:hover {
            color: black;
        }

        /* 전체 컨테이너 */
        .managerContainer {
            width: 1200px;
            margin: auto;
        }

        /* 오른쪽 영역 */
        .managerTbl {
            border-right: 1px solid lightgray;
            height: 700px;
        }

        /* 관리자 이미지 */
        #managerImgBox {
            width: 150px; 
            height: 150px;
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
        .visitorBox {}

        /* 테이블 헤더 */
        thead {
            background-color: #f7f7f7;
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
    <div class="managerContainer mt-5">
        <!-- 왼쪽 영역 -->
        <div class="row">
            <div class=" col-3 managerTbl">
                <div class="row d-flex justify-content-center">
                    <div class="col-12" id="managerImgBox">
                        <a href="https://desk.channel.io/#/signin"><img id="managerImg"
                                src="/final2022-01-16 23시28분/images/go_logo.png"></a>
                    </div>
                    <div class="col-12 d-flex justify-content-center">
                        <label>관리자 : </label> ${loginSession.id}
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
                                        <td colspan="3">최근 작성한 게시글이 존재하지 않습니다.</td>
                                    </tbody>
                                </c:otherwise>
                            </c:choose>
                        </table>

                        <!-- 게시판 페이지 네이션 -->
                        <div class="row">
                            <div class="col-12">
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination justify-content-center">
                                      <li class="page-item disabled">
                                        <a class="page-link">이전</a>
                                      </li>
                                      <li class="page-item"><a class="page-link" href="#">${i}</a></li>
                                      <li class="page-item">
                                        <a class="page-link" href="#">다음</a>
                                      </li>
                                    </ul>
                                  </nav>
                            </div>
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
                            <a href="${pageContext.request.contextPath}/manager/member.do?currentPage=1">회원관리</a>
                        </div>

                         <!-- 게시판 페이지 네이션 -->
                         <div class="row">
                            <div class="col-12">
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination justify-content-center">
                                      <li class="page-item disabled">
                                        <a class="page-link">이전</a>
                                      </li>
                                      <li class="page-item"><a class="page-link" href="#">${i}</a></li>
                                      <li class="page-item">
                                        <a class="page-link" href="#">다음</a>
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
                                            <td colspan="3">신고된 내용이 존재하지 않습니다.</td>
                                        </tbody>
                                    </c:otherwise>
                                    </c:choose> --%>
                        </table>

                        <div>
                            <a href="${pageContext.request.contextPath}/manager/report.do?currentPage=1">신고관리</a>
                        </div>

                         <!-- 게시판 페이지 네이션 -->
                         <div class="row">
                            <div class="col-12">
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination justify-content-center">
                                      <li class="page-item disabled">
                                        <a class="page-link">이전</a>
                                      </li>
                                      <li class="page-item"><a class="page-link" href="#">${i}</a></li>
                                      <li class="page-item">
                                        <a class="page-link" href="#">다음</a>
                                      </li>
                                    </ul>
                                  </nav>
                            </div>
                        </div>

                    </div>

                    <!-- 여행지 추천 현황 -->
                    <div class="col-6" id="trip">
                        <h3 class="d-flex justify-content-center mb-4">여행지 추천 현황</h3>
                        <div class="row mb-3">
                            <div class="col-12">
                                <label>관광지 : </label> ${map.publicdatalist[0]}개
                            </div>
                            <div class="col-12">
                                <label>축제 : </label> ${map.publicdatalist[1]}개
                            </div>
                            <div class="col-12">
                                <label>레포츠 : </label> ${map.publicdatalist[2]}개
                            </div>
                            <div class="col-12 d-flex justify-content-end mt-4">
                                <h4>
                                    total :
                                    <c:out value="${map.publicdatalist[0] + map.publicdatalist[1] + map.publicdatalist[2]}" />
                                    개
                                </h4>
                            </div>
                        </div>
                        
                        <div>
                            <a href="${pageContext.request.contextPath}#">여행지 관리</a>
                        </div>

                    </div>
                </div>
            </div>

        </div>

        <!-- 버튼영역 -->
        <div class="row">
            <div class="col-12 btncls d-flex justify-content-end">
                <button type="button" class="btn" id="btnExit">나가기</button>
            </div>
        </div>


    </div>

</body>

</html>