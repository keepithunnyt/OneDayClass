<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/style2.css">
<link rel="stylesheet" href="font/NanumFontSetup_TTF_SQUARE_ROUND.css"/>
 
</head>

<body width="100%" height="100%">
	<form action="login" method="post" class="loginForm">
		<h2>로그인</h2>
		<select class="division" name="op">
			<option value="user" class="user">로그인 형태를 선택하세요</option>
			<option value="teacher" class="teacher">강사</option>
			<option value="user" class="user">일반</option>
		</select>
		<div class="idForm">
			<input type="text" class="id" placeholder="아이디를 입력하세요" name="id" >
		</div>
		<div class="passForm">
			<input type="password" class="pw" placeholder="비밀번호를 입력하세요" name="pw">
		</div>
		
		<button type="submit" class="btn">로그인</button>
		
		<div class="bottomText">
			계정이 없다면? <a href="register_main.jsp">회원가입</a>
		</div>
		<br>
		<div class="bottomText">
			<a href="main.jsp">메인으로</a>
		</div>
	</form>
	
	
	<script src="js/jquery-3.6.0.js"></script>
	
	<script type="text/javascript">
		
	</script>
</body>
</html>