<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시글 작성</title>
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

        .form-container {
            background: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
        }

        .btn-submit {
            width: 100%;
        }
    </style>
</head>

<body>
    <main>
        <div class="container form-container">
            <h1>게시글 작성</h1>
            <form action="/insertBoard" method="POST">
                <div class="mb-3">
                    <label for="title" class="form-label">제목</label>
                    <input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하세요" required>
                </div>
                <div class="mb-3">
                    <label for="writer" class="form-label">작성자</label>
                    <input type="text" class="form-control" id="writer" name="writer" placeholder="작성자를 입력하세요" required>
                </div>
                <div class="mb-3">
                    <label for="content" class="form-label">내용</label>
                    <textarea class="form-control" id="content" name="content" rows="10" placeholder="내용을 입력하세요" required></textarea>
                </div>
                <button type="submit" class="btn btn-primary btn-submit">작성하기</button>
                <button type="button" class="btn btn-secondary btn-submit mt-2" onclick="location.href='/board'">취소</button>
            </form>
        </div>
    </main>

    <!-- Bootstrap JS -->
    <script src="/ebook/assets/js/jquery.min.js"></script>
    <script src="/ebook/assets/js/bootstrap.bundle.min.js"></script>
</body>

</html>
