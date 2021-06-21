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

<h1>회원탈퇴</h1>
<h3>탈퇴하시면 복구못합니다</h3>
<form action="TEACHERS_delete" method="post">
아이디를 입력하세요<input type="text" name="id">
비밀번호를 입력하세요<input type="text" name="pw">	
<input type="submit" value="탈퇴">
</form>
</body>
</html>