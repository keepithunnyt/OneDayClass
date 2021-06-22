<%@page import="DTO.TEACHERSDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body> 
<% TEACHERSDTO teacher = (TEACHERSDTO)session.getAttribute("login"); %>
	<section class="contact-page spad pb-0">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="contact-form-warp">
						<div class="section-title text-white text-left">
							<h2>회원 탈퇴</h2>
							<h4>※회원 탈퇴 시 회원 정보는 복구가 불가능합니다.※</h4>
						</div>
						<form action="TEACHERS_delete" class="contact-form" method="post"> 
							<h3>아이디를 확인해주세요</h3>
							<br> <input type="password" class="pw" name="id" value=<%=teacher.getTeacher_id() %>>
							<h3>비밀번호를 입력해주세요</h3>
							<br> <input type="password" class="pw" name="pw">
							<input type="button" class="site-btn4" id="main" value="메인으로" onClick="location.href='main.jsp'">
							<input type="submit" class="site-btn4"  value="회원 탈퇴">
							<br><br> 	
						</form>							
					</div>
				</div>
	</section>
</body>
</html>