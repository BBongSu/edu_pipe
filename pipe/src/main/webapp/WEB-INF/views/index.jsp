<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>송유선</title>
    <!-- CSS FILES -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Unbounded:wght@300;400;600;700&display=swap" rel="stylesheet">

    <link href="/ebook/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="/ebook/assets/css/bootstrap-icons.css" rel="stylesheet">
    <link href="/ebook/assets/css/templatemo-ebook-landing.css" rel="stylesheet">
</head>

<body>
    <main>
        <nav class="navbar navbar-expand-lg">
            <div class="container">
                <a class="navbar-brand" href="/">
                    <i class="navbar-brand-icon bi-book me-2"></i>
                    <span>송유선</span>
                </a>
                <div class="d-lg-none ms-auto me-3">
                    <a href="#" class="btn custom-btn custom-border-btn btn-naira btn-inverted">
                        <i class="btn-icon bi-cloud-download"></i>
                        <span>강의자료 다운로드</span>
                    </a>
                </div>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-lg-auto me-lg-4">
                        <li class="nav-item">
                            <a class="nav-link click-scroll" href="#section_1">홈</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link click-scroll" href="#section_2">강의 구성</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link click-scroll" href="#section_3">강사 소개</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link click-scroll" href="#section_4">학생 후기</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link click-scroll" href="#section_5">Q&A</a>
                        </li>
                    </ul>
                    <div class="d-none d-lg-block">
                        <a href="#" class="btn custom-btn custom-border-btn btn-naira btn-inverted">
                            <i class="btn-icon bi-cloud-download"></i>
                            <span>강의자료 다운로드</span>
                        </a>
                    </div>
                </div>
            </div>
        </nav>
        <section class="hero-section d-flex justify-content-center align-items-center" id="section_1">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-12 mb-5 pb-5 pb-lg-0 mb-lg-0">
                        <h6>학부통계학</h6>
                        <h1 class="text-white mb-4">수리통계학 및 회귀분석</h1>
                        <p class="text-white">
                            확률, 통계적 추론, 그리고 회귀 분석의 기본 개념을 탐구하세요. 이 강의는 통계적 사고와 데이터 분석 기술을 개발하도록 도와줍니다.
                        </p>
                        <a href="#section_2" class="btn custom-btn smoothscroll me-3">더 알아보기</a>
                        <a href="#section_3" class="btn custom-btn smoothscroll me-3">강사 만나보기</a>
                    </div>
                    <div class="hero-image-wrap col-lg-6 col-12 mt-3 mt-lg-0">
                        <img src="/ebook/assets/images/education-online-books.png" class="hero-image img-fluid" alt="통계 강의">
                    </div>
                </div>
            </div>
        </section>
        <section class="featured-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-12">
                        <div class="avatar-group d-flex flex-wrap align-items-center">
                            <img src="/ebook/assets/images/avatar/portrait-beautiful-young-woman-standing-grey-wall.jpg" class="img-fluid avatar-image" alt="">
                            <img src="/ebook/assets/images/avatar/portrait-young-redhead-bearded-male.jpg" class="img-fluid avatar-image avatar-image-left" alt="">
                            <img src="/ebook/assets/images/avatar/pretty-blonde-woman.jpg" class="img-fluid avatar-image avatar-image-left" alt="">
                            <img src="/ebook/assets/images/avatar/studio-portrait-emotional-happy-funny-smiling-boyfriend.jpg" class="img-fluid avatar-image avatar-image-left" alt="">
                            <div class="reviews-group mt-3 mt-lg-0">
                                <strong>4.5</strong>
                                <i class="bi-star-fill"></i>
                                <i class="bi-star-fill"></i>
                                <i class="bi-star-fill"></i>
                                <i class="bi-star-fill"></i>
                                <i class="bi-star"></i>
                                <small class="ms-3">30,000 리뷰 돌파!</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="py-lg-5">

        </section>
        <section class="book-section section-padding" id="section_2">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-12">
                        <img src="/ebook/assets/images/tablet-screen-contents.jpg" class="img-fluid" alt="">
                    </div>
                    <div class="col-lg-6 col-12">
                        <div class="book-section-info">
                            <h6>강의 구성</h6>
                            <h2 class="mb-4">수업에서 다룰 내용</h2>
                            <ul>
                                <li><strong>수리통계학:</strong> 확률 이론, 랜덤 변수, 통계적 추론의 기초 학습</li>
                                <li><strong>회귀분석:</strong> 선형 회귀, 모델 진단, 데이터 분석의 실제 응용</li>
                                <li><strong>실제 사례:</strong> 과학, 비즈니스, 엔지니어링 문제 해결에 통계 적용</li>
                            </ul>
                            <p>
                                이 강의는 이론과 실습을 결합하여 학생들에게 데이터 분석과 통계적 모델링에 필요한 필수 기술을 제공합니다.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="author-section section-padding" id="section_3">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-12">
                        <img src="/ebook/assets/images/portrait-mature-smiling-authoress-sitting-desk.jpg" class="author-image img-fluid" alt="">
                    </div>

                    <div class="col-lg-6 col-12 mt-5 mt-lg-0">
                        <h6>강사 소개</h6>
                        <h2 class="mb-4">송유선</h2>
                        <p>송유선 강사님은 통계적 방법론과 데이터 분석 분야에서 15년 이상의 경력을 보유한 전문가입니다. 이론과 실습을 병행하며 학생들에게 통계학의 중요성과 실제 활용 능력을 가르칩니다.</p>
                        <p>본 강의는 통계학에 대한 흥미를 고취시키고, 학생들이 학문 및 산업 현장에서 탁월한 성과를 낼 수 있도록 돕는 것을 목표로 합니다.</p>
                    </div>

                </div>
            </div>
        </section>


        <section class="reviews-section section-padding" id="section_4">
            <div class="container">
                <div class="row">

                    <div class="col-lg-12 col-12 text-center mb-5">
                        <h6>학생 후기</h6>
                        <h2>학생들이 남긴 소중한 피드백</h2>
                    </div>
					<!-- 첫 번째 후기 -->
		            <div class="col-lg-4 col-12">
		                <div class="custom-block d-flex flex-wrap" style="background-color: #f9f9f9; border-radius: 8px; padding: 20px;">
		                    <div class="custom-block-info">
		                        <p>
		                            "수업이 매우 체계적이며, 실질적인 데이터 분석 기술을 배울 수 있었습니다! ^_^"
		                        </p>
		                        <strong>- 이OO, 통계학과 3학년</strong>
		                    </div>
		                </div>
		            </div>

		            <!-- 두 번째 후기 -->
		            <div class="col-lg-4 col-12">
		                <div class="custom-block d-flex flex-wrap" style="background-color: #eef7ff; border-radius: 8px; padding: 20px;">
		                    <div class="custom-block-info">
		                        <p>
		                            "수리통계학에서 확률과 통계적 추론을 깊이 있게 배울 수 있었습니다."
		                        </p>
		                        <strong>- 이OO, 데이터 과학 전공</strong>
		                    </div>
		                </div>
		            </div>

		            <!-- 세 번째 후기 -->
		            <div class="col-lg-4 col-12">
		                <div class="custom-block d-flex flex-wrap" style="background-color: #fff9f0; border-radius: 8px; padding: 20px;">
		                    <div class="custom-block-info">
		                        <p>
		                            "실제 사례를 다루면서 통계 모델링을 더 잘 이해할 수 있었습니다"
		                        </p>
		                        <strong>- 이OO, 경영학과 4학년</strong>
		                    </div>
		                </div>
		            </div>
                </div>
            </div>
        </section>


        <section class="contact-section section-padding" id="section_5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-12">
                        <h6 class="mt-5">문의하기</h6>
                        <h2 class="mb-4">강의에 대해 더 알고 싶으신가요?</h2>
						<p>QNA 또는 아래 정보를 통해 문의하실 수 있습니다 :</p>
                        <p><i class="bi-geo-alt me-2"></i> 서울, 대한민국</p>
                        <p><a href="tel:010-1234-5678" class="contact-link">010-1234-5678</a></p>
                        <p><a href="mailto:professor@example.com" class="contact-link">pipe@naver.com</a></p>
                    </div>

                </div>
            </div>
        </section>
    </main>

    <!-- JAVASCRIPT FILES -->
    <script src="/ebook/assets/js/jquery.min.js"></script>
    <script src="/ebook/assets/js/bootstrap.bundle.min.js"></script>
    <script src="/ebook/assets/js/jquery.sticky.js"></script>
    <script src="/ebook/assets/js/click-scroll.js"></script>
    <script src="/ebook/assets/js/custom.js"></script>

</body>

</html>