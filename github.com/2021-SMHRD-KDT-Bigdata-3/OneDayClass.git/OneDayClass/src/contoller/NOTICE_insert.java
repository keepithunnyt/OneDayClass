package contoller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.CLASSDAO;
import DAO.NOTICEDAO;

 
@WebServlet("/NOTICE_insert")
public class NOTICE_insert extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
		request.setCharacterEncoding("euc-kr");

		String n_title = request.getParameter("n_title");
		String content = request.getParameter("content");
	

		int cnt = 0;

		
		NOTICEDAO n_dao = new NOTICEDAO();
		cnt = n_dao.insert_notice(n_title, content);

		if (cnt > 0) {
			System.out.println("회원가입 성공!");
			request.setAttribute("n_title", n_title);
			request.setAttribute("content", content);
		
			

			// 로그인 페이지로 이동
			//등록한페이지로 이동해야함
			RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
			rd.forward(request, response);

		}else {
			//등록실패한 페이지로 이동해야함
			response.sendRedirect("main.jsp");
		}
	}

}
