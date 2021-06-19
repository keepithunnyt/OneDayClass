<%@page import="DTO.CLASSDTO"%>
<%@page import="DAO.CLASSDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	CLASSDAO c_dao =  new CLASSDAO();
	int class_id = Integer.parseInt(request.getParameter("class_id"));
	
	CLASSDTO c_dto = c_dao.allselect(class_id);
%>
<fieldset>
<legend>강의 상세</legend>
<form>
<table>
	<tr>
		<td>클래스번호</td>
		<td><%=c_dto.getId() %></td>
	</tr>
	<tr>
		<td>강사명</td>
		<td><%=c_dto.getTeacher_id() %></td> 
	</tr>
	<tr>
		<td>내용</td>
		<td><%=c_dto.getContent() %></td>
	</tr>
	<tr>
		<td>시간</td>
		<td><%=c_dto.getTime() %></td>
	</tr>
	<tr>
		<td>비용</td>
		<td><%=c_dto.getPrice() %></td>
	</tr>
	<tr>
		<td>카테고리</td>
		<td><%=c_dto.getCategory() %></td>
	</tr>
	<tr>
		<td>이미지</td>
		<td> <img alt="뭔가 안됐음" src=<%=c_dto.getImage() %>> </td>
		
	</tr>
	





</table>
</form>
</fieldset>
</body>
</html>