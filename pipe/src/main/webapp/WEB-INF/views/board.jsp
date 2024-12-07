<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시판</title>
    <!-- Bootstrap CSS -->
    <link href="/ebook/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="/ebook/assets/css/bootstrap-icons.css" rel="stylesheet">
    <link href="/ebook/assets/css/templatemo-ebook-landing.css" rel="stylesheet">

    <!-- Custom CSS -->
    <style>
        body {
            background-image: url('/ebook/assets/images/businessman-sitting-by-table-cafe.jpg'); /* 배경 이미지 경로 */
            background-size: cover; /* 이미지를 화면에 꽉 채움 */
            background-repeat: no-repeat; /* 이미지를 반복하지 않음 */
            background-attachment: fixed; /* 배경 고정 */
            color: #333; /* 텍스트 기본 색상 */
        }

        .content-wrapper {
            background-color: rgba(255, 255, 255, 0.8); /* 반투명 배경색 */
            border-radius: 10px; /* 모서리 둥글게 */
            padding: 20px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1); /* 그림자 효과 */
        }

        .table-hover tbody tr:hover {
            background-color: #f8f9fa; /* 행에 마우스를 올렸을 때 배경색 변경 */
        }
    </style>
</head>

<body>
    <main>
        <nav class="navbar navbar-expand-lg">
            <div class="container">
                <a class="navbar-brand" href="/">
                    <i class="navbar-brand-icon bi-book me-2"></i>
                    <span>게시판</span>
                </a>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-lg-auto">
                        <li class="nav-item"><a class="nav-link" href="/">홈</a></li>
                        <li class="nav-item"><a class="nav-link" href="/board">게시판</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <section class="section-padding">
            <div class="container content-wrapper">
                <h1 class="mb-4">게시판</h1>
                <div class="d-flex justify-content-end mb-3">
                    <button class="btn btn-primary" onclick="location.href='/boardView'">글쓰기</button>
                    <button class="btn btn-primary" onclick="location.href='/deleteBoard?id=1'">삭제</button>
                    <button class="btn btn-primary" onclick="location.href='/updateBoard?id=1'">수정</button>
                </div>

                <table class="table table-hover">
                    <thead class="table-dark">
                        <tr>
                            <th scope="col">번호</th>
                            <th scope="col">제목</th>
                            <th scope="col">작성자</th>
                            <th scope="col">작성일</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- 데이터 반복 -->
                        <c:forEach var="list" items="${selectListBoard}" varStatus="status">
                            <tr>
                                <td>${status.count}</td>
                                <td>
                                	<a href="/selectBoard?id=${list.id}">
                                		${list.title}
                                	</a>
                                </td>
                                <td>${list.writer}</td>
                                <td>${list.created_at}</td>
                            </tr>
                        </c:forEach>
                        <!-- 데이터 없을 때 -->
                        <c:if test="${empty selectListBoard}">
                            <tr>
                                <td colspan="4" class="text-center">게시글이 없습니다.</td>
                            </tr>
                        </c:if>
                    </tbody>
                </table>

                <!-- 페이지네이션 -->
                <nav aria-label="Page navigation">
                    <ul class="pagination justify-content-center">
                        <c:forEach var="page" begin="1" end="${totalPages}">
                            <li class="page-item ${currentPage == page ? 'active' : ''}">
                                <a class="page-link" href="?page=${page}">${page}</a>
                            </li>
                        </c:forEach>
                    </ul>
                </nav>
            </div>
        </section>
    </main>

    <!-- Bootstrap JS -->
    <script src="/ebook/assets/js/jquery.min.js"></script>
    <script src="/ebook/assets/js/bootstrap.bundle.min.js"></script>
</body>

</html>
