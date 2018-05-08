<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String names[] ={"프로토콜 이름","서버이름","Method방식","컨텍스트로 경로","URL","접속한 클라이언트의 IP"};
	String values[] ={request.getProtocol(),
				request.getServerName(),request.getMethod(),
				request.getContextPath(),request.getRequestURI(), request.getRemoteAddr()};
	
		Enumeration<String> en = request.getHeaderNames(); // 요청 헤더의 모든 정보를 얻어온다
		String headerName ="";
		String headerValue ="";
%>

<h2>웹 브라우저와 웹 서버 정보 표시</h2>
<%
	for(int i=0; i<names.length; i++){
		out.println(names[i] + " : " +values[i]+"<br>");
	}
%>
<h3>해더 정보 표시</h3>
<%
	while(en.hasMoreElements()){
	headerName = en.nextElement(); //en정보 얻어오기
	headerValue = request.getHeader(headerName); //헤더정보 얻어오고 출력하기
	out.println(headerName + " : " + headerValue + "<br>");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>