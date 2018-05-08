<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = "whcjfgml123@naver.com";
	String passwd = "123456";
	
	session.setAttribute("id", id);
	session.setAttribute("passwd",passwd);
	
	out.println("세션에 id와 passwd 속서을 설정했다 <br>");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="viewSession.jsp">
	<table>
		<tr>
			<td><input type="submit" value="세션속성확인">
	</table>
</form>
</body>
</html>