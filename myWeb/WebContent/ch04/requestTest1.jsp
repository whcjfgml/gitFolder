<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<h2>request 예제 - 요청 메소드</h2>
</head>
<body>
	<%
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String gender = request.getParameter("gender");
		String hoddy = request.getParameter("hoddy");
		
		//성별값 처리
		if(gender.equals("m"))
			gender = "남자";
		else
			gender = "여자";
	%>
	<%-- DB연동을 위한 작업 --%>
	<%--  화면 출력 --%>
	<%=name %>님의 정보는 다음과 같습니다<p>
	나이 <%=age %><br>
	성별 <%=gender %><br>
	취미 <%=hoddy %>
</body>
</html>