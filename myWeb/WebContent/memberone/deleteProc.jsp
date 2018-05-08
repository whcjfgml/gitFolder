<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=utf=8" %>
<%@ page import="memberone.*" %>
<jsp:useBean id="dao" class="memberone.StudentDAO"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원탈퇴</title></head>
<%
	String id = (String)session.getAttribute("loginID");
	String pass = request.getParameter("pass");
	int check = dao.deleteMember(id, pass);
	if(check == 1) {
		session.invalidate();
%>
<meta http-equiv="Refresh" content="3; url=login.jsp">
<body>
<center>
<font size="5" face="바탕체">
회원정보가 삭제되었습니다<br></br>
사요나라 <br></br>
3초 이 메세지는 폭파한다
</font>
</center>
<% }else{ %>
<script>
	alert("비밀번호가 맞지 않아...");
	history.go(-1);
</script>
<% } %>
</body>
</html>