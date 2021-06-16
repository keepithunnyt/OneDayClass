package contoller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.TEACHERSDAO;
import DAO.USERSDAO;
import DTO.TEACHERSDTO;
import DTO.USERSDTO;


@WebServlet("/TEACHERS_login")
public class TEACHERS_login extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			
			request.setCharacterEncoding("euc-kr");

			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			
			TEACHERSDAO dao = new TEACHERSDAO();
			TEACHERSDTO dto = dao.login(id, pw);
			
			System.out.println("로그인 성공!");
			HttpSession session = request.getSession();
			session.setAttribute("NICK", dto.getTeacher_id());

			
			// 보낼곳
			response.sendRedirect("courses.html");
		
	}

}
