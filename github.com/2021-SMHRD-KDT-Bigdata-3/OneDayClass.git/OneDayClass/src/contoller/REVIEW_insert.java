package contoller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.CLASSDAO;
import DAO.REVIEWDAO;
 

@WebServlet("/REVIEW_insert")
public class REVIEW_insert extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		request.setCharacterEncoding("euc-kr");
		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		System.out.println(id);
		int rating = Integer.parseInt(request.getParameter("rating"));
		System.out.println(rating);
		String comm = request.getParameter("comm");
		System.out.println(comm);
		int class_id = Integer.parseInt(request.getParameter("class_id"));
		System.out.println(class_id);
		
		
		
		
		int cnt = 0;

		
		REVIEWDAO r_dao = new REVIEWDAO();
		cnt = r_dao.insert_review(id,class_id ,rating, comm);

		if (cnt > 0) {
			//System.out.println("회원가입 성공!");
			request.setAttribute("id", id);
			request.setAttribute("class_id", class_id);
			request.setAttribute("rating", rating);
			request.setAttribute("comm", comm);
			
			
 
			// 로그인 페이지로 이동
			//등록한페이지로 이동해야함
			RequestDispatcher rd = request.getRequestDispatcher("class_detail.jsp");
			//rd.forward(request, response);
			System.out.println("db에 들어감");
		}else {
			//등록실패한 페이지로 이동해야함
			response.sendRedirect("class_detail.jsp");
			System.out.println("안들감");
		}
	}

}
