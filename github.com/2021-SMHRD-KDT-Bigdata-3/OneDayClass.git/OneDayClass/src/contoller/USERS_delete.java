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

 
@WebServlet("/USERS_delete")
public class USERS_delete extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		USERSDTO user = (USERSDTO)session.getAttribute("login"); 
		//한글 인코딩
				request.setCharacterEncoding("euc-kr");
				
				String id = request.getParameter("id");
				String pw = request.getParameter("pw");
				USERSDAO dao = new USERSDAO();
				int cnt = dao.delete(id,pw);
				//insert 성공했을 경우에는 main.jsp로 이동, 실패했을 경우에는 join.jsp로 이동
				if(cnt>0){
					System.out.println("회원삭제 성공");
					//회원삭제 jsp로 이동해야함(현진아 변경해야해)
					
					//세션 전체 삭제
					session.invalidate();
				
					response.sendRedirect("main.jsp");
					
					
				}else {
					System.out.println("회원삭제 실패");					
					response.sendRedirect("main.jsp");
				}
			}

	}


