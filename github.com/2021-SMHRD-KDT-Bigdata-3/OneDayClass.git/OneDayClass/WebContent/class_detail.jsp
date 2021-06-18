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
	
	
%>
<fieldset>
<legend>강의 상세</legend>
<form action="">
<table>
	<tr>
		<td>클래스번호</td>
		<td></td>
	</tr>
	<tr>
		<td>강사명</td>
		<td></td>
	</tr>
	<tr>
		<td>내용</td>
		<td></td>
	</tr>
	<tr>
		<td>시간</td>
		<td></td>
	</tr>
	<tr>
		<td>비용</td>
		<td></td>
	</tr>
	<tr>
		<td>카테고리</td>
		<td></td>
	</tr>
	<tr>
		<td>이미지</td>
		<td></td>
	</tr>
	<tr>
		<td>클래스번호</td>
		<td></td>
	</tr>





</table>
</form>
</fieldset>
</body>
</html>