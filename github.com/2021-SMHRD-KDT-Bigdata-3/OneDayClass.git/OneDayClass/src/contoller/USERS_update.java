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

 

@WebServlet("/USERS_update")
public class USERS_update extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//한글 인코딩
				request.setCharacterEncoding("euc-kr");
				
				//update.jsp에서 보낸 값을 변수에 담기
						String pw = request.getParameter("pw");
						String address = request.getParameter("address");
						
						
						//수정해야할 사용자의 정보를 알기위해 세션값 가져오기
						HttpSession session = request.getSession();
						USERSDTO u_dto = (USERSDTO)session.getAttribute("login");
						
						USERSDAO u_dao = new USERSDAO();
						int cnt = u_dao.update(pw, address);
						
						if(cnt>0){
							System.out.println("회원 정보 수정 성공");
							USERSDTO u_dto2 =new USERSDTO(u_dto.getId(),pw, u_dto.getName(), address, u_dto.getRecomm());
							session.setAttribute("login", u_dto2);				
							response.sendRedirect("mypage_user.jsp");
							
						}else {
							System.out.println("회원 정보 수정 실패");
							response.sendRedirect("mypage_user.jsp");
						}
	}

}
