<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.net.URLDecoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쿠키목록</title>
</head>
<body>
쿠키목록<br>
<%
	Cookie[] cookies = request.getCookies();
	if (cookies != null && cookies.length > 0) { for (int i = 0; i < cookies.length; i++) {
%>
	<%= cookies[i].getName() %>
	<%= URLDecoder.decode(cookies[i].getValue(), "UTF-8") %><br>
<%
	}
	} else {
%>
쿠키가 없다 초코쿠키가 먹고싶다
<%
	}
%>
</body>
</html>