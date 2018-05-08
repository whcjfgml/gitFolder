package bbs;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class VisitInsert extends HttpServlet {
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");//한글처리
		
		//client가 http요청으로 전송한 값 읽기
		String writer = request.getParameter("writer");
		String memo = request.getParameter("memo");
		
		System.out.println("작성자 :" + writer);
		System.out.println("내용 :" + memo);
		
		StringBuffer sql = new StringBuffer();
		sql.append("insert into visit(no, writer, memo, regdate) ");
		sql.append("values (visit_seq.nextval, ?, ?, sysdate)");
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jch", "jch");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, writer);
			pstmt.setString(2, memo);
			pstmt.executeUpdate();
			System.out.println("드라이버 로딩성공");
		}catch(SQLException e) {
			e.printStackTrace();
		System.out.println("드라이버 로딩 실패");
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		System.err.println("이것도 실패");
		}finally {
			try {
				if(pstmt != null)pstmt.close();
			}catch(SQLException e) {}
			try {
				if(con != null)con.close();
			}catch(SQLException e) {}
		}
		response.sendRedirect("VisitList");
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		processRequest(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		processRequest(request, response);
	}
}
