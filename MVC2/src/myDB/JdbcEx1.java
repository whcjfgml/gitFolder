package myDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class JdbcEx1 {
	public static void main(String[] ar) {
	Connection con = null;
	Statement stmt = null;
	try {
		//jdbc 드라이버 메모리에 로드하기
		Class.forName("oracle.jdbc.driver.OracleFriver");
		//Connection객체 얻기
		con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aaaa","aaaa");
		//Statement 객체 얻기
		stmt = con.createStatement();
		//SQL작성하기
		StringBuffer sql = new StringBuffer();
		sql.append("insert into department");
		sql.append("values (203, '제어계측공학과', 200, '7호관')");
		//쿼리 실행시키기
		int result = stmt.executeUpdate(sql.toString());
		System.out.println(result + "개의 행이 추가 되었습니다");
	}catch(ClassNotFoundException e) {
		e.printStackTrace();
	}catch(SQLException e) {
		e.printStackTrace();
	}finally { //사용한 자원 반납 처리
		try {if(stmt != null)stmt.close();}catch(SQLException e) { }
		try {if(con != null)con.close();}catch(SQLException e) { }
		}
	}
}
