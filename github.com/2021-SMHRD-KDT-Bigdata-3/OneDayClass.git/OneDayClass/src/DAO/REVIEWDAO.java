package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

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
		public int insert_review(String id,int class_id , int rating, String comm) {
		
			//런타임 오류 : 실행 했을 때 발생하는 오류 -> 예외 처리
			try{
				conn();
				//sql 작성
				String sql="insert into review values (?,?,?,?,sysdate)";
				
				//PreparedStatement 객체 생성
				pst = conn.prepareStatement(sql);
				
				//바인드 변수(?) 채우기
				pst.setString(1,id);
				pst.setInt(2,class_id);
				pst.setInt(3,rating);				
				pst.setString(4,comm);
				
				
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
				public ArrayList<REVIEWDTO> review_select(int class_id) {
					ArrayList<REVIEWDTO> arr = new ArrayList<REVIEWDTO>();
					try {
						conn();

						String sql = "select * from REVIEW where class_id=? order by dates";

						pst = conn.prepareStatement(sql);

						pst.setInt(1, class_id); 
						

						rs = pst.executeQuery();
						while (rs.next()) {
							String get_id = rs.getString("id");
							int get_class_id = rs.getInt("class_id");
							int get_rating = rs.getInt("rating");
							String get_comm = rs.getString("comm");
							String get_dates = rs.getString("dates");
							
							
							dto = new REVIEWDTO(get_id, get_class_id, get_rating, get_comm, get_dates);
							arr.add(dto);
						}
					} catch (Exception e) {
						System.out.println("로그인 실패");
						e.printStackTrace();
					} finally {
						close();
					}
					return arr;
				}	

				
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
				
				public int delete_review(String id, int class_id, String comm) {
					
					//런타임 오류 : 실행 했을 때 발생하는 오류 -> 예외 처리
					try{
						conn();
						//sql 작성
						String sql="delete from review where id = ? and  class_id = ? and comm = ?";
						System.out.println(id + " " + class_id + " " + comm );
						//PreparedStatement 객체 생성
						pst = conn.prepareStatement(sql);
						
						//바인드 변수(?) 채우기
						pst.setString(1,id);
						pst.setInt(2,class_id);
						pst.setString(3,comm);				
						
						
						//sql문 실행
						 cnt = pst.executeUpdate();
						
					}catch(Exception e){
						e.printStackTrace();
						System.out.println("리뷰 삭제 실패");
					}finally{
						close();
					}
					return cnt;
				}
							
}
