package contoller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.CLASSDAO;

import DTO.CLASSDTO;

 

@WebServlet("/CLASS_select")
public class CLASS_select extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//한글 인코딩
		request.setCharacterEncoding("euc-kr");
		//join.jsp에서 보낸 값을 변수에 담기
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		
		CLASSDAO c_dao = new CLASSDAO();
		CLASSDTO c_dto = c_dao.allselect(id);
		
		//session객체 생성
		HttpSession session = request.getSession();
		session.setAttribute("CLASS", c_dto);
		response.sendRedirect("class_datil.jsp");
		
		
	}

}
