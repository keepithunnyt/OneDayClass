package contoller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.ENROLMENTDAO;
import DTO.USERSDTO;

/**
 * Servlet implementation class ENROL_insert
 */
@WebServlet("/ENROL_insert")
public class ENROL_insert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("euc-kr");
		
		HttpSession session = request.getSession();
		
		USERSDTO user = (USERSDTO)session.getAttribute("login");
		
		String id = user.getId();
		String class_id = request.getParameter("class_id");
		
		ENROLMENTDAO e_dao = new ENROLMENTDAO();
		int cnt = 0;
		cnt = e_dao.enrolment(id, class_id);
		
		if(cnt > 0) {
			System.out.println("수강 신청 완료");
			response.sendRedirect("main.jsp");
		}else {
			System.out.println("수강 신청 실패");
			response.sendRedirect("main.jsp");
		}
		
	}

}
