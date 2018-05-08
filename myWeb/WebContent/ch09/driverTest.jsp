<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JDBC드라이버 테스트</title>
</head>
<body>
<%
	Connection conn = null;
	out.println("커넥션 생성");
	try{
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","jch","jch");
			conn = DriverManager.getConnection();
			out.println("DB접속중");
			Class.forName("oracle.jdbc.driver.OracleDiver");
			out.println("연결성공");
	}catch(Exception e){
		e.printStackTrace();
	}
%>
			
</body>
</html>