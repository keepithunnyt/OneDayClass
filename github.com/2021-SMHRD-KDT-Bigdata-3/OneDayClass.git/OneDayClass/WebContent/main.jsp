<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>하루클래스-나를 위한 시간</title>
	<meta charset="UTF-8">
	<meta name="description" content="WebUni Education Template">
	<meta name="keywords" content="webuni, education, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->   
	<link href="img/favicon.ico" rel="shortcut icon"/>

	<!-- Google Fonts -->
	<link href="googleapis.css" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.css"/>
	<link rel="stylesheet" href="css/style.css"/>


	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header section -->
	<header class="header-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3">
					<div class="site-logo">
						<img src="img/LOGO.png" alt="">
					</div>
					<div class="nav-switch">
						<i class="fa fa-bars"></i>
					</div>
				</div>
				<div class="col-lg-9 col-md-9">
					<a href="login_main.html" class="site-btn header-btn">로그인</a>
					<a href="register_main.html" class="site-btn2 header-btn">회원가입</a>
					<a href="mypage_main.html" class="site-btn2 header-btn">마이페이지</a>
					<!--<nav class="main-menu">
						<ul>
							<li><a href="index.html">메인</a></li>
							<li><a href="#">서비스 소개</a></li>
							<li><a href="courses.html">개설 강좌</a></li>
							<li><a href="blog.html">소식</a></li>
							<li><a href="contact.html">문의하기</a></li>
						</ul>
					</nav>-->
				</div>
			</div>
		</div>
	</header>
	<!-- Header section end -->


	<!-- Page info -->
	<div class="page-info-section set-bg">
		<!--data-setbg="img/page-bg/back_sample.jpg" 배경이미지-->
		<div class="container">
			<!-- <div class="site-breadcrumb">
				<a href="#">메인</a>
				<span>개설 강좌</span>
			</div> -->
		</div>
	</div>
	<!-- Page info end -->


	<!-- search section -->
	<br>
	<br>
	<br>
	<section class="search-section ss-other-page">
		<div class="container">
			<div class="search-warp">
				<div class="section-title text-white">
					<h2><span>다양한 강좌를 찾아보세요</span></h2>
				</div>
				<div class="row">
					<div class="col-lg-10 offset-lg-1">
						<!-- search form -->
						<form class="course-search-form">
							<select name="search">
								<option value="select">항목 선택</option>
								<option value="title">제목</option>
								<option value="content">내용</option>
								<option value="locate">지역</option>
								<option value="teacher">강사</option>
							</select>
							<input type="text" placeholder="검색할 내용을 입력하세요">
							<!-- <input type="text" class="last-m" placeholder="분류"> -->
							<!-- <button class="site-btn btn-dark">과정 찾아보기</button> -->
							<input type="button" class="site-btn" id="search" value="과정 찾아보기" onClick="alert('0건의 과정이 검색되었습니다.')"> 
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- search section end -->


	<!-- course section -->
	<section class="course-section spad pb-0">
		<div class="course-warp">
			<ul class="course-filter controls">
				<li class="control active" data-filter="all">All</li>
				<li class="control" data-filter=".category1">운동</li>
				<li class="control" data-filter=".category2">공예</li>
				<li class="control" data-filter=".category3">패션/뷰티</li>
				<li class="control" data-filter=".category4">사진/영상</li>
				<li class="control" data-filter=".category5">기타</li>
			</ul>                                       
			<div class="row course-items-area">
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6 category1">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="img/courses/1.jpg">
							<div class="price">1달라</div>
						</div>
						<div class="course-info">
							<div class="course-text">
								<h5>허경영과 공중부양 하기</h5>
								<p>중력을 거스르는 그와 과학의 정면 승부!</p>
								<div class="students">120 Students</div>
							</div>
							<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="img/authors/1.jpg"></div>
								<p>William Parker, <span>Developer</span></p>
							</div>
						</div>
					</div>
				</div>
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6 category2">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="img/courses/2.jpg">
							<div class="price">2달라</div>
						</div>
						<div class="course-info">
							<div class="course-text">
								<h5>허경영과 축지법 하기</h5>
								<p>북쪽에 장군님도 하신다는 셀럽 필수 능력!</p>
								<div class="students">120 Students</div>
							</div>
							<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="img/authors/2.jpg"></div>
								<p>William Parker, <span>Developer</span></p>
							</div>
						</div>
					</div>
				</div>
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6 category3">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="img/courses/3.jpg">
							<div class="price">3달라</div>
						</div>
						<div class="course-info">
							<div class="course-text">
								<h5>이준석 당대표와 점심식사</h5>
								<p>자칭 워렌 버핏을 꿈꾸는 야망가와의 식사!</p>
								<div class="students">120 Students</div>
							</div>
							<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="img/authors/3.jpg"></div>
								<p>William Parker, <span>Developer</span></p>
							</div>
						</div>
					</div>
				</div>
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6 category4">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="img/courses/4.jpg">
							<div class="price">4달라</div>
						</div>
						<div class="course-info">
							<div class="course-text">
								<h5>전광훈 목사와 태극기집회</h5>
								<p>방역 수칙과는 대척점에 있는 자가격리 직행 티켓!</p>
								<div class="students">120 Students</div>
							</div>
							<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="img/authors/4.jpg"></div>
								<p>William Parker, <span>Developer</span></p>
							</div>
						</div>
					</div>
				</div>
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6 category5">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="img/courses/5.jpg">
							<div class="price">5달라</div>
						</div>
						<div class="course-info">
							<div class="course-text">
								<h5>빅데이터 과정 수강</h5>
								<p>스몰데이터는 왜 없을까? 그 궁금증을 해결해 준다!</p>
								<div class="students">120 Students</div>
							</div>
							<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="img/authors/5.jpg"></div>
								<p>William Parker, <span>Developer</span></p>
							</div>
						</div>
					</div>
				</div>
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6 category6">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="img/courses/6.jpg">
							<div class="price">6달라</div>
						</div>
						<div class="course-info">
							<div class="course-text">
								<h5>인공지능 과정 수강</h5>
								<p>내 머리가 나쁜 이유를 기계를 통해 밝히다!</p>
								<div class="students">120 Students</div>
							</div>
							<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="img/authors/6.jpg"></div>
								<p>William Parker, <span>Developer</span></p>
							</div>
						</div>
					</div>
				</div>
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6 category7">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="img/courses/7.jpg">
							<div class="price">7달라</div>
						</div>
						<div class="course-info">
							<div class="course-text">
								<h5>쿠팡맨 배송 교육</h5>
								<p>로켓 타고 배송한다는 쿠팡맨의 배송 현장을 가다!</p>
								<div class="students">120 Students</div>
							</div>
							<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="img/authors/7.jpg"></div>
								<p>William Parker, <span>Developer</span></p>
							</div>
						</div>
					</div>
				</div>
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6 category8">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="img/courses/8.jpg">
							<div class="price">8달라</div>
						</div>
						<div class="course-info">
							<div class="course-text">
								<h5>맨투맨 판매 교육</h5>
								<p>생존 창업의 기본 중에 기본을 배우다!</p>
								<div class="students">120 Students</div>
							</div>
							<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="img/authors/8.jpg"></div>
								<p>William Parker, <span>Developer</span></p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="featured-courses">
				<div class="featured-course course-item">
					<div class="course-thumb set-bg" data-setbg="img/courses/f-1.jpg">
						<div class="price">4딸라</div>
					</div>
					<div class="row">
						<div class="col-lg-6 offset-lg-6 pl-0">
							<div class="course-info">
								<div class="course-text">
									<div class="fet-note">추천 강좌</div>
									<h5>하형이와 함께하는 즐거운 크롤링</h5>
									<p>크롤링~ 롤링~ 롤링~ 저절로 노래가 나올 정도의 여유 가득한 데이터 수집의 달인!</p>
									<div class="students">120 Students</div>
								</div>
								<div class="course-author">
									<div class="ca-pic set-bg" data-setbg="img/authors/1.jpg"></div>
									<p>강하형, <span>프로젝트 실무 총괄</span></p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="featured-course course-item">
					<div class="course-thumb set-bg" data-setbg="img/courses/f-2.jpg">
						<div class="price">4딸라</div>
					</div>
					<div class="row">
						<div class="col-lg-6 pr-0">
							<div class="course-info">
								<div class="course-text">
									<div class="fet-note">추천 강좌</div>
									<h5>현진이와 함께하는 하드 코딩</h5>
									<p>코딩이 먹는 거라고요? 먹고 살 수 있는 겁니다! 리얼 생존 코딩의 진수!</p>
									<div class="students">120 Students</div>
								</div>
								<div class="course-author">
									<div class="ca-pic set-bg" data-setbg="img/authors/2.jpg"></div>
									<p>안현진, <span>프로젝트 기획 총괄</span></p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- course section end -->


	<!-- banner section -->
	<!-- <section class="banner-section spad">
		<div class="container">
			<div class="section-title mb-0 pb-2">
				<h2>회원가입 후 서비스를 즐겨주세요!</h2>
				<p>개인별 맞춤형 원데이클래스 추천 서비스를 위해서는 가입이 필요합니다!</p>
			</div>
			<div class="text-center pt-5">
				<a href="register_form.html" class="site-btn">회원가입</a>
			</div>
		</div>
	</section> -->
	<!-- banner section end -->


	<!-- footer section -->
	<footer class="footer-section spad pb-0">
		<div class="footer-top">
			<div class="footer-warp">
				<div class="row">
					<div class="widget-item">
						<h4>문의하기</h4>
						<ul class="contact-list">
							<li>광주광역시 남구<br>송암로 60 광주CGI센터 2층</li>
							<li>080-335-0020</li>
							<li>test@smhrd.com</li>
						</ul>
					</div>
					<div class="widget-item">
						<h4>주요 서비스</h4>
						<ul class="contact-list">
							<li>원데이클래스 개인 맞춤형 추천</li>
							<li>제목/내용/지역/강사 등 검색 기능</li>
							<li>카테고리별 강좌 조회 및 분류 기능</li>
						</ul>
					</div>
					<!--<div class="widget-item">
						<h4>Graphic Design</h4>
						<ul>
							<li><a href="">Applied Studies</a></li>
							<li><a href="">Computer Engeneering</a></li>
							<li><a href="">Software Engeneering</a></li>
							<li><a href="">Informational Engeneering</a></li>
							<li><a href="">System Engeneering</a></li>
						</ul>
					</div>
					<div class="widget-item">
						<h4>Development</h4>
						<ul>
							<li><a href="">Applied Studies</a></li>
							<li><a href="">Computer Engeneering</a></li>
							<li><a href="">Software Engeneering</a></li>
							<li><a href="">Informational Engeneering</a></li>
							<li><a href="">System Engeneering</a></li>
						</ul>
					</div>-->
					<div class="widget-item">
						<h4>소식지</h4>
						<form class="footer-newslatter">
							<input type="email" placeholder="이메일을 입력해주세요">
							<button class="site-btn">구독하기</button>
							<p>메일이 수신되지 않을 경우 스팸 메일함을 확인해주세요</p>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="footer-warp">
				<ul class="footer-menu">
					<li><a href="#">Terms & Conditions</a></li>
					<li><a href="#">Register</a></li>
					<li><a href="#">Privacy</a></li>
				</ul>
			    <div class="copyright"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This webpage is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://www.smhrd.or.kr" target="_blank">깔맞춤해조(가명)</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
			</div>
		</div>
	</footer> 
	<!-- footer section end -->


	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/circle-progress.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
</body>
</html>