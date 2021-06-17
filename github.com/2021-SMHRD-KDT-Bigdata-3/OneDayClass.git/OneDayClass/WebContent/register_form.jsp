<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" type="text/css" href="./css/style2.css">
 <link rel="stylesheet" type="text/css" href="./css/style3.css">
<title>Insert title here</title>
</head>
<body width="100%" height="100%">
        <form action="join" method="post" class="registerForm">
          <h2>회원가입</h2>
          <select class="division" name="op">
			<option value="user" class="user">로그인 형태를 선택하세요</option>
			<option value="teacher" class="teacher">강사</option>
			<option value="user" class="user">일반</option>
		</select>
          <div class="idForm">
            <input type="text" class="id" placeholder="아이디를 입력하세요">
          </div>
          <div class="passForm">
            <input type="password" class="pw" placeholder="비밀번호를 입력하세요">
          </div>
          <div class="nickForm">
            <input type="text" class="name" placeholder="이름을 입력하세요">
          </div>
          <div class="telForm">
            <input type="text" class="address" placeholder="거주지를 입력하세요">
          </div>
          <script>
              let button = () => {
                alert('회원가입 버튼 실행!')
            }
          </script>
          <button type="button" class="btn" onclick="button()">
            가입하기
          </button>
          <div class="bottomText">
            계정이 있다면? <a href="login_form.jsp">로그인</a>
          </div>
          <br>
          <div class="bottomText">
            <a href="main.jsp">메인으로</a>
          </div>
        </form>
      </body>
</html>