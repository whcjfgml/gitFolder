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
		request.setCharacterEncoding("utf-8");// �ѱ�ó��
	
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection ("jdbc:oracle:thin:@localhostL1521:xe", "jch", "jch");
		System.out.println("����̹� �ε� ����");
		

		sql.append("select * from LOGIN where ID=?");
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, ID);
		
		
		int result = stmt.executeUpdate(sql.toString());
		System.out.println("��������� ������ �Ǵ°Ŵ�");
		
		}
	
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		//db���� ����� ������ȸ �̺κ��� �ڵ��� �����ؼ� ����� ������
		//db���� ��ȸ�� ������� ���̵� ����� ��ġ�ϴ� ���
		//Ŭ���̾�Ʈ�� ������ HttpSession��ü�� ���� ��Ų��
		String dbID = "admin";
		String dbPWD = "1234";
		if(dbID.equals(id) && dbPWD.equals(pwd)) {
			//HttpSession ��ü ���
			HttpSession session = request.getSession();
			//Ŭ���̾�Ʈ�� ������ HttpSession��ü�� ����
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