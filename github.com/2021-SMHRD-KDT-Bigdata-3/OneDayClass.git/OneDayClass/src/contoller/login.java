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


@WebServlet("/login")
public class login extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String op = request.getParameter("op");
		
		if(op.equals("user")) {
			USERSDAO dao = new USERSDAO();
			USERSDTO dto = dao.login(id, pw);
			
			if(dto != null) {
				System.out.println("로그인 성공!");
				HttpSession session = request.getSession();
				session.setAttribute("NICK", dto.getId());
				response.sendRedirect("main.jsp");
			}else {
				System.out.println("로그인 실패!");
				response.sendRedirect("login_form.jsp");
			}
			
		}else {
			TEACHERSDAO dao = new TEACHERSDAO();
			TEACHERSDTO dto = dao.login(id, pw);
			
			if(dto != null) {
				System.out.println("로그인 성공!");
				HttpSession session = request.getSession();
				session.setAttribute("NICK", dto.getTeacher_id());
				response.sendRedirect("main.jsp");
			}else {
				System.out.println("로그인 실패!");
				response.sendRedirect("login_form.jsp");
			}
		}
		
		
		

	}

}
