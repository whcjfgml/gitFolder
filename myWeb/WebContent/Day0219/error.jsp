<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page isErrorPage = "true" %> 
<% response.setStatus(402); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���� �߻�</title>
</head>
<body>
��û ó�� �������� ����
<br></br>
���� Ÿ��: <%= exception.getClass().getName() %><br></br>
���� �޽��� : <b><%= exception.getMessage() %></b>
</body>
</html>