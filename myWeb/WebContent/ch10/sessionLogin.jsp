<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
</head>
<body>
	<%
		String id = "";
		try {
			id = (String)session.getAttribute("id");
			if(id == null || id.equals("")){
	%>
	
	<form method="post" action="sessionLoginPro.jsp">
		<table>
			<tr>
				<td class="label"><lavel for="id">아이디</lavel>
				<td class="content"><input id="id" name="id" type="text" size="20"
					maxlength="50" placeholder="whcjfgml123@naver.com" autofocus required>
			<tr>
				<td class="label"><label for="passwd">비밀번호</label>
				<td class="content"><input id="passwd" name="passwd" type="password"
					size="20" placeholder="6~16자 숫자/문자" maxlength="16" required>
			<tr>
				<td class="label12" colspan="2"><input type="submit" value="로그인">
					<input type="reset" value="다시작성">
		</table>
	</form>
	<%
			}else {
	%>
	
	<b><%=id %></b>님이 로그인
	<form method="post" action="sessionLogout.jsp">
		<input type="submit" value="로그아웃">
	</form>
	<%
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		%>
</body>
</html>