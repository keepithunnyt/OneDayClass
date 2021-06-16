package contoller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.USERSDAO;
import DTO.USERSDTO;




@WebServlet("/USERS_login")
public class USERS_login extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		USERSDAO dao = new USERSDAO();
		USERSDTO dto = dao.login(id, pw);
		
		System.out.println("로그인 성공!");
		HttpSession session = request.getSession();
		session.setAttribute("NICK", dto.getId());

		
		// 보낼곳
		response.sendRedirect("courses.html");
	}

}
