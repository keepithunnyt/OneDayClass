<%@page import="DTO.CLASSDTO"%>
<%@page import="DAO.CLASSDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/font-awesome.min.css" />
	<link rel="stylesheet" href="css/owl.carousel.css" />
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/style2.css" />
	<link rel="stylesheet" href="css/style3.css" />
<title>Insert title here</title>
<style>
		.tabletwo > table tr{
			height: 30px;
		}
		.tabletwo > table{
			width:600px;
			border: 2px solid #FEA698;
			border-collapse: separate;
			border-radius: 12px;
			padding:10px;
			position:absolute;
			
			left : 35%;
			
		}
		.table_content{
			max-width : 30%;
		
		}
		th {
        color : #FEA698;
        font-size : 20px;
        
      }
      td.teacher {
        color : #8B4513;
        font-size : 16px;
        font-weight: bold;
      }
      td {
        color : #8B4513;
        font-size : 16px;
        
      }
      th.title{
      	font-size : 24px;
      	color: #CD5C5C;
      }
	</style>
</head>
<body>
<% 
	CLASSDAO c_dao =  new CLASSDAO();
	int class_id = Integer.parseInt(request.getParameter("class_id"));
	
	CLASSDTO c_dto = c_dao.allselect(class_id);
	//CLASSDTO c_dto = new CLASSDTO(1, "1", "안현진", "내용", "시간", "비용", "카테고리", "이미지");
	
%>
<form>
<br>
<div class="home">
<a href="main.jsp"><img style="width:60px; height:60px;" class = "home-logo" src="img/home_btn.png"></a>
</div>
<br>
<div class = "tabletwo">
<table class = 'table_content'>
<colgroup>
<col style="width:30%;">
<col style="width:70%;">
</colgroup>
	<tr>
	<td colspan = '2'>
	<img alt="뭔가 안됐음" src=<%=c_dto.getImage() %>></td>
	</tr>
	<tr>
	</tr>

	<tr bgcolor="white">
	<th colspan = '2'><%=c_dto.getCategory() %></th>
	</tr>
	
	
	<tr>
	<th class ='title' colspan = '2'><%=c_dto.getTitle() %></th>
	</tr>
	
	<tr align="right" bgcolor="white">
		
		<td class = 'teacher' colspan = '2' ><%=c_dto.getTeacher_id() %> 강사</td> 
	</tr>
	<tr>
	<td colspan = "2"><hr style = "border: 1px solid #FEA698;"></td>
	</tr>
	

	
	<tr align="center" bgcolor="white">
		<td colspan = "2" style = "font-weight: bold;">강좌 소개</td>
		
	</tr>
	<tr><td colspan = "2"><%=c_dto.getContent() %></td></tr>

	

	
	<tr align="center" bgcolor="white">
		<td style = "font-weight: bold;">시간</td>
		<td><%=c_dto.getTime() %></td>
	</tr> 
	

	

	
	<tr align="center" bgcolor="white">
		<td style = "font-weight: bold;">비용</td>
		<td><%=c_dto.getPrice() %></td>
	</tr>
	<tr></tr>
	<tr><td colspan = "2" align = "center" style = "color: #FEA698; font-weight: bold;"><a href="#">문의하기</a></td></tr>
	</table>
</div>



</form>


</body>
</html>