package loginCookie;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class LoginDBBean {
	private static LoginDBBean instance = new LoginDBBean();
	public static LoginDBBean getIntstance() {
		return instance;
	}
	private LoginDBBean() {}
	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/myOracle");
		return ds.getConnection();
	}
	public int userCheck(String id, String password)throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String dbpassword="";
		int x = -1;
		try {
			conn =  getConnection();
			pstmt = conn.prepareStatement("select password from TEMPMEMBER where id = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dbpassword= rs.getString("password");
						if(dbpassword.equals(password))
							x =1;//인증성공
						else
							x=0;//비밀번호 틀려
			}	else
					x= -1;
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			if (rs != null) try { rs.close(); } catch (SQLException ex) {}
			if (pstmt != null) try {pstmt.close(); }catch (SQLException ex) {}
			if (conn != null) try {conn.close(); }catch (SQLException ex) {}
		}
		return x;
	}
}
