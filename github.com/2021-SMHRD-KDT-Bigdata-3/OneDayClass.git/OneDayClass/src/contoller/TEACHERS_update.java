package contoller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.TEACHERSDAO;

import DTO.TEACHERSDTO;

 

@WebServlet("/TEACHERS_update")
public class TEACHERS_update extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글 인코딩
		request.setCharacterEncoding("euc-kr");
		
		//update.jsp에서 보낸 값을 변수에 담기
				String pw = request.getParameter("pw");
				String tel = request.getParameter("tel");
				
				
				//수정해야할 사용자의 정보를 알기위해 세션값 가져오기
				HttpSession session = request.getSession();
				TEACHERSDTO t_dto = (TEACHERSDTO)session.getAttribute("login");
				
				TEACHERSDAO t_dao = new TEACHERSDAO();
				int cnt = t_dao.update(pw, tel);
				
				if(cnt>0){
					System.out.println("회원 정보 수정 성공");
					TEACHERSDTO t_dto2 =new TEACHERSDTO(t_dto.getTeacher_id(), pw, t_dto.getTeacher_name(), tel);
					session.setAttribute("login", t_dto2);				
					response.sendRedirect("mypage_teacher.jsp");
					
				}else {
					System.out.println("회원 정보 수정 실패");
					response.sendRedirect("mypage_teacher.jsp");
				}	
		
		
		
	}

}
