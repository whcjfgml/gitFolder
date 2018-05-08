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
	numOne++; //새로고침할때마다 증가
	numTwo++; //새로고침할때마다 초기화
	
%>
<ul>
	<li>Number One : <%=numOne  %></li>
	<li>Number Two :<%=numTwo  %></li>
</ul>
    <%!
    	private int numOne = 5;
    	public void jspInit(){//매소드 재정의
    		System.out.println("jspInit() 호출됨");
    	}
    	public void jspDestroy(){//메소드 재정의
    		System.out.println("jspDestroy() 호출됨");
    	}   
    %>
</body>
</html>