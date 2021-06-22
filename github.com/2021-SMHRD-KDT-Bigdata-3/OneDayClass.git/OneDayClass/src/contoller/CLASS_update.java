package contoller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.CLASSDAO;
import DAO.USERSDAO;
import DTO.CLASSDTO;
import DTO.USERSDTO;

 
@WebServlet("/CLASS_update")
public class CLASS_update extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글 인코딩
		request.setCharacterEncoding("euc-kr");
		
		//update.jsp에서 보낸 값을 변수에 담기
		
				String title = request.getParameter("title");
				String content = request.getParameter("content");
				String time = request.getParameter("time");
				String place = request.getParameter("place");
				String category = request.getParameter("category");
				String image = request.getParameter("image");
				String icon =  request.getParameter("icon");
				
				
				//수정해야할 사용자의 정보를 알기위해 세션값 가져오기
				HttpSession session = request.getSession();
				CLASSDTO c_dto = (CLASSDTO)session.getAttribute("CLASS");
				
				CLASSDAO c_dao = new CLASSDAO();
				int cnt = c_dao.update(title, content, time, place, category, image);
				
				if(cnt>0){
					System.out.println("클래스 수정 성공");
					CLASSDTO c_dto2 =new CLASSDTO(c_dto.getId(),c_dto.getTeacher_id(), title, content,time, place,  category, image, icon);
					session.setAttribute("CLASS", c_dto2);				
					response.sendRedirect("main.jsp");
					
				}else {
					System.out.println("클래스 수정 실패");
					response.sendRedirect("main.jsp");
				}
	}

}
