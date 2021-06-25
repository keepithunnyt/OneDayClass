<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/style2.css">
<link rel="stylesheet" href="css/font.css"/>
<style>
.selcet division{
height:40px;
width:250px;
}
</style>
</head>

<body width="100%" height="100%">
	<form action="login" method="post" class="loginForm" name = "search1">
		<h2 style="color:black;">로그인</h2>
		<select class="division" name="op">
			<option value="user" class="user" style="color:#323232;">로그인 형태를 선택하세요</option>
			<option value="teacher" class="teacher">강사</option>
			<option value="user" class="user">일반</option>
		</select>
		<div class="idForm">
			<input type="text" class="id" placeholder="아이디를 입력하세요" name="id" style="color:#323232;" >
		</div>
		<div class="passForm">
			<input type="password" class="pw" placeholder="비밀번호를 입력하세요" name="pw" style="color:#323232;">
		</div>
		
		<button type="submit" class="btn" style="color:#323232;">로그인</button>
		
		<div class="bottomText">
			계정이 없다면? <a href="register_main.jsp" style="color:black;">회원가입</a>
		</div>
		<br>
		<div class="bottomText">
			<a href="main.jsp" style="color:black;">메인으로</a>
		</div>
	</form>
	
	
	<script src="js/jquery-3.6.0.js"></script>
	
	<script type="text/javascript">
		
	</script>
</body>
</html>