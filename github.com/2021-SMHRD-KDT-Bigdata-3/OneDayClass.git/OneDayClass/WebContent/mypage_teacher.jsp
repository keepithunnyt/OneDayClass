<%@page import="DTO.CLASSDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.CLASSDAO"%>
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
	
	<style>
		.tableone > table tr{
			height: 30px;
		}
		.tableone > table{
			width:600px;
			border: 2px solid #FEA698;
			border-collapse: separate;
			border-radius: 12px;
			padding:10px;
		}
	</style>
</head>
<body>	
	<% 
	TEACHERSDTO teacher = (TEACHERSDTO)session.getAttribute("login");
	CLASSDAO dao = new CLASSDAO();
	ArrayList<CLASSDTO> classArray = dao.Select_class(Integer.parseInt(teacher.getTeacher_id()));
	%>	
	<section class="contact-page spad pb-0">
		<div class="container" >
			<div class="row">
				<div class="col-lg-8">
					<div class="contact-form-warp">
						<div class="section-title text-white" >
							<h2>개인정보 수정</h2>
							<p>맞춤형 원데이클래스 강좌 개설을 위해 정확한 정보를 입력해주세요</p>
						</div>
						<form action="TEACHERS_update" class="contact-form">
<<<<<<< HEAD
							<h3>개인 정보 수정</h3>
=======
							<h4>개인 정보</h4>
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-Bigdata-3/OneDayClass.git
							<br> <input disabled="disabled" type="text" class="id" value=<%=teacher.getTeacher_id() %> name="id">
							<input type="password" class="pw" value=<%=teacher.getTeacher_pw() %> name="pw">
							<input disabled="disabled" type="text" class="name" value=<%=teacher.getTeacher_name() %> name="name"> 
							<input type="text" class="tel" value=<%= teacher.getTel() %> name="tel"> 
							 <input type="submit" class="site-btn4" id="edit" value="수정 완료"> 
							 <input type="button" class="site-btn4" id="main" value="메인으로" onClick="location.href='main.jsp'">
								<br><br><br><br>
					<h4>강좌 정보</h4>
					<br>
					<div class="tableone">
					<table>
                    <thead>
                    <tr align="center" bgcolor="white" color="">
                    <th>아이디</th>
                    <th>제목</th>
                    <th>카테고리</th>
                    <th>가격</th>
                    <th></th>
               		</tr>
           		    </thead>
		            <tbody>
        	        <tr align="center" bgcolor="white">
                    <td>smart</td>
                    <td>기획총괄</td>
                    <td>JAVA</td>
                    <td>2021/06/18</td>
                    <td> <input type="button" class="site-btn3" id="cancel" value="수강 취소"></td>   
            	</tr>
               		<tr align="center" bgcolor="white">
                    <td>develop</td>
                    <td>개발총괄</td>
                    <td>PYTHON</td> 
                    <td>2021/06/18</td>
                    <td><input type="button" class="site-btn3" id="cancel" value="수강 취소"></td>
                </tr>
                <%if(classArray != null) {%>
                <%for(int i = 0; i < classArray.size(); i++){ %>
                	
               		<tr align="center" bgcolor="white">
                    <td> <%=classArray.get(i).getId() %> </td>
                    <td> <%=classArray.get(i).getTitle() %> </td>
                    <td> <%=classArray.get(i).getCategory() %></td> 
              	    <td> <%=classArray.get(i).getPlace() %></td>
                    <td><input type="button" class="site-btn3" id="cancel" value="수강 취소"></td>
                </tr>
                	
                <%} }%>
            </tbody>
        </table>
        </div>
         <br>
        <input type="button" class="site-btn4" id="enroll" value="수강 등록" onClick="location.href='mypage_teacher2.jsp'">
        <input type="button" class="site-btn4" id="leave" value="회원 탈퇴" onClick="location.href='mypage_teacher2.jsp'">
							
						</form>
					</div>
				</div>
	</section>
</body>
</html>