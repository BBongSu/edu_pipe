<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시글 상세</title>
    <!-- Bootstrap CSS -->
    <link href="/ebook/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="/ebook/assets/css/bootstrap-icons.css" rel="stylesheet">
    <link href="/ebook/assets/css/templatemo-ebook-landing.css" rel="stylesheet">

    <!-- Custom CSS -->
    <style>
        body {
            background-image: url('/ebook/assets/images/businessman-sitting-by-table-cafe.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            color: #333;
        }

        .content-container {
            max-width: 800px;
            margin: 50px auto;
            background: rgba(255, 255, 255, 0.95);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }

        .content-title {
            font-size: 28px;
            font-weight: bold;
            color: #333;
            margin-bottom: 20px;
            border-bottom: 2px solid #ddd;
            padding-bottom: 10px;
        }

        .content-info {
            font-size: 14px;
            color: #666;
            margin-bottom: 20px;
        }

        .content-body {
            font-size: 16px;
            line-height: 1.8;
            color: #444;
        }

        .btn-container {
            display: flex;
            justify-content: space-between;
            margin-top: 30px;
        }

        .btn-container .btn {
            width: 150px;
        }
    </style>
</head>

<body>
    <main>
		<div class="container">
            <div class="content-container">
                <!-- 제목 -->
                <div class="content-title">
                    ${selectBoard.title}
                </div>

                <!-- 작성자 및 기타 정보 -->
                <div class="content-info">
                    <span><i class="bi bi-person-circle"></i> <strong>작성자:</strong> ${selectBoard.writer}</span><br>
                    <span><i class="bi bi-calendar3"></i> <strong>작성일:</strong> ${selectBoard.created_at}</span><br>
                </div>

                <!-- 본문 -->
                <div class="content-body">
                    ${selectBoard.content}
                </div>

                <!-- 버튼 -->
                <div class="btn-container">
                    <button class="btn btn-secondary" onclick="location.href='/selectListBoard'">목록</button>
                </div>
            </div>
        </div>
    </main>

    <!-- Bootstrap JS -->
    <script src="/ebook/assets/js/jquery.min.js"></script>
    <script src="/ebook/assets/js/bootstrap.bundle.min.js"></script>
</body>

</html>
