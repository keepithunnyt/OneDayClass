<%@page import="DTO.TEACHERSDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta charset="EUC-KR">
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/font-awesome.min.css" />
	<link rel="stylesheet" href="css/owl.carousel.css" />
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/style2.css" />
	<link rel="stylesheet" href="css/style3.css" />
</head> 
<body>	
	<% TEACHERSDTO teacher = (TEACHERSDTO)session.getAttribute("login"); %>	
	<section class="contact-page spad pb-0">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="contact-form-warp">
						<div class="section-title text-white">
						<h2>마이페이지</h2>
						<p>원데이클래스 강좌 개설을 위한 정보를 입력해주세요</p>
						</div>
						
						<form action="CLASS_insert" class="contact-form" method="post">
						<h4>수강 등록</h4>
						<br>
						<select name="category" style="width:250px; height:50px;">
                        <option value="category">개설할 강좌 종류</option>
                        <option value="sports">운동</option>
                        <option value="food">요리</option>
                        <option value="certification">자격증</option>
                        <option value="music">음악</option>
                        <option value="arts">공예</option>
                        <option value="beautys">패션/뷰티</option>
                        <option value="medias">사진/영상</option>
                        <option value="finance">제테크</option>
                        </select>
						<input disabled="disabled" type="text" class="name" value=<%=teacher.getTeacher_name() %> name="name" style="width:250px; height:50px;"> 
						<input name="title" type="text" class="class_id" placeholder="강좌 이름을 입력하세요" style="width:505px; height:50px;">
						<input name="time" type="text" class="class_id" placeholder="시간 입력 : 00월 00일 (요일) 00:00 ~ 00:00" style="width:505px; height:50px;">
						<input name="price" type="text" class="class_id" placeholder="비용 : 00원 / 총 0회 / 0시간" style="width:505px; height:50px;">
						<textarea name="content" placeholder="강좌 내용을 입력하세요" style="width:505px; height:300px;"></textarea>
						<br>
						<label class="site-btn3" for="input-file">파일 첨부</label>
						<input type="file" id="input-file" style={{display:"none"}} name="img">
						<input type="submit" class="site-btn4" id="enroll2" value="등록 완료">
						<input type="button" class="site-btn4" id="enroll3" value="등록 취소" onClick="location.href='mypage_teacher.jsp'">
						</form>
					</div>
				</div>
	</section>
</body>
</html>