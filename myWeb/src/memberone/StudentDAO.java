package memberone;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

//ȸ������
public class StudentDAO {
	private Connection getConnection() {
		Connection conn = null;
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/myOracle");
			conn = ds.getConnection();
		}catch(Exception e) {
			System.err.println("Connection �������䵥��");
		}
		System.out.println("Ŀ�ؼ� ����");
		return conn;
	}
	public boolean idCheck(String id) {
		boolean result = true;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select * from student where id = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(!rs.next()) result = false;
		}catch(SQLException sqle) {
			sqle.printStackTrace();
		}finally {
			if(rs != null)try {rs.close(); }catch(SQLException sqle1) {}
			if(pstmt != null)try {pstmt.close(); }catch(SQLException sqle2) {}
			if(conn != null)try {conn.close(); }catch(SQLException sqle3) {}
		}
		//System.out.println("Ŀ�ؼ� ����");
		return result;
	}

//������ȣ �˻�
public Vector<ZipCodeVO> zipcodeRead(String dong) {
	Connection conn	 = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	Vector<ZipCodeVO> vecList = new Vector<ZipCodeVO>();
	try {
		conn = getConnection();
		System.out.println("Ŀ�ؼ�1");
		String strQuery = "select * from zipcode where dong like '"+ dong +"%'";
		System.out.println("Ŀ�ؼ�2");
		pstmt = conn.prepareStatement(strQuery);
		System.out.println("Ŀ�ؼ�3");
		rs = pstmt.executeQuery();
		System.out.println("Ŀ�ؼ�4");
		
		while (rs.next()) {
			ZipCodeVO tempZipcode = new ZipCodeVO();
			tempZipcode.setZipcode(rs.getString("zipcode"));
			tempZipcode.setSido(rs.getString("sido"));
			tempZipcode.setGugun(rs.getString("gugun"));
			tempZipcode.setDong(rs.getString("dong"));
			tempZipcode.setRi(rs.getString("ri"));
			tempZipcode.setBunji(rs.getString("bunji"));		
			vecList.addElement(tempZipcode);
			System.out.println("�µ���1");
		}
	}catch(SQLException sqle) {
		sqle.printStackTrace();
		System.out.println("�µ���2");
	}finally {
		if(rs != null)try {rs.close(); }catch(SQLException sqle1) { }
		if(pstmt != null)try { pstmt.close(); }catch(SQLException sqle2) { }
		if(conn != null)try { conn.close(); }catch(SQLException sqle3) { }
	}
	System.out.println("�µ���3");
	return vecList;
	
    }

//�����ͺ��̽��� ����ֱ�
public boolean memberInsert(StudentVO vo) {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	boolean flag = false;
	
	try {
		conn = getConnection();
		String strQuery = "insert into student values(?,?,?,?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(strQuery);
		pstmt.setString(1, vo.getId());
		pstmt.setString(2, vo.getPass());
		pstmt.setString(3, vo.getName());
		pstmt.setString(4, vo.getPhone1());
		pstmt.setString(5, vo.getPhone2());
		pstmt.setString(6, vo.getPhone3());
		pstmt.setString(7, vo.getEmail());
		pstmt.setString(8, vo.getZipcode());
		pstmt.setString(9, vo.getAddress1());
		pstmt.setString(10, vo.getAddress2());
		
		int count = pstmt.executeUpdate();
		if(count>0)flag = true;
	}catch(Exception ex) {
		System.out.println("Exception" + ex);
	}finally {
		if(rs != null)try {rs.close();}catch(SQLException sqle1) {}
		if(pstmt != null)try {pstmt.close(); }catch(SQLException sqle2) {}
		if(conn != null)try { conn.close(); }catch(SQLException sqle3) {}
	}
	return flag;
}

