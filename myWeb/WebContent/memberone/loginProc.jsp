<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dao" class="memberone.StudentDAO" />
<%
	String loginID = (String)session.getAttribute("loginID");
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	int check = dao.loginCheck(id, pass);
%>
<%
if(check == 1) {//로그인 성공
	session.setAttribute("loginID", id);
	response.sendRedirect("login.jsp");
}else if(check == 0) { //아이디는 있는데 비밀번호 오류
%>
<script>
	alert("비밀번호가 틀렸어");
	history.go(-1);
</script>
<% }else{//아이디가 없어
%>
	<script>
		alert("아이디가 없다");
		history.go(-1);
	</script>
<%} %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% if(loginID != null){ %>
<table border="1" width="300">
	<tr><td colspan="3" align="center">
		<%=loginID  %>님 환영 짝짝짝</td></tr>
		<tr>
			<td align="center" width="100">
				<a href="modifyForm.jsp">정보수정</a></td>
			<td align="center" width="100">
				<a href="deleteForm.jsp">회원탈골</a></td>
			<td align="center" width="100">
				<a href="logout.jsp">로그아웃</a></td>
			</tr>				 
</table>
<%}else{ %>
<!-- 기존의 login.jsp 페이지의 내용 -->
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
<% } %>
</body>
</html>