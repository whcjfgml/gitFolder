<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSP ������</title>
</head>
<body>
	<table border="1">
		<tr>
			<%	for (int i = 2; i <= 9; i++) {	%>
		<td>
		<center><%=i + "��"%></center>
		</td>
			<%		}	%>
		</tr>

		<%	for (int i = 1; i <= 9; i++) {	%>
		<tr>
			<%	for (int j = 2; j <= 9; j++) {	%>
			<td><%=j%> X <%=i%> = <%=j * i%></td>
			<%	}	%>
		</tr>

		<%	}	%>
	</table>
</body>
</html>