//�α��� üũ
public int loginCheck(String id, String pass) {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	int check = -1;
	try {
		conn = getConnection();
		String strQuery = "select pass from student where id = ?";
		pstmt = conn.prepareStatement(strQuery);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			String dbPass = rs.getString("pass");
			if(pass.equals(dbPass)) check = 1;
			else check = 0;
		}
	}catch(Exception ex) {
		System.out.println("Exception" + ex);
	}finally {
		if(rs != null)try {rs.close();}catch(SQLException sqle1) {}
		if(pstmt != null)try {pstmt.close(); }catch(SQLException sqle2) {}
		if(conn != null)try { conn.close(); }catch(SQLException sqle3) {}
	}
	return check;
}

//���̵� �ߺ� �˻�
public StudentVO getMember(String id) {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	StudentVO vo = null;
	
	try {
		conn = getConnection();
		pstmt = conn.prepareStatement("select * from student where id = ?");
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		if (rs.next()) { //�ش� ���̵� ���� ȸ���� ����
			vo = new StudentVO();
			vo.setId(rs.getString("id"));
			vo.setPass(rs.getString("name"));
			vo.setPhone1(rs.getString("phone1"));
			vo.setPhone1(rs.getString("phone2"));
			vo.setPhone1(rs.getString("phone3"));
			vo.setEmail(rs.getString("email"));
			vo.setZipcode(rs.getString("zipcode"));
			vo.setAddress1(rs.getString("Address1"));
			vo.setAddress2(rs.getString("Address2"));
			System.out.println("�µ���Ŀ���");
		} 
	}catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			if(rs != null)try {rs.close();}catch(SQLException sqle1) {}
			if(pstmt != null)try {pstmt.close(); }catch(SQLException sqle2) {}
			if(conn != null)try { conn.close(); }catch(SQLException sqle3) {}
		}
		return vo;
	}

//ȸ������ ����
public void updateMember(StudentVO vo) {
	Connection conn = null;
	PreparedStatement pstmt = null;
		try {
		conn = getConnection();
		pstmt = conn.prepareStatement("update student set pass=?, phone1=?, phone2=?, phone3=?, email=?, zipcode=?, address1=?, address2=?, where id=?");	
		pstmt.setString(1, vo.getPass());
		pstmt.setString(2, vo.getPhone1());
		pstmt.setString(3, vo.getPhone2());
		pstmt.setString(4, vo.getPhone3());
		pstmt.setString(5, vo.getEmail());
		pstmt.setString(6, vo.getZipcode());
		pstmt.setString(7, vo.getAddress1());
		pstmt.setString(8, vo.getAddress2());
		pstmt.setString(9, vo.getId());
		pstmt.executeUpdate();		
}catch (Exception ex) {
	ex.printStackTrace();
}	finally {
	if(pstmt != null)try {pstmt.close(); }catch(SQLException sqle2) {}
	if(conn != null)try { conn.close(); }catch(SQLException sqle3) {}
		}
 	}

//ȸ������ ����
public int deleteMember(String id,String pass) {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String dbPass = "";//�����ͺ��̽��� ���� ����� �н�����
	int result = -1;//���ġ
	try {
		conn = getConnection();
		pstmt = conn.prepareStatement("select pass from student where id = ? ");
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			dbPass = rs.getString("pass");
			if(dbPass.equals(pass))	{ //true - ����Ȯ��
				pstmt = conn.prepareStatement("delete from student where id = ?");
				pstmt.setString(1, id);
				pstmt.executeUpdate();
				result = 1;//ȸ��Ż�� ����
			} else { //����Ȯ�� ���� - ��й�ȣ ����
				result = 0;
			}
		}
	} catch(Exception ex) {
		ex.printStackTrace();
	} finally {
		if(rs != null)try {rs.close(); }catch(SQLException sqle1) {}
		if(pstmt != null)try {pstmt.close(); } catch(SQLException sqle2) {}
		if(conn != null)try { conn.close(); }catch(SQLException sqle3) {}
	}
	return result;
}
}