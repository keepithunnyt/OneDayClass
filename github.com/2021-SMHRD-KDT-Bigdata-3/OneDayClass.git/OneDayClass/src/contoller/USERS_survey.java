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


@WebServlet("/USERS_survey")
public class USERS_survey extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.addHeader("Access-control-Allow-Origin", "*");
		HttpSession session = request.getSession();
		
		USERSDTO user = (USERSDTO) session.getAttribute("login");
		String id = user.getId();
		String result = request.getParameter("result");
		
		USERSDAO u_dao = new USERSDAO();
		u_dao.survey(id, result);
		System.out.println(result);
		user.setRecomm(result);
		session.setAttribute("login", user);
		
		response.sendRedirect("main.jsp");		
		
	}

}
