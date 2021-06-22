<%@page import="DTO.TEACHERSDTO"%>
<%@page import="DAO.TEACHERSDAO"%>
<%@page import="DTO.CLASSDTO"%>
<%@page import="DAO.CLASSDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font.css"/>
	<link rel="stylesheet" href="css/owl.carousel.css"/>
	<link rel="stylesheet" href="css/style.css"/>
	<link rel="stylesheet" href="css/style2.css" />
	<link rel="stylesheet" href="css/style3.css"/>
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/font-awesome.min.css" />
	
<title>Insert title here</title>
<style>
		.tabletwo > table tr{
			height: 30px;
		} 

		.table_content{
			
			border: 3px solid #FEA698;
			border-collapse: separate;
			border-radius: 12px;
			padding:10px;
			max-width : 30%;
			margin: auto;
		
		}
		th {
        color : #0D3B66;
        font-size : 20px;
        font-family:'NanumSquareRound'
        
      }
      td.teacher {
        color : #0D3B66;
        font-size : 18px;
        font-family:'NanumSquareRound'
      }
      td {
        color : #0D3B66;
        font-size : 18px;
        font-family:'NanumSquareRound'
        
      }
      th.title{
      	font-size : 24px;
      	color: #3A2618;
      	font-family:'NanumSquareRound'
      }
	</style>
</head>
<body>
<% 
	CLASSDAO c_dao =  new CLASSDAO();
	int class_id = Integer.parseInt(request.getParameter("class_id"));
	TEACHERSDAO t_dao = new TEACHERSDAO();
	CLASSDTO c_dto = c_dao.allselect(class_id);
	
	request.setAttribute("class_id", c_dto.getId());
	String content = c_dto.getContent();
	content = content.replaceAll("\n", "<br>");
	
%>

<form action="main.jsp" method="post">
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
	
	<tr bgcolor="white">
	<th colspan = '2'><%=c_dto.getCategory() %></th>
	</tr>

	<tr>
	<th class ='title' colspan = '2'><%=c_dto.getTitle() %></th>
	</tr>
	<tr>
	<td style="width: 300px;"></td>
	
	<td><div align="right" class="ca-pic set-bg" data-setbg= <%=c_dto.getIcon() %> style="width: 50px;
	height: 50px;
	border-radius: 50%;
	background-image: url(<%=c_dto.getIcon() %>); display: inilne; margin-left:auto"></div></td>
	</tr>
	
	<tr align="right" bgcolor="white">
		
		<td class = 'teacher' colspan = '2' ><%=t_dao.who(c_dto.getTeacher_id()) %> 강사</td> 
	</tr>
	<tr>
	<td colspan = "2"><hr style = "border: 1px solid #FEA698;"></td>

	</tr>
	
	<tr align="center" bgcolor="white">
		<td colspan = "2" style = "font-weight: 800;">강좌 소개</td>
		
	</tr>
	<tr><td colspan = "2"><%=content %></td></tr>

	<tr align="center" bgcolor="white" style = "font-weight: 800;">
		<td >시간</td>
		<td><%=c_dto.getTime() %></td>
	</tr>

	<tr align="center" bgcolor="white" style = "font-weight: 800;">
		<td>비용</td>
		<td><%=c_dto.getPrice() %></td>
	</tr>
	<tr></tr>
	<tr><td colspan = "2" align = "center">
	<input type="button" class="site-btn" name="apply" value="클래스 신청하기" >
	
	</td></tr> 
	</table>
</div>

</form>
	<script src="js/jquery-3.6.0.js"></script>
	<script>
		$('input:button').on('click', function(){
			
			$.ajax({
				url:"ENROL_insert",
				type : 'POST',
				data : {
					'class_id' : <%=class_id %>
				},
				success : function(){
					alert('수강신청 완료');
					window.location.href =  'main.jsp';
				}
			});
			
		});
	</script>
</body>
</html>