<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>application 내장 객체</h3>
	<%
		String info = application.getServerInfo();
		String path = application.getRealPath("/");
		application.log("로그 기록 :");
	%>
	
	웹 컨테이너의 이름과 버전 : <%=info %><p>
	웹 어플리케이션 폴더의 로컬 시스템 경로 : <%=path %>

</body>
</html>