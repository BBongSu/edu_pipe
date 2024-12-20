<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>${title}</title>

	<!-- # CSS FILES -->
	<!-- ## 1. https -->
	<link href="https://fonts.googleapis.com" rel="preconnect">
	<link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Unbounded:wght@300;400;600;700&display=swap" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/sweetalert2@11.15.2/dist/sweetalert2.min.css" rel="stylesheet">

	<!-- ## 2. resource -->
	<link href="/ebook/assets/css/bootstrap.min.css" rel="stylesheet">
	<link href="/ebook/assets/css/bootstrap-icons.css" rel="stylesheet">
	<link href="/ebook/assets/css/templatemo-ebook-landing.css" rel="stylesheet">
	<link href="/ebook/assets/css/templatemo-ebook-animation.css" rel="stylesheet">


	<!-- JAVASCRIPT FILES -->
	<!-- ## 1. https -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.15.2/dist/sweetalert2.all.min.js"></script>

	<!-- ## 2. resource -->
	<script src="/ebook/assets/js/jquery.min.js"></script>
	<script src="/ebook/assets/js/bootstrap.bundle.min.js"></script>
	<script src="/ebook/assets/js/jquery.sticky.js"></script>
	<script src="/ebook/assets/js/api.js"></script>


</head>
<body>
	<main>
	    <!-- Header -->
	    <jsp:include page="/WEB-INF/views/common/header.jsp" />
	    <!-- Content -->
	    <jsp:include page="${contentPath}" />
	    <!-- Footer -->
	    <jsp:include page="/WEB-INF/views/common/footer.jsp" />
    </main>
</body>
</html>