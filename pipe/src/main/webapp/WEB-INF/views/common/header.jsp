<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg">
	<div class="container">
		<a class="navbar-brand" href="/">
			<i class="navbar-brand-icon bi-book me-2"></i>
			<span>송유선</span>
		</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav ms-lg-auto me-lg-4">
				<li class="nav-item">
					<a class="nav-link" href="/">홈</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/page?pageName=section1">강의 구성</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/page?pageName=section2">강사 소개</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/page?pageName=section3">학생 후기</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/page?pageName=board_list">Q&A</a>
				</li>
			</ul>
			<div class="d-none d-lg-block">
				<a href="#" class="btn custom-btn custom-border-btn btn-naira btn-inverted">
					<i class="btn-icon bi-cloud-download"></i>
					<span>로그인/회원가입</span>
				</a>
			</div>
		</div>
	</div>
 </nav>

 <script>
	// js로 url 기반 동적 메뉴 활성화
	document.addEventListener("DOMContentLoaded", function () {
		const links = document.querySelectorAll(".nav-link");
		links.forEach(link => {
			if (link.href === window.location.href) {
				link.classList.add("active");
			}
		});
	});
 </script>