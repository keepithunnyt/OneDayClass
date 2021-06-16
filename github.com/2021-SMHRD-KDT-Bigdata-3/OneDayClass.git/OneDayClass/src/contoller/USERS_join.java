package contoller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.USERSDAO;




@WebServlet("/USERS_join")
public class USERS_join extends HttpServlet {
	

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("euc-kr");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
	
		
		
		USERSDAO u_dao = new USERSDAO();
		int cnt = u_dao.insert_users(id, pw, name, address);
		
		if (cnt > 0) {
			System.out.println("회원가입 성공!");
			request.setAttribute("id", id);
			request.setAttribute("pw", pw);
			request.setAttribute("name", name);
			request.setAttribute("address", address);
			
																//로그인 페이지로 이동
			RequestDispatcher rd = request.getRequestDispatcher("courses.html");
			rd.forward(request, response);

		}
		
		
		
	}

}
