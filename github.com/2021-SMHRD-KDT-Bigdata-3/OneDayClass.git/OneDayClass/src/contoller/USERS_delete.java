package contoller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import DAO.USERSDAO;


@WebServlet("/USERS_delete")
public class USERS_delete extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//한글 인코딩
				request.setCharacterEncoding("euc-kr");
				
				String id = request.getParameter("id");
				
				USERSDAO dao = new USERSDAO();
				int cnt = dao.delete(id);
				
				//insert 성공했을 경우에는 main.jsp로 이동, 실패했을 경우에는 join.jsp로 이동
				if(cnt>0){
					System.out.println("회원삭제 성공");
					//회원삭제 jsp로 이동해야함(현진아 변경해야해)
					response.sendRedirect("main.jsp");
					
					
				}else {
					System.out.println("회원삭제 실패");					
					response.sendRedirect("main.jsp");
				}
			}

	}


