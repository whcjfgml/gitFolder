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
		//jdbc ����̹� �޸𸮿� �ε��ϱ�
		Class.forName("oracle.jdbc.driver.OracleFriver");
		//Connection��ü ���
		con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aaaa","aaaa");
		//Statement ��ü ���
		stmt = con.createStatement();
		//SQL�ۼ��ϱ�
		StringBuffer sql = new StringBuffer();
		sql.append("insert into department");
		sql.append("values (203, '����������а�', 200, '7ȣ��')");
		//���� �����Ű��
		int result = stmt.executeUpdate(sql.toString());
		System.out.println(result + "���� ���� �߰� �Ǿ����ϴ�");
	}catch(ClassNotFoundException e) {
		e.printStackTrace();
	}catch(SQLException e) {
		e.printStackTrace();
	}finally { //����� �ڿ� �ݳ� ó��
		try {if(stmt != null)stmt.close();}catch(SQLException e) { }
		try {if(con != null)con.close();}catch(SQLException e) { }
		}
	}
}
