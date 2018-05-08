<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>가입 페이지</title>
</head>
<body>
	<form method="post" action="add.jsp">
		<table border="1" width="300">
			<tr>
				<td width="100">이름</td>
				<td width="200">
					<input type="text" name="name" size="25" />
				</td>
			</tr>
			<tr>
				<td width="100">이메일</td>
				<td width="200">
					<input type="text" name="email" size="25" />
				</td>
			</tr>
			<tr>
				<td width="100">전화</td>
				<td width="200">
					<input type="text" name="phone" size="25" />
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="가입" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>