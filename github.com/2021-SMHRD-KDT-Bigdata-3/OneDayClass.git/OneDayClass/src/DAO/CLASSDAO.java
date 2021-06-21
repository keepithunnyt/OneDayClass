package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import DTO.CLASSDTO;
import DTO.TEACHERSDTO;

public class CLASSDAO {
	Connection conn = null;
	PreparedStatement pst = null;
	int cnt = 0;
	ResultSet rs = null;
	CLASSDTO dto = null;
	ArrayList<CLASSDTO> classArray = null;

	TEACHERSDTO t_dto = null;
	ArrayList<CLASSDTO> arr = new ArrayList<CLASSDTO>();

	// 데이터베이스 연결
	public void conn() {
		try {
			// jdbc 라이브러리 동적로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";
			// Connection 객체 생성
			conn = DriverManager.getConnection(url, dbid, dbpw);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}// 메소드 끝

	// 닫아주기
	public void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			pst.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}// 메소드끝

	// 회원가입
	public int insert_class(String teacher_id, String title, String content, String time, String price, String category,
			String image) {

		// 런타임 오류 : 실행 했을 때 발생하는 오류 -> 예외 처리
		try {
			conn();
			// sql 작성
			String sql = "insert into class values(CLASS_CID_SEQ.Nextval,?,?,?,?,?,?,?)";

			// PreparedStatement 객체 생성
			pst = conn.prepareStatement(sql);

			// 바인드 변수(?) 채우기
			pst.setString(1, teacher_id);
			pst.setString(2, title);
			pst.setString(3, content);
			pst.setString(4, time);
			pst.setString(5, price);
			pst.setString(6, category);
			pst.setString(7, image);

			// sql문 실행
			cnt = pst.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("가입 실패");
		} finally {
			close();
		}
		return cnt;
	}// 메소드끝

	// 업데이트
	public int update(String title, String content, String time, String price, String category, String image) {

		// 런타임 오류 : 실행 했을 때 발생하는 오류 -> 예외 처리
		try {
			conn();

			// sql 작성
			String sql = "update USERS set title=?, content=?, time=?, place=?" + "category=? , image=?";

			// PreparedStatement 객체 생성
			pst = conn.prepareStatement(sql);

			// 바인드 변수(?) 채우기
			pst.setString(1, title);
			pst.setString(2, content);
			pst.setString(3, time);
			pst.setString(4, price);
			pst.setString(5, category);
			pst.setString(6, image);

			// sql문 실행
			cnt = pst.executeUpdate();

			// insert 성공했을 경우에는 main.jsp로 이동, 실패했을 경우에는 join.jsp로 이동

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			close();
		}
		return cnt;

	}
	// delect 메소드

	public int delete(int id) {

		// 런타임 오류 : 실행 했을 때 발생하는 오류 -> 예외 처리
		try {
			conn();

			// sql 작성
			String sql = "delete from CLASS where class_id = ?";

			// PreparedStatement 객체 생성
			pst = conn.prepareStatement(sql);

			// 바인드 변수(?) 채우기
			pst.setInt(1, id);

			// sql문 실행
			cnt = pst.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			close();
		}
		return cnt;
	}

