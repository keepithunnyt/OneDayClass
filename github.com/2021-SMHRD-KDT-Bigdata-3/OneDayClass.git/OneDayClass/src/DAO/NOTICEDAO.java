package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import DTO.NOTICEDTO;



public class NOTICEDAO {

	Connection conn = null;
	PreparedStatement pst = null;
	int cnt = 0;
	ResultSet rs = null;
	NOTICEDTO dto = null;
	
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
		public int insert_notice(String n_title, String n_content) {
		
			//런타임 오류 : 실행 했을 때 발생하는 오류 -> 예외 처리
			try{
				conn();
				//sql 작성
				String sql="insert into notice(n_title,n_content) values (NOTICE_NNUM_SEQ.nextval,?,?,sysdate)";
				
				//PreparedStatement 객체 생성
				pst = conn.prepareStatement(sql);
				
				//바인드 변수(?) 채우기
				pst.setString(1, n_title);
				pst.setString(2,n_content);
				
				
				//sql문 실행
				 cnt = pst.executeUpdate();
						
			}catch(Exception e){
				e.printStackTrace();
				System.out.println("등록 실패");
			}finally{
				close();
			}
			return cnt;
		}// 메소드끝		
		
//		// 로그인 
//				public USERSDTO login(String id, String pw) {
//
//					try {
//						conn();
//
//						String sql = "select * from users where id=? and pw=?";
//
//						pst = conn.prepareStatement(sql);
//
//						pst.setString(1, id);
//						pst.setString(2, pw);
//
//						rs = pst.executeQuery();
//						if (rs.next()) {
//							String get_id = rs.getString("id");
//							String get_pw = rs.getString("pw");
//							String get_name = rs.getString("name");
//							String get_address = rs.getString("address");
//							String get_recomm = rs.getString("recomm");
//							
//							
//							dto = new USERSDTO(get_id, get_pw, get_name, get_address ,get_recomm);
//						}
//					} catch (Exception e) {
//						System.out.println("로그인 실패");
//						e.printStackTrace();
//					} finally {
//						close();
//					}
//					return dto;
//				}	

				//업데이트	
				public int update(int num) {
					
					//런타임 오류 : 실행 했을 때 발생하는 오류 -> 예외 처리
					try{
						conn();
						
						//sql 작성
						String sql="update notice set num=?";
							
						
						//PreparedStatement 객체 생성
						pst = conn.prepareStatement(sql);
						
						//바인드 변수(?) 채우기					
						pst.setInt(1, num);
						
						
						
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

				public int delete(int num) {
					
					//런타임 오류 : 실행 했을 때 발생하는 오류 -> 예외 처리
					try{
						conn();
						
						//sql 작성
						String sql="delete from notice where num = ?";
						
						//PreparedStatement 객체 생성
						pst = conn.prepareStatement(sql);
						
						//바인드 변수(?) 채우기
						pst.setInt(1, num);
						
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
