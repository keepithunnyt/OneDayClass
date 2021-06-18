package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import DTO.REVIEWDTO;



public class REVIEWDAO {

	Connection conn = null;
	PreparedStatement pst = null;
	int cnt = 0;
	ResultSet rs = null;
    REVIEWDTO dto = null;
	
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
		public int insert_review(String id, int rating, String comm) {
		
			//런타임 오류 : 실행 했을 때 발생하는 오류 -> 예외 처리
			try{
				conn();
				//sql 작성
				String sql="insert into review(ID, rating, comm) values (?,CLASS_CID_SEQ.Nextval,?,?,sysdate)";
				
				//PreparedStatement 객체 생성
				pst = conn.prepareStatement(sql);
				
				//바인드 변수(?) 채우기
				pst.setString(1,id);
				pst.setInt(2,rating);
				pst.setString(3,comm);
				
				
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
		
		// 로그인 리뷰 보기 나중
//				public REVIEW login(String id, String pw) {
//
//					try {
//						conn();
//
//						String sql = "select * from REVIEW where id=? and pw=?";
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

				
				// 리뷰 삭제 delect 메소드

				public int delete(int class_id) {
					
					//런타임 오류 : 실행 했을 때 발생하는 오류 -> 예외 처리
					try{
						conn();
						
						//sql 작성
						String sql="delete from review where class_id = ?";
						
						//PreparedStatement 객체 생성
						pst = conn.prepareStatement(sql);
						
						//바인드 변수(?) 채우기
						pst.setInt(1,class_id);
						
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
