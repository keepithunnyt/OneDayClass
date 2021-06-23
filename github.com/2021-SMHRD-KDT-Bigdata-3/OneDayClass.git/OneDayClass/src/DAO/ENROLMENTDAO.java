package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import DTO.CLASSDTO;
import DTO.ENROLMENTDTO;
import DTO.USERSDTO;
 


public class ENROLMENTDAO {
	Connection conn = null;
	PreparedStatement pst = null;
	int cnt = 0;
	ResultSet rs = null;
	ENROLMENTDTO dto = null;
	USERSDTO u_dto = null;
	CLASSDTO c_dto = null;
	 ArrayList<CLASSDTO> ClassArray = null;
	//데이터베이스 연결
		public void conn() {
			try {
				//jdbc 라이브러리 동적로딩
				Class.forName("oracle.jdbc.driver.OracleDriver");
				
				String url = "jdbc:oracle:thin:@localhost:1521:xe";
				String dbid = "hr";
				String dbpw = "hr";			
				//Connection 객체 생성
				conn = DriverManager.getConnection(url,dbid,dbpw);			
			}catch(Exception e) {
				e.printStackTrace();
			}	
		}//메소드 끝
		
		//닫아주기
		public void close() {
			try{
				if(rs!=null) {
					rs.close();				
				}
				pst.close();
				conn.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}//메소드끝		
		
		//수강신청
		public int enrolment(String id, String class_id) {
		
			//런타임 오류 : 실행 했을 때 발생하는 오류 -> 예외 처리
			try{
				conn();
				//sql 작성
				String sql="insert into ENROLMENT values (?,?,sysdate,?)";
				
				//PreparedStatement 객체 생성
				pst = conn.prepareStatement(sql);
				
				//바인드 변수(?) 채우기
				pst.setString(1,id);
				pst.setString(2,class_id);
				pst.setString(3,"attend");
			
				
				//sql문 실행
				 cnt = pst.executeUpdate();
						
			}catch(Exception e){
				e.printStackTrace();
				System.out.println("수강상태 실패");
			}finally{
				close();
			}
			return cnt;
		}// 메소드끝		
		
		// 로그인
				public ArrayList<CLASSDTO> allEnrolment(String id) {

					

						ClassArray = new ArrayList<CLASSDTO>();

					try {
						conn();

						String sql = "select * from class where class_id IN (select class_id from enrolment where id = ?)";

						pst = conn.prepareStatement(sql);

						pst.setString(1, id);

						rs = pst.executeQuery();

						

						while(rs.next()) {

							int get_id = rs.getInt("class_id");
							String get_teacher_id = rs.getString("teacher_id");
							String get_title = rs.getString("title");
							String get_content = rs.getString("content");
							String get_time = rs.getString("time");
							String get_price = rs.getString("price");
							String get_category = rs.getString("category");
							String get_image = rs.getString("image");
							String get_icon = rs.getString("icon");

							c_dto = new CLASSDTO(get_id, get_teacher_id, get_title, get_content, get_time, get_price, get_category,
									get_image, get_icon);
							System.out.println(get_id);
							ClassArray.add(c_dto);
						}
					} catch (Exception e) {
						System.out.println("수강신청 리스트 실패!");
						e.printStackTrace();
					} finally {
						close();
					}
					return ClassArray;
				}	

				//업데이트	
				public int update(int Class_id) {
					
					//런타임 오류 : 실행 했을 때 발생하는 오류 -> 예외 처리
					try{
						conn();
						
						//sql 작성
						String sql="update ENROLMENT set class_id=?";
							
						
						//PreparedStatement 객체 생성
						pst = conn.prepareStatement(sql);
						
						//바인드 변수(?) 채우기					
						pst.setInt(1, Class_id);
						
						
						
						//sql문 실행
						cnt = pst.executeUpdate();
						
						//insert 성공했을 경우에는 main.jsp로 이동, 실패했을 경우에는 join.jsp로 이동
						
					}catch(Exception e){
						e.printStackTrace();
						
					}finally{
						close();
					}
					return cnt;
					
				}
				// delect 메소드

				public int delete(int class_id) {
					
					//런타임 오류 : 실행 했을 때 발생하는 오류 -> 예외 처리
					try{
						conn();
						
						//sql 작성
						String sql="delete from ENROLMENT where class_id = ?";
						
						//PreparedStatement 객체 생성
						pst = conn.prepareStatement(sql);
						
						//바인드 변수(?) 채우기
						pst.setInt(1, class_id);
						
						//sql문 실행
						cnt = pst.executeUpdate();
							
					}catch(Exception e){
						e.printStackTrace();
						
					}finally{
						close();
					}
					return cnt;
				}
						
}
