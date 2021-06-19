package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import DTO.CLASSDTO;


public class CLASSDAO {
	Connection conn = null;
	PreparedStatement pst = null;
	int cnt = 0;
	ResultSet rs = null;
    CLASSDTO dto = null;
    ArrayList<CLASSDTO> classArray = null;
	
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
		public int insert_class(String id, String title, String content, String time,
				String place,String category,String image) {
		
			//런타임 오류 : 실행 했을 때 발생하는 오류 -> 예외 처리
			try{
				conn();
				//sql 작성
				String sql="insert into class(teacher_id,title,content,time,place,category,image) "
						+ "values(CLASS_CID_SEQ.Nextval,?,?,?,?,?,?,?)";
				
				//PreparedStatement 객체 생성
				pst = conn.prepareStatement(sql);
				
				//바인드 변수(?) 채우기
				pst.setString(1,id);
				pst.setString(2,title);
				pst.setString(3,content);
				pst.setString(4,time);
				pst.setString(5,place);
				pst.setString(6,category);
				pst.setString(7,image);
				
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
		

				//업데이트	
				public int update(String title,String content,String time,String place,
						String category,String image) {
					
					//런타임 오류 : 실행 했을 때 발생하는 오류 -> 예외 처리
					try{
						conn();
						
						//sql 작성
						String sql="update USERS set title=?, content=?, time=?, place=?"
								+ "category=? , image=?";
							
						
						//PreparedStatement 객체 생성
						pst = conn.prepareStatement(sql);
						
						//바인드 변수(?) 채우기					
						pst.setString(1,title);
						pst.setString(2,content);
						pst.setString(3,time);
						pst.setString(4,place);
						pst.setString(5,category);
						pst.setString(6,image);
						
						
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

				public int delete(int id) {
					
					//런타임 오류 : 실행 했을 때 발생하는 오류 -> 예외 처리
					try{
						conn();
						
						//sql 작성
						String sql="delete from CLASS where class_id = ?";
						
						//PreparedStatement 객체 생성
						pst = conn.prepareStatement(sql);
						
						//바인드 변수(?) 채우기
						pst.setInt(1,id);
						
						//sql문 실행
						cnt = pst.executeUpdate();
							
					}catch(Exception e){
						e.printStackTrace();
						
					}finally{
						close();
					}
					return cnt;
				}
				
		public ArrayList<CLASSDTO> Select_class(int teacher_id) {
		
			//런타임 오류 : 실행 했을 때 발생하는 오류 -> 예외 처리
			try{
				conn();
				//sql 작성
				String sql="select * from class where teacher_id = ?";
				
				//PreparedStatement 객체 생성
				pst = conn.prepareStatement(sql);
				
				//바인드 변수(?) 채우기
				pst.setInt(1,teacher_id);
				
				//sql문 실행
				rs = pst.executeQuery(sql);
				
				classArray = new ArrayList<CLASSDTO>();
				while(rs.next()) {
					CLASSDTO classDto = new CLASSDTO(rs.getInt("class_id"),
							rs.getString("teacher_id"), rs.getString("title")
							, rs.getString("content"), rs.getString("time"),
							rs.getString("price"), rs.getString("category"), rs.getString("image"));
					classArray.add(classDto);
				}
						
			}catch(Exception e){
				e.printStackTrace();
				System.out.println("불러오기 실패");
			}finally{
				close();
			}
			return classArray;
		}// 메소드끝	
}
