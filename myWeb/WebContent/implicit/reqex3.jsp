<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import = "java.util.Enumeration" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>헤더 목록 출력</title>
</head>
<body>
<% 
	Enumeration enumData = request.getHeaderNames();
	while(enumData.hasMoreElements()) {
		String headerName = (String)enumData.nextElement();
		String headerValue = request.getHeader(headerName);
		%>
		<%= headerName  %> = <%= headerValue  %><br></br>
<%
	}
%>
</body>
</html>