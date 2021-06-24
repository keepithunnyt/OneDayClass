<%@page import="DAO.REVIEWDAO"%>
<%@page import="DTO.USERSDTO"%>
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
		session = request.getSession();
	
		String id = ((USERSDTO)session.getAttribute("login")).getId();
		String class_id = request.getParameter("class_id");
		String dates = request.getParameter("comm");
		
		REVIEWDAO r_dao = new REVIEWDAO();
		int cnt = 0;
		cnt = r_dao.delete_review(id, Integer.parseInt(class_id), dates);
		if(cnt > 0){
			response.sendRedirect("class_detail.jsp?class_id=" + class_id);
		}
		
	%>

</body>
</html>