<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSP Life</title>
</head>
<body>
<%
	int numTwo = 0;
	numOne++; //���ΰ�ħ�Ҷ����� ����
	numTwo++; //���ΰ�ħ�Ҷ����� �ʱ�ȭ
	
%>
<ul>
	<li>Number One : <%=numOne  %></li>
	<li>Number Two :<%=numTwo  %></li>
</ul>
    <%!
    	private int numOne = 5;
    	public void jspInit(){//�żҵ� ������
    		System.out.println("jspInit() ȣ���");
    	}
    	public void jspDestroy(){//�޼ҵ� ������
    		System.out.println("jspDestroy() ȣ���");
    	}   
    %>
</body>
</html>