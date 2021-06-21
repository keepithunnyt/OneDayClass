<%@page import="DTO.USERSDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/font-awesome.min.css" />
	<link rel="stylesheet" href="css/owl.carousel.css" />
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/style2.css" />
	<link rel="stylesheet" href="css/style3.css" />
</head>
<body> 
	<% USERSDTO user = (USERSDTO)session.getAttribute("login"); %>	
	<section class="contact-page spad pb-0">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="contact-form-warp">
						<div class="section-title text-white text-left">
							<h2>개인정보 수정</h2>
							<p>맞춤형 원데이클래스 강좌 추천을 위해 정확한 정보를 입력해주세요</p>
						</div>
						<form action="USERS_update" class="contact-form"> 
							<h3>수강생 정보</h3>
							<br> <input disabled="disabled" type="text" class="id" value=<%=user.getId() %> name="id">
							<input type="password" class="pw" value=<%=user.getPw() %> name="pw">
							<input disabled="disabled" type="text" class="name" value=<%=user.getName() %> name="name"> 
							<input type="text" class="address" value=<%=user.getAddress() %> name="address"> 
							 <input type="submit" class="site-btn4" id="edit" value="수정 완료">
							 <input type="button" class="site-btn4" id="survey" value="성향 분석" onClick="location.href='hobby_survey.jsp'">
							 <br><br> 
							<h3>수강 중인 강좌</h3>
							<br> <input type="text" class="class_id"
								placeholder="강의 아이디 표출 코드"> <input type="text"
								class="class_name" placeholder="강의 이름 표출 코드"> <input
								type="text" class="class_title" placeholder="강의 제목 표출 코드">
							<input type="text" class="class_date"
								onfocus="(this.type = 'date')" placeholder="강의 날짜 표출 코드">
							<input type="button" class="site-btn4" id="main" value="메인으로"
								onClick="location.href='main.jsp'">							
						</form>
							<form action="delete_page.jsp" method="post">
							<input type="submit" class="site-btn4" value="회원탈퇴">
								</form>
							
					</div>
				</div>
	</section>
</body>
</html>
</html>