	public ArrayList<CLASSDTO> Select_class(String teacher_id) {

		// 런타임  오류 : 실행 했을 때 발생하는 오류 -> 예외 처리
		try {
			conn(); 
			// sql 작성
			String sql = "select * from class where teacher_id = ?";

			// PreparedStatement 객체 생성
			pst = conn.prepareStatement(sql);

			// 바인드 변수(?) 채우기
			pst.setString(1, teacher_id);

			// sql문 실행
			rs = pst.executeQuery();

			classArray = new ArrayList<CLASSDTO>();
			while (rs.next()) {
				CLASSDTO classDto = new CLASSDTO(
						rs.getInt("class_id"),
						rs.getString("teacher_id"),
						rs.getString("title"),
						rs.getString("content"),
						rs.getString("time"),
						rs.getString("price"),
						rs.getString("category"),
						rs.getString("image"));
				classArray.add(classDto);
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("불러오기 실패");
		} finally {
			close();
		}
		return classArray;
	}// 메소드끝

	// 클레스 번호로 찾기
	public CLASSDTO allselect(int id) {

		try {
			conn();

			String sql = "select * from class where class_id=? ";

			pst = conn.prepareStatement(sql);

			pst.setInt(1, id);

			rs = pst.executeQuery();
			if (rs.next()) {
				int get_id = rs.getInt("class_id");
				String get_teacher_id = rs.getString("teacher_id");
				String get_title = rs.getString("title");
				String get_content = rs.getString("content");
				String get_time = rs.getString("time");
				String get_price = rs.getString("price");
				String get_category = rs.getString("category");
				String get_image = rs.getString("image");

				dto = new CLASSDTO(get_id, get_teacher_id, get_title, get_content, get_time, get_price, get_category,
						get_image);
			}
		} catch (Exception e) {
			System.out.println("로그인 실패");
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}

	// 클레스 전체 찾기
	public ArrayList<CLASSDTO> alldata() {

		try {
			conn();

			String sql = "select * from class";

			pst = conn.prepareStatement(sql);

			rs = pst.executeQuery();
			while (rs.next()) {
				int get_id = rs.getInt("class_id");
				String get_teacher_id = rs.getString("teacher_id");
				String get_title = rs.getString("title");
				String get_content = rs.getString("content");
				String get_time = rs.getString("time");
				String get_price = rs.getString("price");
				String get_category = rs.getString("category");
				String get_image = rs.getString("image");

				System.out.println(get_teacher_id);

				arr.add(new CLASSDTO(get_id, get_teacher_id, get_title, get_content, get_time, get_price, get_category,
						get_image));
			}
		} catch (Exception e) {
			System.out.println("못가져옴");
			e.printStackTrace();
		} finally {
			close();
		}
		return arr;
	}
	
	
	// 클레스 제목 찾기
		public ArrayList<CLASSDTO> title_select(String title) {
			ArrayList<CLASSDTO> arr2 = new ArrayList<CLASSDTO>();
			CLASSDTO c_dto = null;
			try {
				conn();

				String sql = "select * from class where title like'%"+title+"%' ";
				
				System.out.println(sql);
				pst = conn.prepareStatement(sql);

				
				
				System.out.println("검색됨");
				rs = pst.executeQuery();
				while (rs.next()) {
					int get_id = rs.getInt("class_id");
					String get_teacher_id = rs.getString("teacher_id");
					String get_title = rs.getString("title");
					String get_content = rs.getString("content");
					String get_time = rs.getString("time");
					String get_price = rs.getString("price");
					String get_category = rs.getString("category");
					String get_image = rs.getString("image");

					arr2.add(new CLASSDTO(get_id, get_teacher_id, get_title, get_content, get_time, get_price, get_category,
							get_image));
				}
			} catch (Exception e) {
				System.out.println("가져오기 실패");
				e.printStackTrace();
			} finally {
				close();
			}
			return arr2;
		}

		
		// 클레스 내용 찾기
				public ArrayList<CLASSDTO> content_select(String content) {
					ArrayList<CLASSDTO> arr2 = new ArrayList<CLASSDTO>();
					CLASSDTO c_dto = null;
					try {
						conn();

						String sql = "select * from class where content like'%"+content+"%' ";
						
						System.out.println(sql);
						pst = conn.prepareStatement(sql);

						
						
						System.out.println("검색됨");
						rs = pst.executeQuery();
						while (rs.next()) {
							int get_id = rs.getInt("class_id");
							String get_teacher_id = rs.getString("teacher_id");
							String get_title = rs.getString("title");
							String get_content = rs.getString("content");
							String get_time = rs.getString("time");
							String get_price = rs.getString("price");
							String get_category = rs.getString("category");
							String get_image = rs.getString("image");

							arr2.add(new CLASSDTO(get_id, get_teacher_id, get_title, get_content, get_time, get_price, get_category,
									get_image));
						}
					} catch (Exception e) {
						System.out.println("가져오기 실패");
						e.printStackTrace();
					} finally {
						close();
					}
					return arr2;
				}
				
				// 클레스 강사 찾기
				public ArrayList<CLASSDTO> teacher_select(String teacher) {
					ArrayList<CLASSDTO> arr2 = new ArrayList<CLASSDTO>();
					CLASSDTO c_dto = null;
					try {
						conn();

						String sql = "select * from class where teacher_id IN (select teacher_id from teachers where teacher_name LIKE '%"+teacher+"%') ";
						 
						System.out.println(sql);
						pst = conn.prepareStatement(sql);

						
						
						System.out.println("검색됨");
						rs = pst.executeQuery();
						while (rs.next()) {
							int get_id = rs.getInt("class_id");
							String get_teacher_id = rs.getString("teacher_id");
							String get_title = rs.getString("title");
							String get_content = rs.getString("content");
							String get_time = rs.getString("time");
							String get_price = rs.getString("price");
							String get_category = rs.getString("category");
							String get_image = rs.getString("image");

							arr2.add(new CLASSDTO(get_id, get_teacher_id, get_title, get_content, get_time, get_price, get_category,
									get_image));
						}
					} catch (Exception e) {
						System.out.println("가져오기 실패");
						e.printStackTrace();
					} finally {
						close();
					}
					return arr2;
				}
				
				// 클레스 비용 찾기
				public ArrayList<CLASSDTO> price_select(String price) {
					ArrayList<CLASSDTO> arr2 = new ArrayList<CLASSDTO>();
					CLASSDTO c_dto = null;
					try {
						conn();

						String sql = "select * from class where price like'%"+price+"%' ";
						
						System.out.println(sql);
						pst = conn.prepareStatement(sql);

						
						
						System.out.println("검색됨");
						rs = pst.executeQuery();
						while (rs.next()) {
							int get_id = rs.getInt("class_id");
							String get_teacher_id = rs.getString("teacher_id");
							String get_title = rs.getString("title");
							String get_content = rs.getString("content");
							String get_time = rs.getString("time");
							String get_price = rs.getString("price");
							String get_category = rs.getString("category");
							String get_image = rs.getString("image");

							arr2.add(new CLASSDTO(get_id, get_teacher_id, get_title, get_content, get_time, get_price, get_category,
									get_image));
						}
					} catch (Exception e) {
						System.out.println("가져오기 실패");
						e.printStackTrace();
					} finally {
						close();
					}
					return arr2;
				}
}
