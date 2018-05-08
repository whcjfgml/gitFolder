/*package login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");// 한글처리
	
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection ("jdbc:oracle:thin:@localhostL1521:xe", "jch", "jch");
		System.out.println("드라이버 로딩 성공");
		

		sql.append("select * from LOGIN where ID=?");
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, ID);
		
		
		int result = stmt.executeUpdate(sql.toString());
		System.out.println("여기까지는 실행이 되는거다");
		
		}
	
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		//db에서 사용자 정보조회 이부분은 코딩을 수정해서 만들어 보세요
		//db에서 조회한 사용자의 아이디 비번이 일치하는 경우
		//클라이언트의 정보를 HttpSession객체에 유지 시킨다
		String dbID = "admin";
		String dbPWD = "1234";
		if(dbID.equals(id) && dbPWD.equals(pwd)) {
			//HttpSession 객체 얻기
			HttpSession session = request.getSession();
			//클라이언트의 정볼르 HttpSession객체에 저장
			session.setAttribute("user", id);
		}
		response.sendRedirect("Login");
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
}*/