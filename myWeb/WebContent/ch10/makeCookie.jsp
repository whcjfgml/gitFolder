<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie cookie = new Cookie("id", "Kingdora");
	cookie.setMaxAge(60);
	response.addCookie(cookie);
	
	out.println("쿠키는 역시 촉촉한초코칩쿠키이지요");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="useCookie.jsp">
		<table>
			<tr>
				<td><input type="submit" value="촉촉한 초코쿠키">
		</table>
	</form>
</body>
</html>