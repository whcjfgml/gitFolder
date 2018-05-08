<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>= 41||</title>
<script type="text/javascript">
	function passCheck(value) {
		if (value == "successDelete") {
			alert("글 삭제 됨 ㅅㄱ");
			window.location = "list.do";
		}
		if (value == "passerror") {
			alert("비밀번호 틀림 ㅅㄱ");
		}
	}
	window.onload = passCheck("${value }");
</script>
</head>
<body>
	<form method="post" action="deleteForm.do?num=${num }">
		<table>
			<tr>
				<td>글을 삭제하려면 비밀번호를 입력해주세요</td>
			</tr>
			<tr>
				<td><input type="password" name="pass" value="${pass}" /></td>
				<td><input type="submit" value="확인" /></td>
			</tr>
		</table>
	</form>
</body>
</html>
