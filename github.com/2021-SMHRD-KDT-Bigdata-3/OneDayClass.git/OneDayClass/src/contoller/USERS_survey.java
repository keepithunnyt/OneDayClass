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

/**
 * Servlet implementation class USERS_survey
 */
@WebServlet("/USERS_survey")
public class USERS_survey extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		
		USERSDTO user = (USERSDTO) session.getAttribute("login");
		String id = user.getId();
		String result = request.getParameter("result");
		
		USERSDAO u_dao = new USERSDAO();
		u_dao.survey(id, result);
		
		user.setRecomm(result);
		session.setAttribute("login", user);
		
		response.sendRedirect("main.jsp");		
		
	}

}
