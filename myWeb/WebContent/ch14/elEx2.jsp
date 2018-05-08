<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="elEx2.jsp" method="post" >
	<ul>
		<li><label for="name">이름</label>
		<input type="text" id="name" name="name" value="${param['name']}">
		<input type="submit" value="확인">
		<li><p>이름은 ${param.name} 입니다</p>
	</ul>
</form>
</body>
</html>