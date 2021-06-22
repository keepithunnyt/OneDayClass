package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import DTO.TEACHERSDTO;
import DTO.USERSDTO;

public class TEACHERSDAO {
	Connection conn = null;
	PreparedStatement pst = null;
	int cnt = 0;
	ResultSet rs = null;
   TEACHERSDTO dto = null;
	
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
		
		//회원가입 
		public int insert_teachers(String id, String pw, String name, String tel) {
		
			//런타임 오류 : 실행 했을 때 발생하는 오류 -> 예외 처리
			try{
				conn();
				//sql 작성
				String sql="insert into TEACHERS values (?,?,?,?)";
				
				//PreparedStatement 객체 생성
				pst = conn.prepareStatement(sql);
				
				//바인드 변수(?) 채우기
				pst.setString(1,id);
				pst.setString(2,pw);
				pst.setString(3,name);
				pst.setString(4,tel);
				
				//sql문 실행
				 cnt = pst.executeUpdate();
						
			}catch(Exception e){
				e.printStackTrace();
				System.out.println("가입 실패");
			}finally{
				close();
			}
			return cnt;
		}// 메소드끝		
		
		// 로그인
				public TEACHERSDTO login(String id, String pw) {

					try {
						conn();

						String sql = "select * from teachers where teacher_id=? and teacher_pw=?";

						pst = conn.prepareStatement(sql);

						pst.setString(1, id);
						pst.setString(2, pw);

						rs = pst.executeQuery();
						if (rs.next()) {
							String get_id = rs.getString("teacher_id");
							String get_pw = rs.getString("teacher_pw");
							String get_name = rs.getString("teacher_name");
							String get_tel = rs.getString("tel");
						
							
							
							dto = new TEACHERSDTO(get_id, get_pw, get_name, get_tel);
						}
					} catch (Exception e) {
						System.out.println("로그인 실패");
						e.printStackTrace();
					} finally {
						close();
					}
					return dto;
				}	

				//업데이트	
				public int update(String pw,String tel, String teacher_id) {
					
					//런타임 오류 : 실행 했을 때 발생하는 오류 -> 예외 처리
					try{
						conn();
						
						//sql 작성
						String sql="update TEACHERS set teacher_pw=?, tel=? where teacher_id=?";
							
						
						//PreparedStatement 객체 생성
						pst = conn.prepareStatement(sql);
						
						//바인드 변수(?) 채우기					
						pst.setString(1,pw);
						pst.setString(2,tel);
						pst.setString(3,teacher_id);
						
						
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

				public int delete(String id, String pw) {
					
					//런타임 오류 : 실행 했을 때 발생하는 오류 -> 예외 처리
					try{
						conn();
						
						//sql 작성
						String sql="delete from TEACHERS where teacher_id = ? and teacher_pw = ?";
						
						//PreparedStatement 객체 생성
						pst = conn.prepareStatement(sql);
						
						//바인드 변수(?) 채우기
						pst.setString(1,id);
						pst.setString(2,pw);
						//sql문 실행
						cnt = pst.executeUpdate();
							
					}catch(Exception e){
						e.printStackTrace();
						
					}finally{
						close();
					}
					return cnt;
				}
				
				// 로그인
				public String who(String id) {
					String get_id = "";
					try {
						conn();

						String sql = "select teacher_name from teachers where teacher_id=?";

						pst = conn.prepareStatement(sql);

						pst.setString(1, id);
						
						rs = pst.executeQuery();
						if (rs.next()) {
							get_id = rs.getString("teacher_name"); 
						}
					} catch (Exception e) {
						System.out.println("로그인 실패");
						e.printStackTrace();
					} finally {
						close();
					}
					return get_id;
				}
				
						
}
