package contoller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.CLASSDAO;
import DAO.USERSDAO;
import DTO.TEACHERSDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/CLASS_insert")
public class CLASS_insert extends HttpServlet {
	
 
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		HttpSession session = request.getSession();

		TEACHERSDTO teacher = (TEACHERSDTO) session.getAttribute("login");
		String id = teacher.getTeacher_id();
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String time = request.getParameter("time");
		String price = request.getParameter("price");
		String category = request.getParameter("category");
		String image = "img/" + request.getParameter("img");
		String icon = "img/" + request.getParameter("img");
		System.out.println(id + " " + title + " " + content + " " + time + " " + price + " " + category + " " + image);
		int cnt = 0;

		CLASSDAO c_dao = new CLASSDAO();
		cnt = c_dao.insert_class(id, title, content, time, price, category, image, icon);

		if (cnt > 0) {
			System.out.println("글 작성 성공!");

			// 로그인 페이지로 이동
			//등록한페이지로 이동해야함
			RequestDispatcher rd = request.getRequestDispatcher("mypage_teacher.jsp");
			rd.forward(request, response);

		}else {
			//등록실패한 페이지로 이동해야함
			response.sendRedirect("mypage_teacher2.jsp");
		}
		
	}

}
