<%@page import="DAO.CLASSDAO"%>
<%@page import="DTO.CLASSDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.ENROLMENTDAO"%>
<%@page import="DTO.USERSDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<style>
.tableone{
border:2px solid #FEA698;
max-width: 100%;
}
.tableone> table th{
font-family:'NanumSquareRound';
color:#0D3B66;
}
.tableone> table td{
font-family:'NanumSquareRound';
color:#0D3B66;
}
		.table2{
			width:680px;
   			border: 2px solid #FEA698;
    		border-collapse: separate;
    		border-radius: 5px;
    		background-color: #FEA698;
			
		}
		.table2>table2 th td{
		border:1px solid #FEA698;
		font-family:'NanumSquareRound';
		padding:2px;
		}
		.table2>table2 input{
		font-family:'NanumSquareRound';
		color:#0D3B66;
		
		}
			th, td{
		background-color: white;
	}

</style>
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
	<% 
		CLASSDAO c_dao = new CLASSDAO();
		ENROLMENTDAO e_dao = new ENROLMENTDAO();
		ArrayList<CLASSDTO> c_arr = e_dao.allEnrolment(user.getId());
	%>
	<section class="contact-page spad pb-0">
		<div class="container">
			<div class="row">
				<div class="col-lg-8" style="max-width: 100%;">
					<div class="contact-form-warp" style="margin: auto; background-color: #F9EAE9; border-radius: 1%;">
						<div class="section-title text-white text-left">
							<h2 style="color:black;">개인정보 수정</h2>
							<p style="font-size:20px; color:#323232;">맞춤형 원데이클래스 강좌 추천을 위해 정확한 정보를 입력해주세요.</p>
							</div>
							<form action="USERS_update" class="contact-form" style="width:680px; background: white;"> 
							<table class="table1" style="width: 500px; margin:auto;">
							<tr><td colspan='2'><h3 style="color:#323232;">수강생 정보</h3></td></tr>
							<tr height="20px"></tr>
							<tr><td><h5 style="color:#323232;">아이디</h5></td><td><h5 style="color:#323232;">비밀번호</h5></td></tr>
							<tr height="10px"></tr>
							<tr><td><input disabled="disabled" type="text" class="id" value=<%=user.getId() %> name="id" style="width:290px;"> </td>
								<td><input type="password" class="pw" value=<%=user.getPw() %> name="pw" style="width:290px;"></td>
							</tr>
							<tr></tr>	
							<tr><td><h5 style="color:#323232;">이름</h5></td><td><h5 style="color:#323232;">전화번호</h5></td></tr>
							<tr height="10px"></tr>
							<tr><td><input disabled="disabled" type="text" class="name" value=<%=user.getName() %> name="name" style="width:290px;"></td>
								<td><input disabled="disabled" type="text" class="name" value=<%=user.getName() %> name="name" style="width:290px;"></td>
							</tr>
							<tr><td colspan='2'><h5 style="color:#323232;">주소</h5></td></tr>
							<tr height="10px"></tr>
							<tr><td colspan='2'><input type="text" class="address" value="<%=user.getAddress() %>" name="address" style="width:595px;"></td></tr>
															

							</table>
							<div style="margin: auto; width: 50%;">
								<input type="submit" class="site-btn4" id="edit" value="수정 완료" style="margin: auto; left:20px; color:#323232;">
								<input type="button" class="site-btn4" id="survey" value="성향 분석" onClick="location.href='hobby_survey.jsp'" style="margin: auto; left:20px; color:#323232;">
					
							</div>
					</form>
					<br>
							<h4 style="color:black;">수강 중인 강좌</h4>
							<br>
					<table class="table2" style="width:680px; border:2px solid #FEA698; border-radius:5px;">
                   	<thead>
                    <tr style="font-size: 15px; color:#323232; text-align: center;">
                    <th>강사 이름</th>
                    <th>강의 제목</th>
                    <th>강의 비용</th>
                    <th>강의 날짜</th>
                    <th></th>
               		</tr>
           		    </thead>
		            <tbody>
		            <%if(c_arr != null){  %>
		            <%for(int i = 0; i < c_arr.size(); i++){ %>
       	   			<tr align="center" style="color:#0D3B66; font-weight:600;">
                    <td><%=c_dao.findTeacher(c_arr.get(i).getId())  %></td>
                    <td><%=c_arr.get(i).getTitle() %></td>
                    <td><%=c_arr.get(i).getPrice() %></td>
                    <td><%=c_arr.get(i).getTime() %></td>
                    <td style="color:#0D3B66; font-weight:800;"> <input type="button" class="site-btn3" id="cancel" value="수강 취소" style="background-color:white; "></td>   
            		</tr>
            		<%} } %>
               		<tr align="center" style="color:#323232; font-weight:600;">
                    <td>develop</td>
                    <td>인공지능 융합서비스 <br> 개발자과정</td>
                    <td>파이썬 활용한 데이터 <br> 크롤링 및 딥러닝 </td>
                    <td>2021/06/22</td>
                    <td style="color:#323232; font-weight:800;"><input type="button" class="site-btn3" id="cancel" value="수강 취소" style="background-color:white; "></td>
                </tr>
                </tbody>
       			</table>
       			<br>
				<form action="delete_page.jsp" method="post">
				<input type="button" class="site-btn4" id="main" value="메인으로" onClick="location.href='main.jsp'" style="margin: auto; left:210px; color:#323232;">
				<input type="submit" class="site-btn4" value="회원 탈퇴" style="margin: auto; left:210px; color:#323232;">
				</form>
				</div>
				</div>
				</div>
				</div>
				</section>
</body>
</html>