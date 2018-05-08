<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String loginID = (String)session.getAttribute("loginID");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
<form method="post" action="loginProc.jsp">

<div align="center">
<table width="300" border="1">
	<tr>
		<td colspan="2" align="center">회원 로그인</td>
	</tr>
	<tr>
		<td align="right" width="100">아이디</td>
		<td width="200">&nbsp;&nbsp;
		<input type="text" name="id" size="20"></td>
	</tr>
	<tr>
		<td align="right" width="100">비밀번호</td>
		<td width="200">&nbsp;&nbsp;
		<input type="password" name="pass" size="20" /></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="로그인" />&nbsp;&nbsp;
			<input type="button" value="회원가입" onClick="javascript:window.location='regForm.jsp'"/>
		</td>
	</tr>
</table>
</div>
</form>
</body>
</html>