<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page contentType = "text/html; charset=euc-kr" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Ŭ���̾�Ʈ �� ���� ����</title>
</head>
<body>
Ŭ���̾�Ʈ IP =  <%= request.getRemoteAddr()  %><br></br>
��û�������� = <%= request.getContentLength()  %><br></br>
��û���� ���ڵ� = <%= request.getCharacterEncoding() %> <br></br>
��û���� ����ƮŸ�� = <%= request.getContentType() %> <br></br>
��û���� �������� = <%= request.getProtocol() %> <br></br>
��û���� ���۹�� = <%= request.getMethod() %> <br></br>
��û URL = <%= request.getRequestURI().toString() %> <br></br>
��û URI = <%= request.getRequestURI() %> <br></br>
���ؽ�Ʈ ��� = <%= request.getContextPath() %> <br></br>
�����̸� = <%= request.getServerName() %> <br></br>
������Ʈ = <%= request.getServerPort() %> <br></br>
</body>
</html>